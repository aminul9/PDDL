;; The first formulation of the linehaul domain (with types, without costs),
;; from Chapter 2.
;; VAL@github syntax checker: no errors, no warnings.

(define (domain linehaul_without_costs)
  (:requirements :strips :typing)

  (:types
   location truck quantity - object
   refrigerated_truck - truck
   )



  (:predicates
   
   (demand_ambient_goods ?l - location ?q - quantity)
   (plus1 ?q1 ?q2 - quantity)
   )


  (:action deliver_ambient
   :parameters (
                ?l - location
		        ?d ?d_less_one  - quantity)
		
   :precondition (and 
		      (demand_ambient_goods ?l ?d)
		      (plus1 ?d_less_one ?d)  
		      )
		      
   :effect (and (not (demand_ambient_goods ?l ?d))
		(demand_ambient_goods ?l ?d_less_one)
	
		)
   )


  )
