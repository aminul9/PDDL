(define (domain philosopher_domain)
    (:requirements :strips :typing)

    (:types
        philosopher
        fork
    )


    (:predicates
        (thinking ?p - philosopher)
        (wait_left_fork ?p - philosopher)
        (eating ?p - philosopher)
        (hold_right_fork ?p - philosopher)
        (free ?f - fork)
        (taken ?f - fork)

        (is_right_fork ?p - philosopher ?f - fork)
        (is_left_fork ?p - philosopher ?f - fork)

        (deadlocked ?p - philosopher)
        (normal)
    )

    (:action pick_up_right
        :parameters (?p - philosopher ?f - fork)
        :precondition (and (is_right_fork ?p ?f)
                            (thinking ?p)
                            (free ?f)
                            (normal))
        :effect (and (not (thinking ?p))
                    (wait_left_fork ?p)
                    (not (free ?f))
                    (taken ?f))
    )
    (:action pick_up_left
        :parameters (?p - philosopher ?f - fork)
        :precondition (and (is_left_fork ?p ?f)
                    (wait_left_fork ?p)
                    (free ?f)
                    (normal))
    :effect (and (not (wait_left_fork ?p))
                (eating ?p)
                (not (free ?f))
                (taken ?f))
    )
    (:action put_down_left
         :parameters (?p - philosopher ?f - fork)
         :precondition (and (is_left_fork ?p ?f)
            (eating ?p)
            (taken ?f)
            (normal))
         :effect (and (not (eating ?p))
            (hold_right_fork ?p)
            (not (taken ?f))
            (free ?f))
    )

    (:action put_down_right
        :parameters (?p - philosopher ?f - fork)
        :precondition (and (is_right_fork ?p ?f)
                            (hold_right_fork ?p)
                            (taken ?f)
                            (normal))
        :effect (and (not (hold_right_fork ?p))
                            (thinking ?p)
                            (not (taken ?f))
                            (free ?f))
    )

    (:action deadlock_right
        :parameters (?p - philosopher ?f - fork)
        :precondition (and (is_right_fork ?p ?f)
                            (thinking ?p)
                            (taken ?f)
                            (normal))
        :effect (and (not (normal))
                    (deadlocked ?p))
    )
    (:action deadlock_left
        :parameters (?p - philosopher ?f - fork)
        :precondition (and (is_left_fork ?p ?f)
                            (wait_left_fork ?p)
                            (taken ?f)
                            (normal))
        :effect (and (not (normal))
                    (deadlocked ?p))
    )

)
