;Header and description

(define (domain elevator)

;remove requirements that are not needed
(:requirements :strips :typing )

(:types passenger elevator num - objects
)

(:predicates 
    (at_lift ?lift - elevator ?floor - num )
    (at_passenger ?person - passenger ?floor - num)
    (next ?n1 ?n2 - num)
    (arise ?person - passenger ?lift - elevator)
)


(:functions ;todo: define numeric functions here
)

;define actions here

(:action Lift_up
    :parameters (?lift - elevator ?cur ?next - num)
    :precondition (and 
        (at_lift ?lift ?cur)
        (next ?cur ?next)
    )
    :effect (and 
        
        (not (at_lift ?lift ?cur ))
        (at_lift ?lift ?next)
    )
)

(:action lift_down
    :parameters (?lift - elevator ?cur ?next - num)
    :precondition (and 
        (at_lift ?lift ?cur)
        (next ?next ?cur)
    )
    :effect (and 
        (not (at_lift ?lift ?cur ))
        (at_lift ?lift ?next)
        
    )
)

(:action person_arise           ;board
    :parameters (?lift - elevator ?person - passenger ?floor - num)
    :precondition (and 
        (at_passenger ?person ?floor)
        (at_lift ?lift ?floor)
    )
    :effect (and 
        
        (not (at_passenger ?person ?floor))
        (arise ?person ?lift)
    )
)

(:action person_leave
    :parameters (?lift - elevator ?person - passenger ?floor - num)
    :precondition (and 
        (at_lift ?lift ?floor)
        (arise ?person ?lift)
    )
    :effect (and 
        (not (arise ?person ?lift))
        (at_passenger ?person ?floor)
    )
)

)



