;; Generated with seed: 1283, size: 6, num-rotations: 4
(define (problem labyrinth-size-6-rotations-4-seed-1283)
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
	(card-at card1 pos1 pos0)
	(card-at card2 pos2 pos0)
	(card-at card3 pos3 pos0)
	(card-at card34 pos4 pos0)
	(card-at card5 pos5 pos0)
	(card-at card11 pos0 pos1)
	(card-at card6 pos1 pos1)
	(card-at card7 pos2 pos1)
	(card-at card8 pos3 pos1)
	(card-at card4 pos4 pos1)
	(card-at card10 pos5 pos1)
	(card-at card17 pos0 pos2)
	(card-at card12 pos1 pos2)
	(card-at card13 pos2 pos2)
	(card-at card14 pos3 pos2)
	(card-at card9 pos4 pos2)
	(card-at card16 pos5 pos2)
	(card-at card19 pos0 pos3)
	(card-at card20 pos1 pos3)
	(card-at card21 pos2 pos3)
	(card-at card22 pos3 pos3)
	(card-at card15 pos4 pos3)
	(card-at card18 pos5 pos3)
	(card-at card24 pos0 pos4)
	(card-at card25 pos1 pos4)
	(card-at card26 pos2 pos4)
	(card-at card27 pos3 pos4)
	(card-at card23 pos4 pos4)
	(card-at card29 pos5 pos4)
	(card-at card30 pos0 pos5)
	(card-at card31 pos1 pos5)
	(card-at card32 pos2 pos5)
	(card-at card33 pos3 pos5)
	(card-at card28 pos4 pos5)
	(card-at card35 pos5 pos5)


	(BLOCKED card1 S)
	(BLOCKED card1 W)

	(BLOCKED card2 N)
	(BLOCKED card2 E)

	(BLOCKED card3 E)
	(BLOCKED card3 S)

	(BLOCKED card34 E)
	(BLOCKED card34 S)

	(BLOCKED card5 S)
	(BLOCKED card5 W)

	(BLOCKED card11 S)
	(BLOCKED card11 W)

	(BLOCKED card6 S)

	(BLOCKED card7 N)
	(BLOCKED card7 E)

	(BLOCKED card8 N)
	(BLOCKED card8 W)

	(BLOCKED card4 N)
	(BLOCKED card4 E)

	(BLOCKED card10 S)

	(BLOCKED card17 S)

	(BLOCKED card12 N)
	(BLOCKED card12 S)

	(BLOCKED card13 S)

	(BLOCKED card14 N)
	(BLOCKED card14 E)

	(BLOCKED card9 N)
	(BLOCKED card9 W)

	(BLOCKED card16 N)
	(BLOCKED card16 E)

	(BLOCKED card19 N)
	(BLOCKED card19 W)

	(BLOCKED card20 S)

	(BLOCKED card21 E)
	(BLOCKED card21 S)

	(BLOCKED card22 N)
	(BLOCKED card22 W)

	(BLOCKED card15 S)

	(BLOCKED card18 N)

	(BLOCKED card24 W)

	(BLOCKED card25 E)
	(BLOCKED card25 S)

	(BLOCKED card26 E)
	(BLOCKED card26 W)

	(BLOCKED card27 N)

	(BLOCKED card23 N)
	(BLOCKED card23 E)

	(BLOCKED card29 E)
	(BLOCKED card29 W)

	(BLOCKED card30 S)

	(BLOCKED card31 N)
	(BLOCKED card31 S)

	(BLOCKED card32 N)

	(BLOCKED card33 S)

	(BLOCKED card28 E)
	(BLOCKED card28 W)

	(BLOCKED card35 E)
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
