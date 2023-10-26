;; Generated with seed: 1249, size: 5, num-rotations: 4
(define (problem labyrinth-size-5-rotations-4-seed-1249)
(:domain labyrinth)
(:objects
	pos0 pos1 pos2 pos3 pos4  - gridpos
	card0 card1 card2 card3 card4 card5 card6 card7 card8 card9 card10 card11 card12 card13 card14 card15 card16 card17 card18 card19 card20 card21 card22 card23 card24  - card
)
(:init
	(MAX-POS pos4)
	(MIN-POS pos0)

	(NEXT pos1 pos0)
	(NEXT pos2 pos1)
	(NEXT pos3 pos2)
	(NEXT pos4 pos3)

	(card-at card0 pos0 pos0)
	(card-at card1 pos1 pos0)
	(card-at card2 pos2 pos0)
	(card-at card3 pos3 pos0)
	(card-at card4 pos4 pos0)
	(card-at card9 pos0 pos1)
	(card-at card5 pos1 pos1)
	(card-at card6 pos2 pos1)
	(card-at card7 pos3 pos1)
	(card-at card8 pos4 pos1)
	(card-at card14 pos0 pos2)
	(card-at card10 pos1 pos2)
	(card-at card11 pos2 pos2)
	(card-at card12 pos3 pos2)
	(card-at card13 pos4 pos2)
	(card-at card15 pos0 pos3)
	(card-at card16 pos1 pos3)
	(card-at card17 pos2 pos3)
	(card-at card18 pos3 pos3)
	(card-at card19 pos4 pos3)
	(card-at card20 pos0 pos4)
	(card-at card21 pos1 pos4)
	(card-at card22 pos2 pos4)
	(card-at card23 pos3 pos4)
	(card-at card24 pos4 pos4)

	(BLOCKED card0 N)
	(BLOCKED card0 W)

	(BLOCKED card1 N)
	(BLOCKED card1 E)

	(BLOCKED card2 N)
	(BLOCKED card2 S)

	(BLOCKED card3 N)

	(BLOCKED card4 E)
	(BLOCKED card4 S)

	(BLOCKED card9 S)
	(BLOCKED card9 W)

	(BLOCKED card5 W)

	(BLOCKED card6 S)
	(BLOCKED card6 W)

	(BLOCKED card7 S)

	(BLOCKED card8 E)

	(BLOCKED card14 N)
	(BLOCKED card14 W)

	(BLOCKED card10 E)
	(BLOCKED card10 S)


	(BLOCKED card12 E)

	(BLOCKED card13 E)
	(BLOCKED card13 W)

	(BLOCKED card15 S)
	(BLOCKED card15 W)

	(BLOCKED card16 E)
	(BLOCKED card16 S)

	(BLOCKED card17 N)
	(BLOCKED card17 W)

	(BLOCKED card18 E)
	(BLOCKED card18 W)

	(BLOCKED card19 S)
	(BLOCKED card19 W)

	(BLOCKED card20 S)

	(BLOCKED card21 S)
	(BLOCKED card21 W)

	(BLOCKED card22 N)
	(BLOCKED card22 W)

	(BLOCKED card23 S)



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
