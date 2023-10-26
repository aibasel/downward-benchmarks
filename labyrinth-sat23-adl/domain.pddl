(define (domain labyrinth)
(:requirements :adl :action-costs)

(:types
    ;; card with 2 to 4 paths
    card - object
    direction - object
    ;; vertical direction: N S
    directionV - direction
    ;; horizontal directions: W E
    directionH - direction
    ;; values for positions of the card in the grid
    gridpos - object
)

(:constants
    S N - directionV
    W E - directionH
)

(:predicates
    ;; ordering of values for grid positions ?p1 = ?p2 + 1
    (NEXT ?p1 - gridpos ?p2 - gridpos)
    ;; maximal grid index
    (MAX-POS ?p - gridpos)
    ;; minimal grid index
    (MIN-POS ?p - gridpos)
    ;; moving from ?c in direction ?d is blocked by a wall
    (BLOCKED ?c - card ?d - direction)
    ;; robot is located on card ?c
    (robot-at ?c - card)
    ;; card ?c is positioned in the grid at ?x ?y
    (card-at ?c - card ?x - gridpos ?y - gridpos)
    ;; flag indicating that the robot left the maze e.i. that the goal has been reached
    (left)

    ;; flag to indicate that a card is currently moving an the robot cannot move
    (cards-moving)
    ;; flags to indicate that a row/column is rotating in the corresponding direction
    (cards-moving-west)
    (cards-moving-east)
    (cards-moving-south)
    (cards-moving-north)
    ;; the card whose position needs to be updated next while rotating
    (next-moving-card ?c - card)
    ;; the card that was removed to rotate and which needs to be placed at the beginning/end of the row/column
    (new-headtail-card ?c - card)

)

(:functions
    (total-cost) - number
    (move-robot-cost) - number
    (move-card) - number
)

;; moves the robot between to cards
(:action move-west
    :parameters (?cfrom - card ?xfrom - gridpos ?yfrom - gridpos ?dfrom - directionH ?cto - card ?xto - gridpos ?yto - gridpos ?dto - directionH)
    :precondition
        (and
            (not (cards-moving))
            (= ?dfrom w)
            (robot-at ?cfrom)
            (card-at ?cfrom ?xfrom ?yfrom)
            (card-at ?cto ?xto ?yto)
            (next ?xfrom ?xto)
            (= ?yfrom ?yto)
            (not (= ?dfrom ?dto))
            (not (blocked ?cfrom ?dfrom))
            (not (blocked ?cto ?dto))
        )
    :effect
        (and
            (not (robot-at ?cfrom))
            (robot-at ?cto)
            (increase (total-cost) (move-robot-cost))
        )
)

(:action move-east
    :parameters (?cfrom - card ?xfrom - gridpos ?yfrom - gridpos ?dfrom - directionH ?cto - card ?xto - gridpos ?yto - gridpos ?dto - directionH)
    :precondition
        (and
            (not (cards-moving))
            (= ?dfrom e)
            (robot-at ?cfrom)
            (card-at ?cfrom ?xfrom ?yfrom)
            (card-at ?cto ?xto ?yto)
            (next ?xto ?xfrom)
            (= ?yfrom ?yto)
            (not (= ?dfrom ?dto))
            (not (blocked ?cfrom ?dfrom))
            (not (blocked ?cto ?dto))
        )
    :effect
        (and
            (not (robot-at ?cfrom))
            (robot-at ?cto)
            (increase (total-cost) (move-robot-cost))
        )
)

(:action move-north
    :parameters (?cfrom - card ?xfrom - gridpos ?yfrom - gridpos ?dfrom - directionV ?cto - card ?xto - gridpos ?yto - gridpos ?dto - directionV)
    :precondition
        (and
            (not (cards-moving))
            (= ?dfrom n)
            (robot-at ?cfrom)
            (card-at ?cfrom ?xfrom ?yfrom)
            (card-at ?cto ?xto ?yto)
            (next ?yfrom ?yto)
            (= ?xfrom ?xto)
            (not (= ?dfrom ?dto))
            (not (blocked ?cfrom ?dfrom))
            (not (blocked ?cto ?dto))
        )
    :effect
        (and
            (not (robot-at ?cfrom))
            (robot-at ?cto)
            (increase (total-cost) (move-robot-cost))
        )
)

(:action move-south
    :parameters (?cfrom - card ?xfrom - gridpos ?yfrom - gridpos ?dfrom - directionV ?cto - card ?xto - gridpos ?yto - gridpos ?dto - directionV)
    :precondition
        (and
            (not (cards-moving))
            (= ?dfrom s)
            (robot-at ?cfrom)
            (card-at ?cfrom ?xfrom ?yfrom)
            (card-at ?cto ?xto ?yto)
            (next ?yto ?yfrom)
            (= ?xfrom ?xto)
            (not (= ?dfrom ?dto))
            (not (blocked ?cfrom ?dfrom))
            (not (blocked ?cto ?dto))
        )
    :effect
        (and
            (not (robot-at ?cfrom))
            (robot-at ?cto)
            (increase (total-cost) (move-robot-cost))
        )
)


;; there 3 (start, move, stop) for each direction to rotate the cards
;; rotating ends in a deadend if the card with the robot in the row/column that is rotated
;; ----------------------------------------------------------------------------------------

;; starts rotation
;; saves the card with the minimal index
;; determines which card should be updated next the corresponding move action
;; and makes all other actions inapplicable by setting cards-moving and cards-moving-west
(:action start-move-card-west
:parameters(?cm - card ?x - gridpos ?y - gridpos ?cnext - card ?nextx - gridpos)
:precondition
    (and
        (not (cards-moving))
        (not (cards-moving-west))
        (not (robot-at ?cm))
        (card-at ?cm ?x ?y )
        (min-pos ?x)
        (card-at ?cnext ?nextx ?y)
        (next ?nextx ?x)
    )
:effect
    (and
        (cards-moving)
        (cards-moving-west)
        (not (card-at ?cm ?x ?y ))
        (new-headtail-card ?cm)
        (next-moving-card ?cnext)
        (increase (total-cost) (move-card))
    )
)

;; updates the grid column index of ?cm which is the next card to update
(:action move-card-west
:parameters(?cm - card ?x - gridpos ?y - gridpos ?cnext - card ?nextx - gridpos ?prevx - gridpos)
:precondition
    (and
        (cards-moving)
        (cards-moving-west)
        (not (robot-at ?cm))
        (next-moving-card ?cm)
        (card-at ?cm ?x ?y )
        (card-at ?cnext ?nextx ?y)
        (next ?x ?prevx)
        (next ?nextx ?x)
    )
:effect
    (and
        (cards-moving)
        (cards-moving-west)
        (not (card-at ?cm ?x ?y))
        (card-at ?cm ?prevx ?y)
        (not (next-moving-card ?cm))
        (next-moving-card ?cnext)
    )
)

;; stops rotation
;; updates the grid index of the card specified by the start move action in new-headtail-card
(:action stop-move-card-west
:parameters(?cm - card ?x - gridpos ?y - gridpos ?prevx - gridpos ?newtc - card)
:precondition
    (and
        (cards-moving)
        (cards-moving-west)
        (not (robot-at ?cm))
        (next-moving-card ?cm)
        (card-at ?cm ?x ?y )
        (next ?x ?prevx)
        (max-pos ?x)
        (new-headtail-card ?newtc)
    )
:effect
    (and
        (not (cards-moving))
        (not (cards-moving-west))
        (not (card-at ?cm ?x ?y))
        (card-at ?cm ?prevx ?y)
        (card-at ?newtc ?x ?y)
        (not (new-headtail-card ?newtc))
        (not (next-moving-card ?cm))
    )
)


;; ----------------------------------------------------------------------------------------

(:action start-move-card-east
:parameters(?cm - card ?x - gridpos ?y - gridpos ?cnext - card ?nextx - gridpos)
:precondition
    (and
        (not (cards-moving))
        (not (cards-moving-east))
        (not (robot-at ?cm))
        (card-at ?cm ?x ?y )
        (max-pos ?x)
        (card-at ?cnext ?nextx ?y)
        (next ?x ?nextx)
    )
:effect
    (and
        (cards-moving)
        (cards-moving-east)
        (not (card-at ?cm ?x ?y ))
        (new-headtail-card ?cm)
        (next-moving-card ?cnext)
        (increase (total-cost) (move-card))
    )
)

(:action move-card-east
:parameters(?cm - card ?x - gridpos ?y - gridpos ?cnext - card ?nextx - gridpos ?prevx - gridpos)
:precondition
    (and
        (cards-moving)
        (cards-moving-east)
        (not (robot-at ?cm))
        (next-moving-card ?cm)
        (card-at ?cm ?x ?y )
        (card-at ?cnext ?nextx ?y)
        (next ?prevx ?x)
        (next ?x ?nextx)
    )
:effect
    (and
        (cards-moving)
        (cards-moving-east)
        (not (card-at ?cm ?x ?y))
        (card-at ?cm ?prevx ?y)
        (not (next-moving-card ?cm))
        (next-moving-card ?cnext)
    )
)

(:action stop-move-card-east
:parameters(?cm - card ?x - gridpos ?y - gridpos ?prevx - gridpos ?newtc - card)
:precondition
    (and
        (cards-moving)
        (cards-moving-east)
        (not (robot-at ?cm))
        (next-moving-card ?cm)
        (card-at ?cm ?x ?y )
        (next  ?prevx ?x)
        (min-pos ?x)
        (new-headtail-card ?newtc)
    )
:effect
    (and
        (not (cards-moving))
        (not (cards-moving-east))
        (not (card-at ?cm ?x ?y))
        (card-at ?cm ?prevx ?y)
        (card-at ?newtc ?x ?y)
        (not (new-headtail-card ?newtc))
        (not (next-moving-card ?cm))
    )
)

;; ----------------------------------------------------------------------------------------

(:action start-move-card-north
:parameters(?cm - card ?x - gridpos ?y - gridpos ?cnext - card ?nexty - gridpos)
:precondition
    (and
        (not (cards-moving))
        (not (cards-moving-north))
        (not (robot-at ?cm))
        (card-at ?cm ?x ?y )
        (min-pos ?y)
        (card-at ?cnext ?x ?nexty)
        (next ?nexty ?y)
    )
:effect
    (and
        (cards-moving)
        (cards-moving-north)
        (not (card-at ?cm ?x ?y ))
        (new-headtail-card ?cm)
        (next-moving-card ?cnext)
        (increase (total-cost) (move-card))
    )
)

(:action move-card-north
:parameters(?cm - card ?x - gridpos ?y - gridpos  ?cnext - card ?nexty - gridpos ?prevy - gridpos)
:precondition
    (and
        (cards-moving)
        (cards-moving-north)
        (not (robot-at ?cm))
        (next-moving-card ?cm)
        (card-at ?cm ?x ?y )
        (card-at ?cnext ?x ?nexty)
        (next ?y ?prevy)
        (next ?nexty ?y)
    )
:effect
    (and
        (cards-moving)
        (cards-moving-north)
        (not (card-at ?cm ?x ?y))
        (card-at ?cm ?x ?prevy)
        (not (next-moving-card ?cm))
        (next-moving-card ?cnext)
    )
)

(:action stop-move-card-north
:parameters(?cm - card ?x - gridpos ?y - gridpos ?prevy - gridpos ?newtc - card)
:precondition
    (and
        (cards-moving)
        (cards-moving-north)
        (not (robot-at ?cm))
        (next-moving-card ?cm)
        (card-at ?cm ?x ?y )
        (next ?y ?prevy)
        (max-pos ?y)
        (new-headtail-card ?newtc)
    )
:effect
    (and
        (not (cards-moving))
        (not (cards-moving-north))
        (not (card-at ?cm ?x ?y))
        (card-at ?cm ?x ?prevy)
        (card-at ?newtc ?x ?y)
        (not (new-headtail-card ?newtc))
        (not (next-moving-card ?cm))
    )
)

;; ----------------------------------------------------------------------------------------

(:action start-move-card-south
:parameters(?cm - card ?x - gridpos ?y - gridpos  ?cnext - card ?nexty - gridpos)
:precondition
    (and
        (not (cards-moving))
        (not (cards-moving-south))
        (not (robot-at ?cm))
        (card-at ?cm ?x ?y )
        (max-pos ?y)
        (card-at ?cnext ?x ?nexty)
        (next ?y ?nexty)
    )
:effect
    (and
        (cards-moving)
        (cards-moving-south)
        (not (card-at ?cm ?x ?y ))
        (new-headtail-card ?cm)
        (next-moving-card ?cnext)
        (increase (total-cost) (move-card))
    )
)

(:action move-card-south
:parameters(?cm - card ?x - gridpos ?y - gridpos  ?cnext - card ?nexty - gridpos ?prevy - gridpos)
:precondition
    (and
        (cards-moving)
        (cards-moving-south)
        (not (robot-at ?cm))
        (next-moving-card ?cm)
        (card-at ?cm ?x ?y )
        (card-at ?cnext ?x ?nexty)
        (next ?prevy ?y)
        (next ?y ?nexty)
    )
:effect
    (and
        (cards-moving)
        (cards-moving-south)
        (not (card-at ?cm ?x ?y))
        (card-at ?cm ?x ?prevy)
        (not (next-moving-card ?cm))
        (next-moving-card ?cnext)
    )
)

(:action stop-move-card-south
:parameters(?cm - card ?x - gridpos ?y - gridpos ?prevy - gridpos ?newtc - card)
:precondition
    (and
        (cards-moving)
        (cards-moving-south)
        (not (robot-at ?cm))
        (next-moving-card ?cm)
        (card-at ?cm ?x ?y )
        (next ?prevy ?y)
        (min-pos ?y)
        (new-headtail-card ?newtc)
    )
:effect
    (and
        (not (cards-moving))
        (not (cards-moving-south))
        (not (card-at ?cm ?x ?y))
        (card-at ?cm ?x ?prevy)
        (card-at ?newtc ?x ?y)
        (not (new-headtail-card ?newtc))
        (not (next-moving-card ?cm))
    )
)


;; checks whether the robot can leave the labyrinth i.e
;; whether the card the robot is currently on is in the bottom right corner
;; and the rover is in sector SE
(:action leave
:parameters(?c - card ?prow - gridpos ?pcolumn - gridpos)
:precondition
    (and
        (not (cards-moving))
        (robot-at ?c)
        (card-at ?c ?prow ?pcolumn)
        (max-pos ?prow)
        (max-pos ?pcolumn)
        (not (blocked ?c s ))
    )
:effect
    (and
        (left)
    )
)
)

