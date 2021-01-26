(define (problem KnightTourProblem-4x4)
    (:domain KnightTour)
    (:objects 
        A1 A2 A3 A4
        B1 B2 B3 B4
        C1 C2 C3 C4
        D1 D2 D3 D4)
    (:init 
        (at A4)
        (visited A4)
        (valid-move A4 B2)
        (valid-move A4 C3)
        (valid-move A3 B1)
        (valid-move A3 C2)
        (valid-move A2 C1)
        (valid-move A2 C3)
        (valid-move A1 B3)
        (valid-move A1 C2)
        
        
        
        (valid-move B1 A3)
        (valid-move B1 C3)
        (valid-move B1 D2)
        
        (valid-move B2 C4)
        (valid-move B2 A4)
        (valid-move B2 D1)
        (valid-move B2 D3)
        
        
        
        (valid-move B3 A1)
        (valid-move B3 C1)
        (valid-move B3 D2)
        (valid-move B3 D4)
        
        
        
        (valid-move B4 D3)
        (valid-move B4 A2)
        (valid-move B4 C2)
        
        
        (valid-move B4 C2)
        
        
        (valid-move C1 B3)
        (valid-move C1 D3)
        (valid-move C1 A2)
        
        
        (valid-move C2 A1)
        (valid-move C2 A3)
        (valid-move C2 B4)
        (valid-move C2 D4)
        
        
        (valid-move C3 A2)
        (valid-move C3 A4)
        (valid-move C3 B1)
        (valid-move C3 D1)
        
        
        (valid-move C4 A3)
        (valid-move C4 B2)
        (valid-move C4 D2)
        
        (valid-move D1 B2)
        (valid-move D1 C3)
        
        
        (valid-move D2 B1)
        (valid-move D2 B3)
        (valid-move D2 C4)
        
        (valid-move D3 B2)
        (valid-move D3 B4)
        (valid-move D3 C1)
        (valid-move D3 C1)
    )
    
    (:goal  (and (at A3)
                (visited A4)
                (visited B2)
                (visited D3)
                (visited C1)
                (visited A3)
            )
    )


)