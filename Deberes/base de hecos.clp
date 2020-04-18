         CLIPS (6.31 6/12/19)
CLIPS> (deffacts hechos-iniciales
(tiene-pelos)
(tiene-pesunias)
(tiene-rayas-negras)
)
CLIPS> 
(defrule mamifero-1
(tiene-pelos)
=>
(assert (es-mamifero))
)
(defrule mamifero-2
(da-leche)
=>
(assert (es_mamifero))
)

(defrule ungulado-1
(es-mamifero)
(tiene-pesunias)
=>
(assert (es-ungulado))
)
(defrule ungulado-2
(es-mamifero)
(rumia)
=>
(assert (es-ungulado))
)
(defrule jirafa
(es-ungulado)
(tiene-cuello-llargo)
=>
(assert (es-jirafa))
)
(defrule cebra
(es-ungulado)
(tiene-rayas-negras)
=>
(assert (es-cebra))
)CLIPS> (rules)
mamifero-1
For a total of 1 defrule.
CLIPS> (facts)
f-0     (initial-fact)
For a total of 1 fact.
CLIPS> (reset)
CLIPS> (run)
CLIPS> (facts)
f-0     (initial-fact)
f-1     (tiene-pelos)
f-2     (tiene-pesunias)
f-3     (tiene-rayas-negras)
f-4     (es-mamifero)
For a total of 5 facts.
CLIPS> (rules)
mamifero-1
For a total of 1 defrule.
CLIPS> (defrule mamifero-2
(da-leche)
=>
(assert (es_mamifero))
)
CLIPS> (restet)

[EXPRNPSR3] Missing function declaration for restet.
CLIPS> (reset)
CLIPS> (run)
CLIPS> (rules)
mamifero-1
mamifero-2
For a total of 2 defrules.
CLIPS> (defrule ungulado-1
(es-mamifero)
(tiene-pesunias)
=>
(assert (es-ungulado))
)
CLIPS> (defrule ungulado-2
(es-mamifero)
(rumia)
=>
(assert (es-ungulado))
)
CLIPS> (defrule jirafa
(es-ungulado)
(tiene-cuello-llargo)
=>
(assert (es-jirafa))
)
CLIPS> (defrule cebra
(es-ungulado)
(tiene-rayas-negras)
=>
(assert (es-cebra))
)
CLIPS> (reset)
CLIPS> (run)
CLIPS> (rules)
mamifero-1
mamifero-2
ungulado-1
ungulado-2
jirafa
cebra
For a total of 6 defrules.
CLIPS> (facts)
f-0     (initial-fact)
f-1     (tiene-pelos)
f-2     (tiene-pesunias)
f-3     (tiene-rayas-negras)
f-4     (es-mamifero)
f-5     (es-ungulado)
f-6     (es-cebra)
For a total of 7 facts.
CLIPS> 
