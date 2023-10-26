;; A rotation (fold) at node n consists of one action rotate and two
;; folllowing passes over to remaining part of string starting at n.
;; In the first pass, all directions are corrected according to the
;; rotation applied, and all (at this point incorrect) (at ...) facts are
;; deleted. In the second pass, the correct (at ...) facts are set.
;; The reason we use two passes instead of one is to avoid the intersection
;; of the string with itself in the part that is currently moving. Consider
;; the following string:
;;        2-3
;;        | |
;;        1 4
;; and suppose we want to rotate 1 counterclockwise which results in the
;; following configuration:
;;      3-4
;;      |
;;      2-1
;; Now, note that 2 in the initial and 4 in the final configuration occupy
;; the same point in the plane. So, with one pass, we could end up with two
;; nodes occupying the same point, which we avoid by taking two passes instead
;; of one.
;;
(define (domain folding)
(:requirements :adl :action-costs)

(:types
    node - object
    coord - object
    direction - object
    rotation - object
)

(:constants
    left right up down - direction
    clockwise counterclockwise - rotation
)

(:predicates
    ;; ?dfrom rotated by ?r ends up as ?d2to
    (NEXT-DIRECTION ?dfrom - direction ?r - rotation ?d2to - direction)
    ;; ?cnext = ?c + 1
    (COORD-INC ?c ?cnext - coord)
    ;; Last node of the string
    (END-NODE ?n - node)
    ;; ?n2 follows right after ?n1 in the string
    (CONNECTED ?n1 ?n2 - node)

    ;; Position of the node in the grid
    (at ?n - node ?x ?y - coord)
    ;; Heading of the outgoing edge of this node
    (heading ?n - node ?dir - direction)
    ;; The coordinates are not occupied by any node
    (free ?x ?y - coord)
    ;; Flag indicating we are in the process of rotating the string
    (rotating)
    ;; Cursor storing that ?nstart was rotated by ?r and the next node to
    ;; process is ?n
    (node-first-pass-next ?nstart - node ?r - rotation ?n - node)
    ;; Cursor for the second pass
    (node-second-pass-next ?n - node)
)

(:functions
    (total-cost) - number
    (rotate-cost) - number
    (update-cost) - number
)


;; Rotates the string after this node and start the first pass computing
;; absolute directions and coordinates of other nodes
(:action rotate
    :parameters (?n - node ?r - rotation ?fromdir ?todir - direction)
    :precondition
        (and
            (not (rotating))
            (NEXT-DIRECTION ?fromdir ?r ?todir)
            (heading ?n ?fromdir)
        )
    :effect
        (and
            (not (heading ?n ?fromdir))
            (heading ?n ?todir)
            (rotating)
            (node-first-pass-next ?n ?r ?n)
            (increase (total-cost) (rotate-cost))
        )
)

;; The first pass fixes the direction of nodes and removes all (at ...) facts
(:action rotate-first-pass
    :parameters (?nstart - node ?r - rotation
                 ?n1 - node
                 ?n2 - node ?n2x ?n2y - coord ?n2dir ?n2setdir - direction)
    :precondition
        (and
            (CONNECTED ?n1 ?n2)
            (NEXT-DIRECTION ?n2dir ?r ?n2setdir)
            (node-first-pass-next ?nstart ?r ?n1)
            (at ?n2 ?n2x ?n2y)
            (heading ?n2 ?n2dir)
        )
    :effect
        (and
            (not (node-first-pass-next ?nstart ?r ?n1))
            (node-first-pass-next ?nstart ?r ?n2)
            (not (at ?n2 ?n2x ?n2y))
            (free ?n2x ?n2y)
            (not (heading ?n2 ?n2dir))
            (heading ?n2 ?n2setdir)
            (increase (total-cost) (update-cost))
        )
)

(:action rotate-first-pass-end
    :parameters (?nstart - node ?r - rotation
                 ?n1 - node
                 ?n2 - node ?n2x ?n2y - coord)
    :precondition
        (and
            (END-NODE ?n2)
            (CONNECTED ?n1 ?n2)
            (node-first-pass-next ?nstart ?r ?n1)
            (at ?n2 ?n2x ?n2y)
        )
    :effect
        (and
            (not (at ?n2 ?n2x ?n2y))
            (free ?n2x ?n2y)
            (not (node-first-pass-next ?nstart ?r ?n1))
            (node-second-pass-next ?nstart)
            (increase (total-cost) (update-cost))
        )
)

;; The second pass sets the coordinates of all nodes depending on the
;; direction.
(:action rotate-second-pass
    :parameters (?n1 - node ?n1x ?n1y - coord ?n1dir - direction
                 ?n2 - node ?n2x ?n2y - coord)
    :precondition
        (and
            (CONNECTED ?n1 ?n2)
            (node-second-pass-next ?n1)
            (at ?n1 ?n1x ?n1y)
            (heading ?n1 ?n1dir)
            (free ?n2x ?n2y)

            (or
                (and (= ?n1dir up)
                     (= ?n1x ?n2x)
                     (COORD-INC ?n1y ?n2y)
                )

                (and (= ?n1dir down)
                     (= ?n1x ?n2x)
                     (COORD-INC ?n2y ?n1y)
                )

                (and (= ?n1dir left)
                     (= ?n1y ?n2y)
                     (COORD-INC ?n2x ?n1x)
                )

                (and (= ?n1dir right)
                     (= ?n1y ?n2y)
                     (COORD-INC ?n1x ?n2x)
                )
            )
        )
    :effect
        (and
            (not (node-second-pass-next ?n1))
            (node-second-pass-next ?n2)
            (not (free ?n2x ?n2y))
            (at ?n2 ?n2x ?n2y)
            (increase (total-cost) (update-cost))
        )
)

(:action rotate-second-pass-end
    :parameters (?n - node)
    :precondition
        (and
            (END-NODE ?n)
            (node-second-pass-next ?n)
        )
    :effect
        (and
            (not (node-second-pass-next ?n))
            (not (rotating))
            (increase (total-cost) (update-cost))
        )
)

)
