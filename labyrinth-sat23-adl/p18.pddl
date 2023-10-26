;; Generated with seed: 1361, size: 8, num-rotations: 3
(define (problem labyrinth-size-8-rotations-3-seed-1361)
(:domain labyrinth)
(:objects
	pos0 pos1 pos2 pos3 pos4 pos5 pos6 pos7  - gridpos
	card0 card1 card2 card3 card4 card5 card6 card7 card8 card9 card10 card11 card12 card13 card14 card15 card16 card17 card18 card19 card20 card21 card22 card23 card24 card25 card26 card27 card28 card29 card30 card31 card32 card33 card34 card35 card36 card37 card38 card39 card40 card41 card42 card43 card44 card45 card46 card47 card48 card49 card50 card51 card52 card53 card54 card55 card56 card57 card58 card59 card60 card61 card62 card63  - card
)
(:init
	(MAX-POS pos7)
	(MIN-POS pos0)

	(NEXT pos1 pos0)
	(NEXT pos2 pos1)
	(NEXT pos3 pos2)
	(NEXT pos4 pos3)
	(NEXT pos5 pos4)
	(NEXT pos6 pos5)
	(NEXT pos7 pos6)

	(card-at card0 pos0 pos0)
	(card-at card1 pos1 pos0)
	(card-at card10 pos2 pos0)
	(card-at card59 pos3 pos0)
	(card-at card4 pos4 pos0)
	(card-at card5 pos5 pos0)
	(card-at card6 pos6 pos0)
	(card-at card7 pos7 pos0)
	(card-at card8 pos0 pos1)
	(card-at card9 pos1 pos1)
	(card-at card18 pos2 pos1)
	(card-at card3 pos3 pos1)
	(card-at card12 pos4 pos1)
	(card-at card13 pos5 pos1)
	(card-at card14 pos6 pos1)
	(card-at card15 pos7 pos1)
	(card-at card16 pos0 pos2)
	(card-at card17 pos1 pos2)
	(card-at card26 pos2 pos2)
	(card-at card11 pos3 pos2)
	(card-at card20 pos4 pos2)
	(card-at card21 pos5 pos2)
	(card-at card22 pos6 pos2)
	(card-at card23 pos7 pos2)
	(card-at card24 pos0 pos3)
	(card-at card25 pos1 pos3)
	(card-at card34 pos2 pos3)
	(card-at card19 pos3 pos3)
	(card-at card28 pos4 pos3)
	(card-at card29 pos5 pos3)
	(card-at card30 pos6 pos3)
	(card-at card31 pos7 pos3)
	(card-at card39 pos0 pos4)
	(card-at card32 pos1 pos4)
	(card-at card33 pos2 pos4)
	(card-at card42 pos3 pos4)
	(card-at card27 pos4 pos4)
	(card-at card36 pos5 pos4)
	(card-at card37 pos6 pos4)
	(card-at card38 pos7 pos4)
	(card-at card40 pos0 pos5)
	(card-at card41 pos1 pos5)
	(card-at card50 pos2 pos5)
	(card-at card35 pos3 pos5)
	(card-at card44 pos4 pos5)
	(card-at card45 pos5 pos5)
	(card-at card46 pos6 pos5)
	(card-at card47 pos7 pos5)
	(card-at card48 pos0 pos6)
	(card-at card49 pos1 pos6)
	(card-at card58 pos2 pos6)
	(card-at card43 pos3 pos6)
	(card-at card52 pos4 pos6)
	(card-at card53 pos5 pos6)
	(card-at card54 pos6 pos6)
	(card-at card55 pos7 pos6)
	(card-at card56 pos0 pos7)
	(card-at card57 pos1 pos7)
	(card-at card2 pos2 pos7)
	(card-at card51 pos3 pos7)
	(card-at card60 pos4 pos7)
	(card-at card61 pos5 pos7)
	(card-at card62 pos6 pos7)
	(card-at card63 pos7 pos7)

	(BLOCKED card0 S)
	(BLOCKED card0 W)

	(BLOCKED card1 N)

	(BLOCKED card10 W)

	(BLOCKED card59 E)
	(BLOCKED card59 W)

	(BLOCKED card4 N)
	(BLOCKED card4 S)

	(BLOCKED card5 N)
	(BLOCKED card5 E)

	(BLOCKED card6 N)
	(BLOCKED card6 W)

	(BLOCKED card7 N)
	(BLOCKED card7 S)

	(BLOCKED card8 E)
	(BLOCKED card8 W)

	(BLOCKED card9 N)
	(BLOCKED card9 S)

	(BLOCKED card18 N)
	(BLOCKED card18 E)

	(BLOCKED card3 N)
	(BLOCKED card3 S)

	(BLOCKED card12 E)
	(BLOCKED card12 W)

	(BLOCKED card13 E)
	(BLOCKED card13 W)

	(BLOCKED card14 E)
	(BLOCKED card14 S)

	(BLOCKED card15 S)
	(BLOCKED card15 W)

	(BLOCKED card16 S)
	(BLOCKED card16 W)

	(BLOCKED card17 N)
	(BLOCKED card17 E)

	(BLOCKED card26 S)

	(BLOCKED card11 E)

	(BLOCKED card20 N)
	(BLOCKED card20 E)

	(BLOCKED card21 S)
	(BLOCKED card21 W)

	(BLOCKED card22 E)

	(BLOCKED card23 W)

	(BLOCKED card24 W)

	(BLOCKED card25 N)
	(BLOCKED card25 E)

	(BLOCKED card34 E)
	(BLOCKED card34 S)

	(BLOCKED card19 S)

	(BLOCKED card28 N)
	(BLOCKED card28 W)

	(BLOCKED card29 S)
	(BLOCKED card29 W)


	(BLOCKED card31 S)

	(BLOCKED card39 E)
	(BLOCKED card39 S)

	(BLOCKED card32 N)

	(BLOCKED card33 E)

	(BLOCKED card42 W)

	(BLOCKED card27 N)
	(BLOCKED card27 E)

	(BLOCKED card36 S)

	(BLOCKED card37 E)

	(BLOCKED card38 E)
	(BLOCKED card38 W)

	(BLOCKED card40 S)
	(BLOCKED card40 W)

	(BLOCKED card41 E)
	(BLOCKED card41 S)

	(BLOCKED card50 E)
	(BLOCKED card50 W)

	(BLOCKED card35 S)
	(BLOCKED card35 W)

	(BLOCKED card44 N)
	(BLOCKED card44 W)

	(BLOCKED card45 E)
	(BLOCKED card45 S)

	(BLOCKED card46 S)
	(BLOCKED card46 W)

	(BLOCKED card47 N)

	(BLOCKED card48 S)
	(BLOCKED card48 W)

	(BLOCKED card49 E)

	(BLOCKED card58 N)

	(BLOCKED card43 N)
	(BLOCKED card43 W)

	(BLOCKED card52 S)
	(BLOCKED card52 W)

	(BLOCKED card53 N)
	(BLOCKED card53 S)

	(BLOCKED card54 S)

	(BLOCKED card55 W)

	(BLOCKED card56 S)

	(BLOCKED card57 E)
	(BLOCKED card57 W)

	(BLOCKED card2 N)
	(BLOCKED card2 S)

	(BLOCKED card51 S)
	(BLOCKED card51 W)


	(BLOCKED card61 E)
	(BLOCKED card61 W)

	(BLOCKED card62 N)
	(BLOCKED card62 E)

	(BLOCKED card63 E)
	(BLOCKED card63 W)


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
