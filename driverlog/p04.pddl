(define (problem DLOG-3-2-4)
	(:domain driverlog)
	(:objects
	driver1
	driver2
	driver3
	truck1
	truck2
	package1
	package2
	package3
	package4
	s0
	s1
	s2
	p0-1
	p1-0
	p1-2
	p2-1
	)
	(:init
	(at driver1 s1)
	(DRIVER driver1)
	(at driver2 s1)
	(DRIVER driver2)
	(at driver3 s0)
	(DRIVER driver3)
	(at truck1 s1)
	(empty truck1)
	(TRUCK truck1)
	(at truck2 s0)
	(empty truck2)
	(TRUCK truck2)
	(at package1 s2)
	(OBJ package1)
	(at package2 s2)
	(OBJ package2)
	(at package3 s0)
	(OBJ package3)
	(at package4 s1)
	(OBJ package4)
	(LOCATION s0)
	(LOCATION s1)
	(LOCATION s2)
	(LOCATION p0-1)
	(LOCATION p1-0)
	(LOCATION p1-2)
	(LOCATION p2-1)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(link s0 s2)
	(link s2 s0)
	(link s1 s0)
	(link s0 s1)
	(link s2 s1)
	(link s1 s2)
)
	(:goal (and
	(at driver1 s1)
	(at driver2 s0)
	(at driver3 s1)
	(at truck1 s1)
	(at truck2 s2)
	(at package1 s1)
	(at package2 s2)
	(at package3 s2)
	(at package4 s0)
	))


)
