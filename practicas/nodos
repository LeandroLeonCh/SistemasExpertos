         CLIPS (6.31 6/12/19)
CLIPS> (defrule r1
(A)
=>
(assert(E))
)
CLIPS> (defrule r2
(B)
=>
(assert(D))
)
CLIPS> (defrule r3
(H)
=>
(assert(A))
)
CLIPS> (defrule r4
(and (E) (G))
=>
(assert(C))
)
CLIPS> (defrule r5
(and (E) (K))
=>
(assert (B))
)
CLIPS> (defrule r6
(and (E) (K) (D))
=>
(assert (C))
)
CLIPS> 
(defrule r7
(and (G) (K) (E))
=>
(assert (A))
)
CLIPS> (reset)
CLIPS> (run)
CLIPS> (rules)
r1
r2
r3
r4
r5
r6
r7
For a total of 7 defrules.
CLIPS> (deffacts hechos-iniciales
(H)
(K))
CLIPS> (reset)
CLIPS> (run)
CLIPS> (facts)
f-0     (initial-fact)
f-1     (H)
f-2     (K)
f-3     (A)
f-4     (E)
f-5     (B)
f-6     (D)
f-7     (C)
For a total of 8 facts.
CLIPS> 
