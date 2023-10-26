;; ../../../domain-slitherlink/generator-solver/generate-pddl.py gen 5 3 p02.pddl p02.plan
;;
;;  ..3    
;;  1.1    
;;  2..    
;;  ..2    
;;  3.3    
;;
;;  +-+ +-+
;;  |.|.|3|
;;  + +-+ +
;;  |1 . 1|
;;  + +-+ +
;;  |2|.|.|
;;  + + + +
;;  |.|.|2|
;;  + + + +
;;  |3|.|3|
;;  +-+ +-+

(define (problem sliterlink-204367)
(:domain slitherlink)

(:objects
    cap-0 cap-1 cap-2 cap-3 cap-4 - cell-capacity-level
    n-0-0 n-0-1 n-0-2 n-0-3 n-1-0 n-1-1 n-1-2 n-1-3 n-2-0 n-2-1 n-2-2 n-2-3 n-3-0 n-3-1 n-3-2 n-3-3 n-4-0 n-4-1 n-4-2 n-4-3 n-5-0 n-5-1 n-5-2 n-5-3 - node
    cell-0-0 cell-0-1 cell-0-2 cell-1-0 cell-1-1 cell-1-2 cell-2-0 cell-2-1 cell-2-2 cell-3-0 cell-3-1 cell-3-2 cell-4-0 cell-4-1 cell-4-2 cell-outside-0-left cell-outside-0-right cell-outside-1-left cell-outside-1-right cell-outside-2-left cell-outside-2-right cell-outside-3-left cell-outside-3-right cell-outside-4-left cell-outside-4-right cell-outside-0-up cell-outside-0-down cell-outside-1-up cell-outside-1-down cell-outside-2-up cell-outside-2-down - cell
)

(:init
    (CELL-CAPACITY-INC cap-0 cap-1)
    (CELL-CAPACITY-INC cap-1 cap-2)
    (CELL-CAPACITY-INC cap-2 cap-3)
    (CELL-CAPACITY-INC cap-3 cap-4)

    (CELL-CAPACITY cell-outside-0-left cap-1)
    (CELL-CAPACITY cell-outside-0-right cap-1)
    (CELL-CAPACITY cell-outside-1-left cap-1)
    (CELL-CAPACITY cell-outside-1-right cap-1)
    (CELL-CAPACITY cell-outside-2-left cap-1)
    (CELL-CAPACITY cell-outside-2-right cap-1)
    (CELL-CAPACITY cell-outside-3-left cap-1)
    (CELL-CAPACITY cell-outside-3-right cap-1)
    (CELL-CAPACITY cell-outside-4-left cap-1)
    (CELL-CAPACITY cell-outside-4-right cap-1)
    (CELL-CAPACITY cell-outside-0-up cap-1)
    (CELL-CAPACITY cell-outside-0-down cap-1)
    (CELL-CAPACITY cell-outside-1-up cap-1)
    (CELL-CAPACITY cell-outside-1-down cap-1)
    (CELL-CAPACITY cell-outside-2-up cap-1)
    (CELL-CAPACITY cell-outside-2-down cap-1)
    (CELL-CAPACITY cell-0-0 cap-4)
    (CELL-CAPACITY cell-0-1 cap-4)
    (CELL-CAPACITY cell-0-2 cap-3)
    (CELL-CAPACITY cell-1-0 cap-1)
    (CELL-CAPACITY cell-1-1 cap-4)
    (CELL-CAPACITY cell-1-2 cap-1)
    (CELL-CAPACITY cell-2-0 cap-2)
    (CELL-CAPACITY cell-2-1 cap-4)
    (CELL-CAPACITY cell-2-2 cap-4)
    (CELL-CAPACITY cell-3-0 cap-4)
    (CELL-CAPACITY cell-3-1 cap-4)
    (CELL-CAPACITY cell-3-2 cap-2)
    (CELL-CAPACITY cell-4-0 cap-3)
    (CELL-CAPACITY cell-4-1 cap-4)
    (CELL-CAPACITY cell-4-2 cap-3)

    (node-degree0 n-0-0)
    (node-degree0 n-0-1)
    (node-degree0 n-0-2)
    (node-degree0 n-0-3)
    (node-degree0 n-1-0)
    (node-degree0 n-1-1)
    (node-degree0 n-1-2)
    (node-degree0 n-1-3)
    (node-degree0 n-2-0)
    (node-degree0 n-2-1)
    (node-degree0 n-2-2)
    (node-degree0 n-2-3)
    (node-degree0 n-3-0)
    (node-degree0 n-3-1)
    (node-degree0 n-3-2)
    (node-degree0 n-3-3)
    (node-degree0 n-4-0)
    (node-degree0 n-4-1)
    (node-degree0 n-4-2)
    (node-degree0 n-4-3)
    (node-degree0 n-5-0)
    (node-degree0 n-5-1)
    (node-degree0 n-5-2)
    (node-degree0 n-5-3)

    (CELL-EDGE cell-0-0 cell-1-0 n-1-0 n-1-1)
    (CELL-EDGE cell-0-1 cell-1-1 n-1-1 n-1-2)
    (CELL-EDGE cell-0-2 cell-1-2 n-1-2 n-1-3)
    (CELL-EDGE cell-1-0 cell-2-0 n-2-0 n-2-1)
    (CELL-EDGE cell-1-1 cell-2-1 n-2-1 n-2-2)
    (CELL-EDGE cell-1-2 cell-2-2 n-2-2 n-2-3)
    (CELL-EDGE cell-2-0 cell-3-0 n-3-0 n-3-1)
    (CELL-EDGE cell-2-1 cell-3-1 n-3-1 n-3-2)
    (CELL-EDGE cell-2-2 cell-3-2 n-3-2 n-3-3)
    (CELL-EDGE cell-3-0 cell-4-0 n-4-0 n-4-1)
    (CELL-EDGE cell-3-1 cell-4-1 n-4-1 n-4-2)
    (CELL-EDGE cell-3-2 cell-4-2 n-4-2 n-4-3)
    (CELL-EDGE cell-outside-0-up cell-0-0 n-0-0 n-0-1)
    (CELL-EDGE cell-4-0 cell-outside-0-down n-5-0 n-5-1)
    (CELL-EDGE cell-outside-1-up cell-0-1 n-0-1 n-0-2)
    (CELL-EDGE cell-4-1 cell-outside-1-down n-5-1 n-5-2)
    (CELL-EDGE cell-outside-2-up cell-0-2 n-0-2 n-0-3)
    (CELL-EDGE cell-4-2 cell-outside-2-down n-5-2 n-5-3)
    (CELL-EDGE cell-0-0 cell-0-1 n-0-1 n-1-1)
    (CELL-EDGE cell-1-0 cell-1-1 n-1-1 n-2-1)
    (CELL-EDGE cell-2-0 cell-2-1 n-2-1 n-3-1)
    (CELL-EDGE cell-3-0 cell-3-1 n-3-1 n-4-1)
    (CELL-EDGE cell-4-0 cell-4-1 n-4-1 n-5-1)
    (CELL-EDGE cell-0-1 cell-0-2 n-0-2 n-1-2)
    (CELL-EDGE cell-1-1 cell-1-2 n-1-2 n-2-2)
    (CELL-EDGE cell-2-1 cell-2-2 n-2-2 n-3-2)
    (CELL-EDGE cell-3-1 cell-3-2 n-3-2 n-4-2)
    (CELL-EDGE cell-4-1 cell-4-2 n-4-2 n-5-2)
    (CELL-EDGE cell-outside-0-left cell-0-0 n-0-0 n-1-0)
    (CELL-EDGE cell-0-2 cell-outside-0-right n-0-3 n-1-3)
    (CELL-EDGE cell-outside-1-left cell-1-0 n-1-0 n-2-0)
    (CELL-EDGE cell-1-2 cell-outside-1-right n-1-3 n-2-3)
    (CELL-EDGE cell-outside-2-left cell-2-0 n-2-0 n-3-0)
    (CELL-EDGE cell-2-2 cell-outside-2-right n-2-3 n-3-3)
    (CELL-EDGE cell-outside-3-left cell-3-0 n-3-0 n-4-0)
    (CELL-EDGE cell-3-2 cell-outside-3-right n-3-3 n-4-3)
    (CELL-EDGE cell-outside-4-left cell-4-0 n-4-0 n-5-0)
    (CELL-EDGE cell-4-2 cell-outside-4-right n-4-3 n-5-3)

    
)
(:goal
    (and
        (not (node-degree1 n-0-0))
        (not (node-degree1 n-0-1))
        (not (node-degree1 n-0-2))
        (not (node-degree1 n-0-3))
        (not (node-degree1 n-1-0))
        (not (node-degree1 n-1-1))
        (not (node-degree1 n-1-2))
        (not (node-degree1 n-1-3))
        (not (node-degree1 n-2-0))
        (not (node-degree1 n-2-1))
        (not (node-degree1 n-2-2))
        (not (node-degree1 n-2-3))
        (not (node-degree1 n-3-0))
        (not (node-degree1 n-3-1))
        (not (node-degree1 n-3-2))
        (not (node-degree1 n-3-3))
        (not (node-degree1 n-4-0))
        (not (node-degree1 n-4-1))
        (not (node-degree1 n-4-2))
        (not (node-degree1 n-4-3))
        (not (node-degree1 n-5-0))
        (not (node-degree1 n-5-1))
        (not (node-degree1 n-5-2))
        (not (node-degree1 n-5-3))

        (CELL-CAPACITY cell-0-2 cap-0)
        (CELL-CAPACITY cell-1-0 cap-0)
        (CELL-CAPACITY cell-1-2 cap-0)
        (CELL-CAPACITY cell-2-0 cap-0)
        (CELL-CAPACITY cell-3-2 cap-0)
        (CELL-CAPACITY cell-4-0 cap-0)
        (CELL-CAPACITY cell-4-2 cap-0)
    )
)
)


