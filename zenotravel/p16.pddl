(define (problem ZTRAVEL-5-15)
(:domain zeno-travel)
(:objects
	plane1
	plane2
	plane3
	plane4
	plane5
	person1
	person2
	person3
	person4
	person5
	person6
	person7
	person8
	person9
	person10
	person11
	person12
	person13
	person14
	person15
	city0
	city1
	city2
	city3
	city4
	city5
	city6
	city7
	city8
	city9
	city10
	city11
	city12
	city13
	fl0
	fl1
	fl2
	fl3
	fl4
	fl5
	fl6
	)
(:init
	(at plane1 city6)
	(aircraft plane1)
	(fuel-level plane1 fl2)
	(at plane2 city0)
	(aircraft plane2)
	(fuel-level plane2 fl3)
	(at plane3 city10)
	(aircraft plane3)
	(fuel-level plane3 fl5)
	(at plane4 city4)
	(aircraft plane4)
	(fuel-level plane4 fl4)
	(at plane5 city1)
	(aircraft plane5)
	(fuel-level plane5 fl6)
	(at person1 city8)
	(person person1)
	(at person2 city12)
	(person person2)
	(at person3 city0)
	(person person3)
	(at person4 city4)
	(person person4)
	(at person5 city13)
	(person person5)
	(at person6 city7)
	(person person6)
	(at person7 city1)
	(person person7)
	(at person8 city2)
	(person person8)
	(at person9 city1)
	(person person9)
	(at person10 city2)
	(person person10)
	(at person11 city10)
	(person person11)
	(at person12 city7)
	(person person12)
	(at person13 city6)
	(person person13)
	(at person14 city1)
	(person person14)
	(at person15 city13)
	(person person15)
	(city city0)
	(city city1)
	(city city2)
	(city city3)
	(city city4)
	(city city5)
	(city city6)
	(city city7)
	(city city8)
	(city city9)
	(city city10)
	(city city11)
	(city city12)
	(city city13)
	(next fl0 fl1)
	(next fl1 fl2)
	(next fl2 fl3)
	(next fl3 fl4)
	(next fl4 fl5)
	(next fl5 fl6)
	(flevel fl0)
	(flevel fl1)
	(flevel fl2)
	(flevel fl3)
	(flevel fl4)
	(flevel fl5)
	(flevel fl6)
)
(:goal (and
	(at plane2 city12)
	(at plane3 city6)
	(at person1 city3)
	(at person2 city4)
	(at person3 city11)
	(at person4 city13)
	(at person5 city11)
	(at person6 city7)
	(at person7 city1)
	(at person8 city11)
	(at person9 city2)
	(at person10 city6)
	(at person11 city0)
	(at person12 city12)
	(at person13 city13)
	(at person14 city4)
	(at person15 city4)
	))

)
