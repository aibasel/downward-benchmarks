;; Generated with seed: 1291, size: 6, num-rotations: 1
(define (problem labyrinth-size-6-rotations-1-seed-1291)
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
	(card-at card6 pos0 pos1)
	(card-at card7 pos1 pos1)
	(card-at card8 pos2 pos1)
	(card-at card9 pos3 pos1)
	(card-at card10 pos4 pos1)
	(card-at card11 pos5 pos1)
	(card-at card12 pos0 pos2)
	(card-at card13 pos1 pos2)
	(card-at card14 pos2 pos2)
	(card-at card15 pos3 pos2)
	(card-at card16 pos4 pos2)
	(card-at card17 pos5 pos2)
	(card-at card23 pos0 pos3)
	(card-at card18 pos1 pos3)
	(card-at card19 pos2 pos3)
	(card-at card20 pos3 pos3)
	(card-at card21 pos4 pos3)
	(card-at card22 pos5 pos3)
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

	(BLOCKED card2 W)

	(BLOCKED card3 E)
	(BLOCKED card3 S)


	(BLOCKED card5 E)

	(BLOCKED card6 W)

	(BLOCKED card7 N)
	(BLOCKED card7 E)

	(BLOCKED card8 E)
	(BLOCKED card8 S)

	(BLOCKED card9 W)

	(BLOCKED card10 W)

	(BLOCKED card11 N)
	(BLOCKED card11 E)

	(BLOCKED card12 S)
	(BLOCKED card12 W)

	(BLOCKED card13 N)
	(BLOCKED card13 E)

	(BLOCKED card14 N)
	(BLOCKED card14 S)

	(BLOCKED card15 N)
	(BLOCKED card15 E)

	(BLOCKED card16 E)
	(BLOCKED card16 S)

	(BLOCKED card17 N)
	(BLOCKED card17 E)

	(BLOCKED card23 E)
	(BLOCKED card23 S)

	(BLOCKED card18 N)
	(BLOCKED card18 S)

	(BLOCKED card19 W)

	(BLOCKED card20 N)
	(BLOCKED card20 E)

	(BLOCKED card21 S)
	(BLOCKED card21 W)

	(BLOCKED card22 N)
	(BLOCKED card22 E)

	(BLOCKED card24 N)
	(BLOCKED card24 W)

	(BLOCKED card25 E)

	(BLOCKED card26 N)
	(BLOCKED card26 E)

	(BLOCKED card27 N)
	(BLOCKED card27 S)

	(BLOCKED card28 N)
	(BLOCKED card28 W)

	(BLOCKED card29 N)
	(BLOCKED card29 E)

	(BLOCKED card30 S)
	(BLOCKED card30 W)

	(BLOCKED card31 N)

	(BLOCKED card32 N)
	(BLOCKED card32 S)

	(BLOCKED card33 S)

	(BLOCKED card34 N)
	(BLOCKED card34 S)

	(BLOCKED card35 E)


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
