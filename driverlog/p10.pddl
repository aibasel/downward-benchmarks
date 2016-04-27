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
	p1-0
	p1-4
	p1-5
	p2-1
	p2-3
	p3-0
	p3-1
	p3-5
	p4-5
	)
	(:init
	(at driver1 s4)
	(DRIVER driver1)
	(at driver2 s0)
	(DRIVER driver2)
	(at truck1 s0)
	(empty truck1)
	(TRUCK truck1)
	(at truck2 s4)
	(empty truck2)
	(TRUCK truck2)
	(at truck3 s5)
	(empty truck3)
	(TRUCK truck3)
	(at package1 s1)
	(OBJ package1)
	(at package2 s0)
	(OBJ package2)
	(at package3 s4)
	(OBJ package3)
	(at package4 s4)
	(OBJ package4)
	(at package5 s4)
	(OBJ package5)
	(at package6 s2)
	(OBJ package6)
	(LOCATION s0)
	(LOCATION s1)
	(LOCATION s2)
	(LOCATION s3)
	(LOCATION s4)
	(LOCATION s5)
	(LOCATION p1-0)
	(LOCATION p1-4)
	(LOCATION p1-5)
	(LOCATION p2-1)
	(LOCATION p2-3)
	(LOCATION p3-0)
	(LOCATION p3-1)
	(LOCATION p3-5)
	(LOCATION p4-5)
	(path s1 p1-0)
	(path p1-0 s1)
	(path s0 p1-0)
	(path p1-0 s0)
	(path s1 p1-4)
	(path p1-4 s1)
	(path s4 p1-4)
	(path p1-4 s4)
	(path s1 p1-5)
	(path p1-5 s1)
	(path s5 p1-5)
	(path p1-5 s5)
	(path s2 p2-1)
	(path p2-1 s2)
	(path s1 p2-1)
	(path p2-1 s1)
	(path s2 p2-3)
	(path p2-3 s2)
	(path s3 p2-3)
	(path p2-3 s3)
	(path s3 p3-0)
	(path p3-0 s3)
	(path s0 p3-0)
	(path p3-0 s0)
	(path s3 p3-1)
	(path p3-1 s3)
	(path s1 p3-1)
	(path p3-1 s1)
	(path s3 p3-5)
	(path p3-5 s3)
	(path s5 p3-5)
	(path p3-5 s5)
	(path s4 p4-5)
	(path p4-5 s4)
	(path s5 p4-5)
	(path p4-5 s5)
	(link s0 s5)
	(link s5 s0)
	(link s1 s0)
	(link s0 s1)
	(link s1 s2)
	(link s2 s1)
	(link s1 s4)
	(link s4 s1)
	(link s1 s5)
	(link s5 s1)
	(link s2 s0)
	(link s0 s2)
	(link s3 s0)
	(link s0 s3)
	(link s3 s1)
	(link s1 s3)
	(link s3 s2)
	(link s2 s3)
	(link s3 s4)
	(link s4 s3)
	(link s4 s0)
	(link s0 s4)
	(link s5 s3)
	(link s3 s5)
	(link s5 s4)
	(link s4 s5)
)
	(:goal (and
	(at driver1 s1)
	(at driver2 s0)
	(at package1 s5)
	(at package2 s1)
	(at package3 s5)
	(at package4 s1)
	(at package5 s3)
	(at package6 s2)
	))


)
