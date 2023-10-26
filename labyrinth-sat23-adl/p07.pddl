;; Generated with seed: 1279, size: 6, num-rotations: 3
(define (problem labyrinth-size-6-rotations-3-seed-1279)
(:domain labyrinth)
(:objects
	pos0 pos1 pos2 pos3 pos4 pos5  - gridpos
	card0 card1 card2 card3 card4 card5 card6 card7 card8 card9 card10 card11 card12 card13 card14 card15 card16 card17 card18 card19 card20 card21 card22 card23 card24 card25 card26 card27 card28 card29 card30 card31 card32 card33 card34 card35  - card
)
(:init
	(MAX-POS pos5)
	(MIN-POS pos0)

	(NEXT pos1 pos0)
	(NEXT pos2 pos1)
	(NEXT pos3 pos2)
	(NEXT pos4 pos3)
	(NEXT pos5 pos4)

	(card-at card0 pos0 pos0)
	(card-at card31 pos1 pos0)
	(card-at card2 pos2 pos0)
	(card-at card3 pos3 pos0)
	(card-at card10 pos4 pos0)
	(card-at card5 pos5 pos0)
	(card-at card6 pos0 pos1)
	(card-at card1 pos1 pos1)
	(card-at card8 pos2 pos1)
	(card-at card9 pos3 pos1)
	(card-at card16 pos4 pos1)
	(card-at card11 pos5 pos1)
	(card-at card17 pos0 pos2)
	(card-at card12 pos1 pos2)
	(card-at card7 pos2 pos2)
	(card-at card14 pos3 pos2)
	(card-at card15 pos4 pos2)
	(card-at card22 pos5 pos2)
	(card-at card18 pos0 pos3)
	(card-at card13 pos1 pos3)
	(card-at card20 pos2 pos3)
	(card-at card21 pos3 pos3)
	(card-at card28 pos4 pos3)
	(card-at card23 pos5 pos3)
	(card-at card24 pos0 pos4)
	(card-at card19 pos1 pos4)
	(card-at card26 pos2 pos4)
	(card-at card27 pos3 pos4)
	(card-at card34 pos4 pos4)
	(card-at card29 pos5 pos4)
	(card-at card30 pos0 pos5)
	(card-at card25 pos1 pos5)
	(card-at card32 pos2 pos5)
	(card-at card33 pos3 pos5)
	(card-at card4 pos4 pos5)
	(card-at card35 pos5 pos5)

	(BLOCKED card0 N)
	(BLOCKED card0 E)

	(BLOCKED card31 N)

	(BLOCKED card2 S)
	(BLOCKED card2 W)

	(BLOCKED card3 E)
	(BLOCKED card3 S)

	(BLOCKED card10 N)
	(BLOCKED card10 E)

	(BLOCKED card5 N)
	(BLOCKED card5 S)

	(BLOCKED card6 E)

	(BLOCKED card1 N)

	(BLOCKED card8 E)
	(BLOCKED card8 S)

	(BLOCKED card9 E)
	(BLOCKED card9 W)

	(BLOCKED card16 N)
	(BLOCKED card16 E)

	(BLOCKED card11 N)
	(BLOCKED card11 S)

	(BLOCKED card17 E)

	(BLOCKED card12 W)

	(BLOCKED card7 N)

	(BLOCKED card14 S)
	(BLOCKED card14 W)

	(BLOCKED card15 N)
	(BLOCKED card15 E)

	(BLOCKED card22 N)

	(BLOCKED card18 N)
	(BLOCKED card18 W)

	(BLOCKED card13 N)

	(BLOCKED card20 N)
	(BLOCKED card20 W)

	(BLOCKED card21 N)
	(BLOCKED card21 W)

	(BLOCKED card28 S)
	(BLOCKED card28 W)

	(BLOCKED card23 N)
	(BLOCKED card23 W)

	(BLOCKED card24 E)
	(BLOCKED card24 W)

	(BLOCKED card19 E)

	(BLOCKED card26 S)

	(BLOCKED card27 E)
	(BLOCKED card27 W)

	(BLOCKED card34 E)
	(BLOCKED card34 W)

	(BLOCKED card29 N)
	(BLOCKED card29 E)

	(BLOCKED card30 S)
	(BLOCKED card30 W)

	(BLOCKED card25 N)

	(BLOCKED card32 N)

	(BLOCKED card33 E)
	(BLOCKED card33 S)

	(BLOCKED card4 N)
	(BLOCKED card4 E)

	(BLOCKED card35 W)


	(robot-at card0)

	(= (total-cost) 0)
	(= (move-robot-cost) 1)
	(= (move-card) 1)
)
(:goal
	(and
		(left)
	)
)
	(:metric minimize (total-cost))
)
