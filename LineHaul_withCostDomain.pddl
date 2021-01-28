(define (domain linehaul_without_costs)
    (:requirements :strips :typing)
    
    
  (:types
   location truck quantity - object
   refrigerated_truck - truck
   )

    

    (:predicates
        (at ?t - truck ?l - location)
        (free-capacity ?t - truck ?q - quantity )
        (demand-chiled-good ?l -location ?q - quantity)
        (demand_ambient_goods ?l -location ?q - quantity)
        (plus1 ?q1 ?q2 - quantity )
    )
    
    
    (:functions
        (distance ?l1  ?l2 - location)
        (per_km_cost ?t - truck)
        (total-cost)
    )
        (:action drive
   :parameters (?t - truck  ?from ?t1 - location)
   :precondition (at ?t  ?from)
   :effect (and (not (at ?t  ?from))
		(at ?t  ?t1)
		(increase (total-cost) (* (distance ?from ?t1) (per_km_cost ?t))))
   )
    
    (:action  delivery-amibient
        :parameters (?t - truck ?l - location  ?d  ?d-less-one ?c ?c-less-one -quantity )
        :precondition (and (at ?t ?l)
                           (free-capacity ?t ?c)
                           (demand_ambient_goods ?l  ?d)
                           (plus1 ?d-less-one  ?d)
                           (plus1 ?c-less-one ?c)
                            )
        :effect (and
            (not (free-capacity ?t ?c))
            (free-capacity ?t ?c-less-one)
            (not (demand_ambient_goods ?l ?d))
            (demand_ambient_goods ?l ?d-less-one)
        )
    )




)
