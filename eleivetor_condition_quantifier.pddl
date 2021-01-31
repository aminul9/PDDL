(:action load
:parameters (?floor - num ?lift - elevator) 
:precondition (and (lift-at ?lift ?floor)) 
:effect (and (when (passenger-at p1 ?floor))
                  (and (not (passenger-at p1 ?floor))
                     (boarded p1 ?lift)))
            (when (passenger-at p2 ?floor)
                 (and (not (passenger-at p2 ?floor))
                     (boarded p2 ?lift)))
            (when (passenger-at p3 ?floor)
               (and (not (passenger-at p3 ?floor))
                    (boarded p3 ?lift)))
)



(:action unload
:parameters (?floor - num ?lift - elevator) 
:precondition (and (lift-at ?lift ?floor)) 
:effect (and (when (boarded p1 ?lift))
             (and (passenger-at p1 ?floor)
                (not (boarded p1 ?lift))))

        (when (boarded p2 ?lift)
           (and (passenger-at p2 ?floor)
             (not (boarded p2 ?lift)))) 
        (when (boarded p3 ?lift)
             (and (passenger-at p3 ?floor)
              (not (boarded p3 ?lift))))
)
 ;----------------------------------
     (:action load
        :parameters (?floor - num ?lift - elevator) 
        :precondition (and (lift-at ?lift ?floor))
        :effect (and
         (forall (?person - passenger))
                (when (passenger-at ?person ?floor)
                    (and (not (passenger-at ?person ?floor))
                            (boarded ?person ?lift)))
        
        )
    )

    (:action unload
         :parameters (?floor - num ?lift - elevator) 
         :precondition (and (lift-at ?lift ?floor)) 
         :effect (and 
            (forall (?person - passenger)
                (when (boarded ?person ?lift)
                    (and (passenger-at ?person ?floor)
                        (not (boarded ?person ?lift)))))
        )

    )
    
    
    
    
    
    
    
    
    
