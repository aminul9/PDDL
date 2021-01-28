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
   (at ?t - truck ?l - location)
   (free_capacity ?t - truck ?q - quantity)
   (demand_chilled_goods ?l - location ?q - quantity)
   (demand_ambient_goods ?l - location ?q - quantity)
   (plus1 ?q1 ?q2 - quantity)
   )


  (:action deliver_ambient
   :parameters (?t - truck ?l - location
		?d ?d_less_one ?c ?c_less_one - quantity)
		
   :precondition (and (at ?t ?l)
		      (demand_ambient_goods ?l ?d)
		      (free_capacity ?t ?c)
		      (plus1 ?d_less_one ?d)  
		      (plus1 ?c_less_one ?c))
		      
   :effect (and (not (demand_ambient_goods ?l ?d))
		(demand_ambient_goods ?l ?d_less_one)
		(not (free_capacity ?t ?c))
		(free_capacity ?t ?c_less_one))
   )

  (:action deliver_chilled
  
   :parameters (?t - refrigerated_truck ?l - location
		?d ?d_less_one ?c ?c_less_one - quantity)
		
   :precondition (and (at ?t ?l)
		      (demand_chilled_goods ?l ?d)
		      (free_capacity ?t ?c)
		      (plus1 ?d_less_one ?d)  
		      (plus1 ?c_less_one ?c))  
		      
   :effect (and (not (demand_chilled_goods ?l ?d))
		(demand_chilled_goods ?l ?d_less_one)
		(not (free_capacity ?t ?c))
		(free_capacity ?t ?c_less_one))
   )

  (:action drive
   :parameters (?t - truck ?from ?to - location)
   :precondition (at ?t ?from)
   :effect (and (not (at ?t ?from))
		(at ?t ?to))
   )

  )
