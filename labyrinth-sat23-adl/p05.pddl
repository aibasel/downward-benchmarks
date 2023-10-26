;; Generated with seed: 1259, size: 6, num-rotations: 1
(define (problem labyrinth-size-6-rotations-1-seed-1259)
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
	(card-at card4 pos4 pos0)
	(card-at card5 pos5 pos0)
	(card-at card7 pos0 pos1)
	(card-at card8 pos1 pos1)
	(card-at card9 pos2 pos1)
	(card-at card10 pos3 pos1)
	(card-at card11 pos4 pos1)
	(card-at card6 pos5 pos1)
	(card-at card12 pos0 pos2)
	(card-at card13 pos1 pos2)
	(card-at card14 pos2 pos2)
	(card-at card15 pos3 pos2)
	(card-at card16 pos4 pos2)
	(card-at card17 pos5 pos2)
	(card-at card18 pos0 pos3)
	(card-at card19 pos1 pos3)
	(card-at card20 pos2 pos3)
	(card-at card21 pos3 pos3)
	(card-at card22 pos4 pos3)
	(card-at card23 pos5 pos3)
	(card-at card24 pos0 pos4)
	(card-at card25 pos1 pos4)
	(card-at card26 pos2 pos4)
	(card-at card27 pos3 pos4)
	(card-at card28 pos4 pos4)
	(card-at card29 pos5 pos4)
	(card-at card30 pos0 pos5)
	(card-at card31 pos1 pos5)
	(card-at card32 pos2 pos5)
	(card-at card33 pos3 pos5)
	(card-at card34 pos4 pos5)
	(card-at card35 pos5 pos5)

	(BLOCKED card0 N)
	(BLOCKED card0 W)

	(BLOCKED card1 E)
	(BLOCKED card1 S)

	(BLOCKED card2 N)
	(BLOCKED card2 S)

	(BLOCKED card3 N)
	(BLOCKED card3 E)

	(BLOCKED card4 S)
	(BLOCKED card4 W)

	(BLOCKED card5 N)
	(BLOCKED card5 E)

	(BLOCKED card7 N)
	(BLOCKED card7 W)


	(BLOCKED card9 N)
	(BLOCKED card9 E)

	(BLOCKED card10 E)
	(BLOCKED card10 S)

	(BLOCKED card11 N)
	(BLOCKED card11 W)

	(BLOCKED card6 E)

	(BLOCKED card12 S)
	(BLOCKED card12 W)

	(BLOCKED card13 E)
	(BLOCKED card13 S)


	(BLOCKED card15 S)

	(BLOCKED card16 E)

	(BLOCKED card17 S)
	(BLOCKED card17 W)

	(BLOCKED card18 N)
	(BLOCKED card18 E)

	(BLOCKED card19 N)

	(BLOCKED card20 N)
	(BLOCKED card20 E)

	(BLOCKED card21 W)

	(BLOCKED card22 E)

	(BLOCKED card23 N)
	(BLOCKED card23 E)

	(BLOCKED card24 N)
	(BLOCKED card24 E)

	(BLOCKED card25 E)
	(BLOCKED card25 S)

	(BLOCKED card26 N)

	(BLOCKED card27 W)

	(BLOCKED card28 S)

	(BLOCKED card29 E)

	(BLOCKED card30 E)

	(BLOCKED card31 E)

	(BLOCKED card32 S)

	(BLOCKED card33 N)
	(BLOCKED card33 E)

	(BLOCKED card34 E)
	(BLOCKED card34 S)

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
