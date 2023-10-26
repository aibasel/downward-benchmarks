;; Generated with seed: 1321, size: 8, num-rotations: 1
(define (problem labyrinth-size-8-rotations-1-seed-1321)
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
	(card-at card2 pos2 pos0)
	(card-at card3 pos3 pos0)
	(card-at card4 pos4 pos0)
	(card-at card5 pos5 pos0)
	(card-at card6 pos6 pos0)
	(card-at card7 pos7 pos0)
	(card-at card8 pos0 pos1)
	(card-at card9 pos1 pos1)
	(card-at card10 pos2 pos1)
	(card-at card11 pos3 pos1)
	(card-at card12 pos4 pos1)
	(card-at card13 pos5 pos1)
	(card-at card14 pos6 pos1)
	(card-at card15 pos7 pos1)
	(card-at card23 pos0 pos2)
	(card-at card16 pos1 pos2)
	(card-at card17 pos2 pos2)
	(card-at card18 pos3 pos2)
	(card-at card19 pos4 pos2)
	(card-at card20 pos5 pos2)
	(card-at card21 pos6 pos2)
	(card-at card22 pos7 pos2)
	(card-at card24 pos0 pos3)
	(card-at card25 pos1 pos3)
	(card-at card26 pos2 pos3)
	(card-at card27 pos3 pos3)
	(card-at card28 pos4 pos3)
	(card-at card29 pos5 pos3)
	(card-at card30 pos6 pos3)
	(card-at card31 pos7 pos3)
	(card-at card32 pos0 pos4)
	(card-at card33 pos1 pos4)
	(card-at card34 pos2 pos4)
	(card-at card35 pos3 pos4)
	(card-at card36 pos4 pos4)
	(card-at card37 pos5 pos4)
	(card-at card38 pos6 pos4)
	(card-at card39 pos7 pos4)
	(card-at card40 pos0 pos5)
	(card-at card41 pos1 pos5)
	(card-at card42 pos2 pos5)
	(card-at card43 pos3 pos5)
	(card-at card44 pos4 pos5)
	(card-at card45 pos5 pos5)
	(card-at card46 pos6 pos5)
	(card-at card47 pos7 pos5)
	(card-at card48 pos0 pos6)
	(card-at card49 pos1 pos6)
	(card-at card50 pos2 pos6)
	(card-at card51 pos3 pos6)
	(card-at card52 pos4 pos6)
	(card-at card53 pos5 pos6)
	(card-at card54 pos6 pos6)
	(card-at card55 pos7 pos6)
	(card-at card56 pos0 pos7)
	(card-at card57 pos1 pos7)
	(card-at card58 pos2 pos7)
	(card-at card59 pos3 pos7)
	(card-at card60 pos4 pos7)
	(card-at card61 pos5 pos7)
	(card-at card62 pos6 pos7)
	(card-at card63 pos7 pos7)

	(BLOCKED card0 N)

	(BLOCKED card1 S)
	(BLOCKED card1 W)

	(BLOCKED card2 E)
	(BLOCKED card2 S)

	(BLOCKED card3 S)
	(BLOCKED card3 W)

	(BLOCKED card4 N)

	(BLOCKED card5 E)
	(BLOCKED card5 W)

	(BLOCKED card6 S)
	(BLOCKED card6 W)

	(BLOCKED card7 N)

	(BLOCKED card8 E)

	(BLOCKED card9 N)
	(BLOCKED card9 W)

	(BLOCKED card10 E)
	(BLOCKED card10 W)

	(BLOCKED card11 N)

	(BLOCKED card12 N)
	(BLOCKED card12 W)

	(BLOCKED card13 N)
	(BLOCKED card13 S)

	(BLOCKED card14 N)
	(BLOCKED card14 W)

	(BLOCKED card15 S)

	(BLOCKED card23 S)

	(BLOCKED card16 E)
	(BLOCKED card16 W)

	(BLOCKED card17 S)

	(BLOCKED card18 N)

	(BLOCKED card19 N)

	(BLOCKED card20 E)

	(BLOCKED card21 N)
	(BLOCKED card21 E)

	(BLOCKED card22 N)
	(BLOCKED card22 S)

	(BLOCKED card24 E)
	(BLOCKED card24 W)


	(BLOCKED card26 N)
	(BLOCKED card26 E)

	(BLOCKED card27 N)

	(BLOCKED card28 S)
	(BLOCKED card28 W)

	(BLOCKED card29 E)


	(BLOCKED card31 E)
	(BLOCKED card31 W)


	(BLOCKED card33 E)

	(BLOCKED card34 E)
	(BLOCKED card34 S)

	(BLOCKED card35 E)

	(BLOCKED card36 E)
	(BLOCKED card36 W)

	(BLOCKED card37 N)
	(BLOCKED card37 W)

	(BLOCKED card38 N)
	(BLOCKED card38 E)

	(BLOCKED card39 N)
	(BLOCKED card39 S)

	(BLOCKED card40 E)
	(BLOCKED card40 W)

	(BLOCKED card41 N)
	(BLOCKED card41 E)

	(BLOCKED card42 N)
	(BLOCKED card42 S)

	(BLOCKED card43 N)
	(BLOCKED card43 E)

	(BLOCKED card44 N)
	(BLOCKED card44 W)

	(BLOCKED card45 N)
	(BLOCKED card45 W)

	(BLOCKED card46 S)

	(BLOCKED card47 S)
	(BLOCKED card47 W)

	(BLOCKED card48 E)
	(BLOCKED card48 W)

	(BLOCKED card49 S)
	(BLOCKED card49 W)

	(BLOCKED card50 N)
	(BLOCKED card50 E)

	(BLOCKED card51 N)
	(BLOCKED card51 W)

	(BLOCKED card52 N)
	(BLOCKED card52 W)

	(BLOCKED card53 N)
	(BLOCKED card53 S)

	(BLOCKED card54 N)
	(BLOCKED card54 W)

	(BLOCKED card55 N)
	(BLOCKED card55 S)

	(BLOCKED card56 S)
	(BLOCKED card56 W)

	(BLOCKED card57 N)

	(BLOCKED card58 N)
	(BLOCKED card58 S)

	(BLOCKED card59 N)
	(BLOCKED card59 S)

	(BLOCKED card60 S)

	(BLOCKED card61 N)
	(BLOCKED card61 S)

	(BLOCKED card62 N)
	(BLOCKED card62 S)

	(BLOCKED card63 N)
	(BLOCKED card63 E)


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
