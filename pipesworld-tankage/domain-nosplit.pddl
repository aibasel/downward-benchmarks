;; PipesWorld

(define (domain pipesworld_strips)

(:requirements :strips :typing )

;; Types
;;  pipe: a pipeline segment
;;  area: operational areas
;;  product: an oil derivative product, such as gasoline,
;;    kerosene, etc.
;;  batch-atom: an unitary batch

(:types pipe area product batch-atom tank-slot)

;; Define the products (petroleum derivatives)
(:constants lco gasoleo rat-a oca1 oc1b - product)

(:predicates

  ;; Indicates that a pipeline segment connects
  ;; two areas
  (connect ?from ?to - area ?pipe - pipe)

  ;; Special case for unitary pipes
  (unitary ?pipe - pipe)
  (not-unitary ?pipe - pipe)

  ;; These predicates represent the pipeline segment contents
  ;; We define the first (nearest to  ``from'' area) and 
  ;; last (nearest to  ``to'' area) batch-atom in a pipeline 
  ;; segment, and their sequence is represented by the
  ;; (follow) predicate
  (last ?batch-atom - batch-atom ?pipe - pipe)
  (first ?batch-atom - batch-atom ?pipe - pipe)
  (follow ?next ?previous - batch-atom)

  ;; An unitary batch product
  (is-product ?batch-atom - batch-atom ?product - product)

  ;; Unitary batches that are on areas
  (on ?batch-atom - batch-atom ?area - area)

  ;; Indicates that two products may interface in the
  ;; pipeline segment
  (may-interface ?product-a ?product-b - product)

  ;; to control splitting process (push/pop vs. update)
  ;;
  (normal ?pipe - pipe)
  (push-updating ?pipe - pipe)  
  (pop-updating ?pipe - pipe)  

  ;; tank-slot product and location
  (tank-slot-product-location ?tank-slot - tank-slot ?product - product ?area - area)

  ;; tank-slot status
  (occupied ?tank-slot - tank-slot)
  (not-occupied ?tank-slot - tank-slot)

)

(:action PUSH
 :parameters
 (?pipe - pipe
  ?batch-atom-in - batch-atom
  ?from-area - area
  ?to-area - area
  ?first-batch-atom - batch-atom
  ?product-batch-atom-in - product
  ?product-first-batch - product
  ?from-slot - tank-slot
  ?last-batch-atom - batch-atom
  ?next-last-batch-atom - batch-atom
  ?product-last-batch - product
  ?to-slot - tank-slot
  )
  :precondition
  (and (not-unitary ?pipe)
       (connect ?from-area ?to-area ?pipe)
       (first ?first-batch-atom ?pipe)
       (on ?batch-atom-in ?from-area)
       (is-product ?batch-atom-in ?product-batch-atom-in)
       (is-product ?first-batch-atom ?product-first-batch)
       (may-interface ?product-batch-atom-in ?product-first-batch)
       (tank-slot-product-location ?from-slot ?product-batch-atom-in ?from-area)
       (occupied ?from-slot)
       (last ?last-batch-atom ?pipe)
       (follow ?last-batch-atom ?next-last-batch-atom)
       (is-product ?last-batch-atom ?product-last-batch)
       (tank-slot-product-location ?to-slot ?product-last-batch ?to-area)
       (not-occupied ?to-slot)
       )
  :effect
  (and (first ?batch-atom-in ?pipe)
       (not (first ?first-batch-atom ?pipe))
       (follow ?first-batch-atom ?batch-atom-in)
       (not (on ?batch-atom-in ?from-area))
       (not (occupied ?from-slot))
       (not-occupied ?from-slot)
       (not (follow ?last-batch-atom ?next-last-batch-atom))
       (last ?next-last-batch-atom ?pipe)
       (not (last ?last-batch-atom ?pipe))
       (on ?last-batch-atom ?to-area)
       (occupied ?to-slot)
       (not (not-occupied ?to-slot))
       )
  )

(:action POP
  :parameters
  (?pipe - pipe
   ?batch-atom-in - batch-atom
   ?from-area - area
   ?to-area - area
   ?last-batch-atom - batch-atom
   ?product-batch-atom-in - product
   ?product-last-batch - product
   ?from-slot - tank-slot
   ?first-batch-atom - batch-atom
   ?next-first-batch-atom - batch-atom
   ?product-first-batch - product
   ?to-slot - tank-slot
   )
  :precondition
  (and (not-unitary ?pipe)
       (connect ?from-area ?to-area ?pipe)
       (last ?last-batch-atom ?pipe)
       (on ?batch-atom-in ?to-area)
       (is-product ?batch-atom-in ?product-batch-atom-in)
       (is-product ?last-batch-atom ?product-last-batch)
       (may-interface ?product-batch-atom-in ?product-last-batch)
       (tank-slot-product-location ?from-slot ?product-batch-atom-in ?to-area)
       (occupied ?from-slot)
       (first ?first-batch-atom ?pipe)
       (follow ?next-first-batch-atom ?first-batch-atom)
       (tank-slot-product-location ?to-slot ?product-first-batch ?from-area)
       (not-occupied ?to-slot)
       )
  :effect
  (and (last ?batch-atom-in ?pipe)
       (not (last ?last-batch-atom ?pipe))
       (follow ?batch-atom-in ?last-batch-atom)
       (not (on ?batch-atom-in ?to-area))
       (not (occupied ?from-slot))
       (not-occupied ?from-slot)
       (not (follow ?next-first-batch-atom ?first-batch-atom))
       (first ?next-first-batch-atom ?pipe)
       (not (first ?first-batch-atom ?pipe))
       (on ?first-batch-atom ?from-area)
       (occupied ?to-slot)
       (not (not-occupied ?to-slot))
       )
  )

(:action PUSH-UNITARYPIPE
 :parameters
 (?pipe - pipe
  ?batch-atom-in - batch-atom
  ?from-area - area
  ?to-area - area
  ?first-batch-atom - batch-atom
  ?product-batch-atom-in - product
  ?product-first-batch - product
  ?from-slot - tank-slot
  ?to-slot - tank-slot
  )
 :precondition
 (and (first ?first-batch-atom ?pipe)
      (connect ?from-area ?to-area ?pipe)
      (on ?batch-atom-in ?from-area)
      (unitary ?pipe)
      (is-product ?batch-atom-in ?product-batch-atom-in)
      (is-product ?first-batch-atom ?product-first-batch)
      (may-interface ?product-batch-atom-in ?product-first-batch)
      (tank-slot-product-location ?from-slot ?product-batch-atom-in ?from-area)
      (occupied ?from-slot)
      (tank-slot-product-location ?to-slot ?product-first-batch ?to-area)
      (not-occupied ?to-slot)
      )
 :effect
 (and (first ?batch-atom-in ?pipe)
      (not (first ?first-batch-atom ?pipe))
      (last ?batch-atom-in ?pipe)
      (not (last ?first-batch-atom ?pipe))
      (not (on ?batch-atom-in ?from-area))
      (not (occupied ?from-slot))
      (not-occupied ?from-slot)
      (on ?first-batch-atom ?to-area)
      (occupied ?to-slot)
      (not (not-occupied ?to-slot))
      )
 )

(:action POP-UNITARYPIPE
  :parameters
  (?pipe - pipe
   ?batch-atom-in - batch-atom
   ?from-area - area
   ?to-area - area
   ?first-batch-atom - batch-atom
   ?product-batch-atom-in - product
   ?product-first-batch - product
   ?from-slot - tank-slot
   ?to-slot - tank-slot
   )
  :precondition
  (and (first ?first-batch-atom ?pipe)
       (connect ?from-area ?to-area ?pipe)
       (on ?batch-atom-in ?to-area)
       (unitary ?pipe)
       (is-product ?batch-atom-in ?product-batch-atom-in)
       (is-product ?first-batch-atom ?product-first-batch)
       (may-interface ?product-batch-atom-in ?product-first-batch)
       (tank-slot-product-location ?to-slot ?product-batch-atom-in ?to-area)
       (occupied ?to-slot)
       (tank-slot-product-location ?from-slot ?product-first-batch ?from-area)
       (not-occupied ?from-slot)
       )
  :effect
  (and (last ?batch-atom-in ?pipe)
       (not (last ?first-batch-atom ?pipe))
       (first ?batch-atom-in ?pipe)
       (not (first ?first-batch-atom ?pipe))
       (not (on ?batch-atom-in ?to-area))
       (not (occupied ?to-slot))
       (not-occupied ?to-slot)
       (on ?first-batch-atom ?from-area)
       (occupied ?from-slot)
       (not (not-occupied ?from-slot))
       )
  )
)
