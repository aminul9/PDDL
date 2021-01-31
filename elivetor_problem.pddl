(define (problem Elevator) (:domain elevator)
(:objects 
    p1 p2 p3 - passenger
    e1 e2 - elevator
    n1 n2 n3 n4 n5 - num
)
(:init
    (at_lift e1 n1)
    (at_lift e2 n5)
    (at_passenger p1 n2)
    (at_passenger p2 n2)
    (at_passenger p3 n5)
    (next n1 n2)
    (next n2 n3)
    (next n3 n4)
    (next n4 n5)
    
)

(:goal (and
    (at_passenger p1 n1)
    (at_passenger p2 n1)
    (at_passenger p3 n1)


    ; ;Testing only for lift
    (at_lift  e1 n1 )
    (at_lift e2 n1)
    
))

;un-comment the following line if metric is needed
;(:metric minimize (???))
)
