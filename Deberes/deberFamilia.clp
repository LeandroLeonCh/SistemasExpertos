         CLIPS (6.31 6/12/19)
CLIPS> (defrule progenitor 
(padre-de ?padre ?hijo)
(marido-de ?padre ?madre)
=>
(assert (progenitor-de ?madre ?hijo))
)
CLIPS> (defrule esposa
(marido-de ?hombre ?mujer)
=>
(assert (esposa-de ?mujer ?hombre))
(printout t ?mujer " es esposa de " ?hombre crlf ))
CLIPS> (defrule padre 
(progenitor-de ?padre ?hijo)
(hombre ?padre)
=>
(assert (padre-de ?padre ?hijo))
(printout t ?padre " es padre de " ?hijo  crlf)
)
CLIPS> (defrule esposa
(marido-de ?hombre ?mujer)
=>
(assert (esposa-de ?mujer ?hombre))
(printout t ?mujer " es esposa de " ?hombre crlf))
CLIPS> CLIPS> (defrule madre
(progenitor-de ?madre ?hijo)
(mujer ?madre)
=>
(assert (madre-de ?madre ?hijo))
(printout t ?madre " es madre de " ?hijo crlf)
)CLIPS>
CLIPS> (defrule madre
(progenitor-de ?madre ?hijo)
(mujer ?madre)
=>
(assert (madre-de ?madre ?hijo))
(printout t ?madre " es madre de " ?hijo crlf))
CLIPS> (defrule abuelos
(progenitor-de ?padre ?hijo)
(progenitor-de ?hijo ?nieto)
=>
(assert (abuelos-de ?padre ?nieto))
)
CLIPS> (defrule abuelo
(abuelos-de ?padre ?nieto)
(hombre ?padre)
=>
(assert (abuelo-de ?padre ?nieto))
(printout t ?padre "  es abuelo de " ?nieto crlf))
CLIPS> (defrule abuela
(abuelos-de ?madre ?nieto)
(mujer ?madre)
=>
(assert (abuela-de ?madre ?nieto))
(printout t ?madre " es abuela de  " ?nieto crlf))
CLIPS> (defrule hermanos
(progenitor-de ?padre ?hijo)
(progenitor-de ?padre ?hijo1)
(test  (neq ?hijo ?hijo1))
=>
(assert (hermanos ?hijo ?hijo1))
)
CLIPS> (defrule hermanos-madre
(progenitor-de ?madre ?hijo)
(progenitor-de ?madre ?hijo1)
(test  (neq ?hijo ?hijo1))
=>
(assert (hermanos ?hijo ?hijo1))
)
CLIPS> (defrule hermano
(hermanos ?hijo ?hijo1)
(hombre ?hijo)
=>
(assert (hermano-de ?hijo ?hijo1))
(printout t ?hijo " es hermano de " ?hijo1 crlf ))
CLIPS> (defrule hermana
(hermanos ?hijo ?hijo1)
(mujer ?hijo)
=>
(assert (hermana-de ?hijo >hijo1))
(printout t ?hijo "  es hermana de " ?hijo1))
CLIPS> (defrule tios
(progenitor-de ?padre ?hijo)
(hermanos ?padre ?hermano)
=>
(assert (tios ?hermano ?hijo))
)
CLIPS> (defrule tio 
(tios ?tio ?sobrino)
(hombre ?tio)
=>
(assert (tio-de ?tio ?sobrino))
(printout t ?tio " es tio de " ?sobrino crlf))
CLIPS> (defrule tia 
(tios ?tia ?sobrino)
(mujer ?tia)
=>
(assert (tia-de ?tia ?sobrino))
(printout t ?tia " es tia de " ?sobrino crlf))
CLIPS> (defrule sobrino
(tios ?tios ?sobrino)
(hombre ?sobrino)
=>
(assert (sobrino-de ?sobrino ?tios))
(printout t ?sobrino "  es sobrino de " ?tios crlf))
CLIPS> (defrule sobrina
(tios ?tios ?sobrina)
(mujer ?sobrina)
=>
(assert (sobrina-de ?sobrina ?tios))
(printout t ?sobrina "  es sobrina de " ?tios crlf))
CLIPS> (deffacts inicio
(hombre Ricardo)
(muer Fabiola)
(hombre Andres)
(mujer Rosa)
(mujer Maria)
(hombre Mario)
(mujer Irene)
(hombre David)
(hombre Alejandro)
(hombre Luis)
(hombre Enrique)
(progenitor-de Ricardo David)
(progenitor-de Ricardo Alejandro)
(progenitor-de Ricardo Mario)
(marido-de Ricardo Fabiola)
(progenitor-de David Luis)
(marido-de David Rosa)
)
CLIPS> (reset)
CLIPS> (run)
Rosa es esposa de David
David es padre de Luis
Rosa es madre de Luis
Ricardo  es abuelo de Luis
Fabiola es esposa de Ricardo
Ricardo es padre de Mario
Mario es hermano de Alejandro
Mario es hermano de David
David es hermano de Mario
Mario es tio de Luis
Luis  es sobrino de Mario
Alejandro es hermano de Mario
Ricardo es padre de Alejandro
Alejandro es hermano de David
David es hermano de Alejandro
Alejandro es tio de Luis
Luis  es sobrino de Alejandro
Ricardo es padre de David
CLIPS> (defrule madre
(progenitor-de ?madre ?hijo)
(mujer ?madre)
=>
(assert (madre-de ?madre ?hijo))
(printout t ?madre " es madre de " ?hijo crlf))
CLIPS> (reset)
CLIPS> (fatcs)

[EXPRNPSR3] Missing function declaration for fatcs.
CLIPS> (facts)
f-0     (initial-fact)
f-1     (hombre Ricardo)
f-2     (muer Fabiola)
f-3     (hombre Andres)
f-4     (mujer Rosa)
f-5     (mujer Maria)
f-6     (hombre Mario)
f-7     (mujer Irene)
f-8     (hombre David)
f-9     (hombre Alejandro)
f-10    (hombre Luis)
f-11    (hombre Enrique)
f-12    (progenitor-de Ricardo David)
f-13    (progenitor-de Ricardo Alejandro)
f-14    (progenitor-de Ricardo Mario)
f-15    (marido-de Ricardo Fabiola)
f-16    (progenitor-de David Luis)
f-17    (marido-de David Rosa)
For a total of 18 facts.
CLIPS> (deffacts inicio
(hombre Ricardo)
(mujer Fabiola)
(hombre Andres)
(mujer Rosa)
(mujer Maria)
(hombre Mario)
(mujer Irene)
(hombre David)
(hombre Alejandro)
(hombre Luis)
(hombre Enrique)
(progenitor-de Ricardo David)
(progenitor-de Ricardo Alejandro)
(progenitor-de Ricardo Mario)
(marido-de Ricardo Fabiola)
(progenitor-de David Luis)
(marido-de David Rosa)
)
CLIPS> (reset)
CLIPS> (run)
Rosa es esposa de David
David es padre de Luis
Rosa es madre de Luis
Ricardo  es abuelo de Luis
Fabiola es esposa de Ricardo
Ricardo es padre de Mario
Fabiola es madre de Mario
Mario es hermano de Alejandro
Mario es hermano de David
David es hermano de Mario
Mario es tio de Luis
Luis  es sobrino de Mario
Alejandro es hermano de Mario
Ricardo es padre de Alejandro
Fabiola es madre de Alejandro
Alejandro es hermano de David
David es hermano de Alejandro
Alejandro es tio de Luis
Luis  es sobrino de Alejandro
Ricardo es padre de David
Fabiola es abuela de  Luis
Fabiola es madre de David
CLIPS> (defrule visabuelos
(progenitor-de ?padre ?hijo)
(progenitor-de ?hijo ?nieto)
(progenitor-de ?nieto ?visnieto)
=>
(assert (visabuelos-de ?padre ?visnieto))
)
CLIPS> (defrule visabuelo
(visabuelos-de ?padre ?visnieto)
(hombre ?padre)
=>
(assert (visabuelo-de ?padre ?visnieto))
(printout t ?padre " es VISabuelo de " ?visnieto crlf))
CLIPS> (deffacts inicio
(hombre Ricardo)
(mujer Fabiola)
(hombre Andres)
(mujer Rosa)
(mujer Maria)
(hombre Mario)
(hombre PEDRO)
(hombre Leon)
(mujer Irene)
(hombre David)
(hombre Alejandro)
(hombre Luis)
(hombre Enrique)
(progenitor-de Ricardo David)
(progenitor-de Ricardo Alejandro)
(progenitor-de Ricardo Mario)
(marido-de Ricardo Fabiola)
(progenitor-de David Luis)
(marido-de David Rosa)
(progenitor-de Mario PEDRO)
(progenitor-de Luis Leon)
)
CLIPS> (reset)
CLIPS> (run)
Luis es padre de Leon
David  es abuelo de Leon
Ricardo es VISabuelo de Leon
Mario es padre de PEDRO
Ricardo  es abuelo de PEDRO
Rosa es esposa de David
David es padre de Luis
Rosa es abuela de  Leon
Rosa es madre de Luis
Ricardo  es abuelo de Luis
Fabiola es esposa de Ricardo
Ricardo es padre de Mario
Fabiola es abuela de  PEDRO
Fabiola es madre de Mario
Mario es hermano de Alejandro
Alejandro es tio de PEDRO
PEDRO  es sobrino de Alejandro
Mario es hermano de David
David es tio de PEDRO
PEDRO  es sobrino de David
David es hermano de Mario
Mario es tio de Luis
Luis  es sobrino de Mario
Alejandro es hermano de Mario
Ricardo es padre de Alejandro
Fabiola es madre de Alejandro
Alejandro es hermano de David
David es hermano de Alejandro
Alejandro es tio de Luis
Luis  es sobrino de Alejandro
Ricardo es padre de David
Fabiola es abuela de  Luis
Fabiola es madre de David
CLIPS> (defrule primos
(progenitor-de ?padre ?hijo)
(hermanos ?padre ?hermano)
(progenitor ?hermano ?hijo1)
=>
(assert (primos ?hijo ?hijo1))
)
CLIPS> (defrule primo
(primos ?hijo ?hijo1)
(hombre hijo)
=>
(assert (primo-de ?hijo ?hijo1))
(printout t ?hijo " ES PRIMO DE " ?hijo2))

[PRCCODE3] Undefined variable hijo2 referenced in RHS of defrule.

ERROR:
(defrule MAIN::primo
   (primos ?hijo ?hijo1)
   (hombre hijo)
   =>
   (assert (primo-de ?hijo ?hijo1))
   (printout t ?hijo " ES PRIMO DE " ?hijo2))
CLIPS> (defrule primo
(primos ?hijo ?hijo1)
(hombre hijo)
=>
(assert (primo-de ?hijo ?hijo1))
(printout t ?hijo " ES PRIMO DE " ?hijo1 crlf))
CLIPS> (reset)
CLIPS> (run)
Luis es padre de Leon
David  es abuelo de Leon
Ricardo es VISabuelo de Leon
Mario es padre de PEDRO
Ricardo  es abuelo de PEDRO
Rosa es esposa de David
David es padre de Luis
Rosa es abuela de  Leon
Rosa es madre de Luis
Ricardo  es abuelo de Luis
Fabiola es esposa de Ricardo
Ricardo es padre de Mario
Fabiola es abuela de  PEDRO
Fabiola es madre de Mario
Mario es hermano de Alejandro
Alejandro es tio de PEDRO
PEDRO  es sobrino de Alejandro
Mario es hermano de David
David es tio de PEDRO
PEDRO  es sobrino de David
David es hermano de Mario
Mario es tio de Luis
Luis  es sobrino de Mario
Alejandro es hermano de Mario
Ricardo es padre de Alejandro
Fabiola es madre de Alejandro
Alejandro es hermano de David
David es hermano de Alejandro
Alejandro es tio de Luis
Luis  es sobrino de Alejandro
Ricardo es padre de David
Fabiola es abuela de  Luis
Fabiola es madre de David
CLIPS> (rules)
progenitor
padre
esposa
abuelos
abuelo
abuela
hermanos
hermanos-madre
hermano
hermana
tios
tio
tia
sobrino
sobrina
madre
visabuelos
visabuelo
primos
primo
For a total of 20 defrules.
CLIPS> (defrule primos
(progenitor-de ?padre ?hijo)
(hermanos ?padre ?hermano)
(progenitor-de ?hermano ?hijo1)
=>
(assert (primos ?hijo ?hijo1))
)
CLIPS> (reset)
CLIPS> (run)
Luis es padre de Leon
David  es abuelo de Leon
Ricardo es VISabuelo de Leon
Mario es padre de PEDRO
Ricardo  es abuelo de PEDRO
Rosa es esposa de David
David es padre de Luis
Rosa es abuela de  Leon
Rosa es madre de Luis
Ricardo  es abuelo de Luis
Fabiola es esposa de Ricardo
Ricardo es padre de Mario
Fabiola es abuela de  PEDRO
Fabiola es madre de Mario
Mario es hermano de Alejandro
Alejandro es tio de PEDRO
PEDRO  es sobrino de Alejandro
Mario es hermano de David
David es tio de PEDRO
PEDRO  es sobrino de David
David es hermano de Mario
Mario es tio de Luis
Luis  es sobrino de Mario
Alejandro es hermano de Mario
Ricardo es padre de Alejandro
Fabiola es madre de Alejandro
Alejandro es hermano de David
David es hermano de Alejandro
Alejandro es tio de Luis
Luis  es sobrino de Alejandro
Ricardo es padre de David
Fabiola es abuela de  Luis
Fabiola es madre de David
CLIPS> (defrule primos
(progenitor-de ?padre ?hijo)
(progenitor-de ?hermano ?hijo1)
(hermanos ?padre ?hermano)
=>
(assert (primos ?hijo ?hijo1))
)
CLIPS> (reset)
CLIPS> (rles)

[EXPRNPSR3] Missing function declaration for rles.
CLIPS> (rules)
progenitor
padre
esposa
abuelos
abuelo
abuela
hermanos
hermanos-madre
hermano
hermana
tios
tio
tia
sobrino
sobrina
madre
visabuelos
visabuelo
primo
primos
For a total of 20 defrules.
CLIPS> (run)
Luis es padre de Leon
David  es abuelo de Leon
Ricardo es VISabuelo de Leon
Mario es padre de PEDRO
Ricardo  es abuelo de PEDRO
Rosa es esposa de David
David es padre de Luis
Rosa es abuela de  Leon
Rosa es madre de Luis
Ricardo  es abuelo de Luis
Fabiola es esposa de Ricardo
Ricardo es padre de Mario
Fabiola es abuela de  PEDRO
Fabiola es madre de Mario
Mario es hermano de Alejandro
Alejandro es tio de PEDRO
PEDRO  es sobrino de Alejandro
Mario es hermano de David
David es tio de PEDRO
PEDRO  es sobrino de David
David es hermano de Mario
Mario es tio de Luis
Luis  es sobrino de Mario
Alejandro es hermano de Mario
Ricardo es padre de Alejandro
Fabiola es madre de Alejandro
Alejandro es hermano de David
David es hermano de Alejandro
Alejandro es tio de Luis
Luis  es sobrino de Alejandro
Ricardo es padre de David
Fabiola es abuela de  Luis
Fabiola es madre de David
CLIPS> (defrule primo
(primos ?hijo ?hijo1)
(hombre ?hijo)
=>
(assert (primo-de ?hijo ?hijo1))
(printout t ?hijo " ES PRIMO DE " ?hijo1 crlf))
CLIPS> (reset)
CLIPS> (run)
Luis es padre de Leon
David  es abuelo de Leon
Ricardo es VISabuelo de Leon
Mario es padre de PEDRO
Ricardo  es abuelo de PEDRO
Rosa es esposa de David
David es padre de Luis
Rosa es abuela de  Leon
Rosa es madre de Luis
Ricardo  es abuelo de Luis
Fabiola es esposa de Ricardo
Ricardo es padre de Mario
Fabiola es abuela de  PEDRO
Fabiola es madre de Mario
Mario es hermano de Alejandro
Alejandro es tio de PEDRO
PEDRO  es sobrino de Alejandro
Mario es hermano de David
David es tio de PEDRO
PEDRO  es sobrino de David
PEDRO ES PRIMO DE Luis
David es hermano de Mario
Mario es tio de Luis
Luis  es sobrino de Mario
Luis ES PRIMO DE PEDRO
Alejandro es hermano de Mario
Ricardo es padre de Alejandro
Fabiola es madre de Alejandro
Alejandro es hermano de David
David es hermano de Alejandro
Alejandro es tio de Luis
Luis  es sobrino de Alejandro
Ricardo es padre de David
Fabiola es abuela de  Luis
Fabiola es madre de David
CLIPS> (defrule primos
(progenitor-de ?padre ?hijo)
(progenitor-de ?padre1 ?hijo1)
(hermanos ?padre ?padre1)
=>
(assert (primos ?hijo ?hijo1))
)
------------------------------
(defrule primo
(primos ?hijo ?hijo1)
(hombre ?hijo)
=>
(assert (primo-de ?hijo ?hijo1))
(printout t ?hijo " ES PRIMO DE " ?hijo1 crlf))CLIPS> 
