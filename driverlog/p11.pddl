(define (problem DLOG-2-3-6)
	(:domain driverlog)
	(:objects
	driver1
	driver2
	truck1
	truck2
	truck3
	package1
	package2
	package3
	package4
	package5
	package6
	s0
	s1
	s2
	s3
	s4
	s5
	s6
	p0-3
	p1-0
	p1-5
	p2-3
	p2-6
	p3-4
	p4-0
	p4-1
	p4-2
	p5-0
	p6-3
	)
	(:init
	(at driver1 s6)
	(DRIVER driver1)
	(at driver2 s0)
	(DRIVER driver2)
	(at truck1 s0)
	(empty truck1)
	(TRUCK truck1)
	(at truck2 s2)
	(empty truck2)
	(TRUCK truck2)
	(at truck3 s2)
	(empty truck3)
	(TRUCK truck3)
	(at package1 s6)
	(OBJ package1)
	(at package2 s2)
	(OBJ package2)
	(at package3 s3)
	(OBJ package3)
	(at package4 s0)
	(OBJ package4)
	(at package5 s5)
	(OBJ package5)
	(at package6 s5)
	(OBJ package6)
	(LOCATION s0)
	(LOCATION s1)
	(LOCATION s2)
	(LOCATION s3)
	(LOCATION s4)
	(LOCATION s5)
	(LOCATION s6)
	(LOCATION p0-3)
	(LOCATION p1-0)
	(LOCATION p1-5)
	(LOCATION p2-3)
	(LOCATION p2-6)
	(LOCATION p3-4)
	(LOCATION p4-0)
	(LOCATION p4-1)
	(LOCATION p4-2)
	(LOCATION p5-0)
	(LOCATION p6-3)
	(path s0 p0-3)
	(path p0-3 s0)
	(path s3 p0-3)
	(path p0-3 s3)
	(path s1 p1-0)
	(path p1-0 s1)
	(path s0 p1-0)
	(path p1-0 s0)
	(path s1 p1-5)
	(path p1-5 s1)
	(path s5 p1-5)
	(path p1-5 s5)
	(path s2 p2-3)
	(path p2-3 s2)
	(path s3 p2-3)
	(path p2-3 s3)
	(path s2 p2-6)
	(path p2-6 s2)
	(path s6 p2-6)
	(path p2-6 s6)
	(path s3 p3-4)
	(path p3-4 s3)
	(path s4 p3-4)
	(path p3-4 s4)
	(path s4 p4-0)
	(path p4-0 s4)
	(path s0 p4-0)
	(path p4-0 s0)
	(path s4 p4-1)
	(path p4-1 s4)
	(path s1 p4-1)
	(path p4-1 s1)
	(path s4 p4-2)
	(path p4-2 s4)
	(path s2 p4-2)
	(path p4-2 s2)
	(path s5 p5-0)
	(path p5-0 s5)
	(path s0 p5-0)
	(path p5-0 s0)
	(path s6 p6-3)
	(path p6-3 s6)
	(path s3 p6-3)
	(path p6-3 s3)
	(link s0 s2)
	(link s2 s0)
	(link s0 s5)
	(link s5 s0)
	(link s1 s0)
	(link s0 s1)
	(link s1 s3)
	(link s3 s1)
	(link s1 s4)
	(link s4 s1)
	(link s1 s6)
	(link s6 s1)
	(link s2 s1)
	(link s1 s2)
	(link s2 s4)
	(link s4 s2)
	(link s3 s6)
	(link s6 s3)
	(link s4 s0)
	(link s0 s4)
	(link s5 s1)
	(link s1 s5)
	(link s5 s2)
	(link s2 s5)
	(link s6 s0)
	(link s0 s6)
	(link s6 s2)
	(link s2 s6)
	(link s6 s4)
	(link s4 s6)
	(link s6 s5)
	(link s5 s6)
)
	(:goal (and
	(at driver2 s4)
	(at truck2 s4)
	(at package1 s6)
	(at package2 s3)
	(at package3 s4)
	(at package4 s6)
	(at package5 s1)
	))


)
