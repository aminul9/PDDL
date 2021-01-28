

(define (problem linehaul-example)
  (:domain linehaul_without_costs)

  (:objects
    BDouble - truck
    depot GV E BW - location
    n0 n1 n2 n3 n4 n5 n6 n7 n8 n9 n10 n11 n12 n13 n14 n15 n16 n17 n18 n19 n20 - quantity
    )

  (:init
    (demand_ambient_goods GV n7)
    (plus1 n0 n1)
    (plus1 n1 n2)
    (plus1 n2 n3)
    (plus1 n3 n4)
    (plus1 n4 n5)
    (plus1 n5 n6)
    (plus1 n6 n7)
    (plus1 n7 n8)
    (plus1 n8 n9)
    (plus1 n9 n10)
    (plus1 n10 n11)
    (plus1 n11 n12)
    (plus1 n12 n13)
    (plus1 n13 n14)
    (plus1 n14 n15)
    (plus1 n15 n16)
    (plus1 n16 n17)
    (plus1 n17 n18)
    (plus1 n18 n19)
    (plus1 n19 n20)

    )

  (:goal (and 
             (demand_ambient_goods GV n0)
             
              )
	 )
  )
