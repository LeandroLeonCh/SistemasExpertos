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
(printout t ?mujer " es esposa de " ?hombre))
CLIPS> (defrule padre 
(progenitor-de ?padre ?hijo)
(hombre ?padre)
=>
(assert (padre-de ?hijo ?padre))
(printout t ?padre " es padre de " ?hijo  crlf)
)
CLIPS> (defrule esposa
(marido-de ?hombre ?mujer)
=>
(assert (esposa-de ?mujer ?hombre))
(printout t ?mujer " es esposa de " ?hombre crlf))
CLIPS> (defrule madre
(progenitor-de ?madre ?hijo)
(mujer ?madre)
=>
(assert (madre-de ?madre ?hijo))
(printout t ?madre " es madre de " ?hijo crlf)
)
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
(printou t ?madre " es abuela de  " ?nieto crlf))

[EXPRNPSR3] Missing function declaration for printou.

ERROR:
(defrule MAIN::abuela
   (abuelos-de ?madre ?nieto)
   (mujer ?madre)
   =>
   (assert (abuela-de ?madre ?nieto))
   (printou
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
CLIPS> 
(defrule sobrino
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
CLIPS> (reset)
CLIPS> (run)
CLIPS> (rules)
progenitor
padre
esposa
madre
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
For a total of 16 defrules.
CLIPS> (deffacts inicio
(hombre Ricardo)
(muer Fabiola)
(hombre David)
(mujer Rosa)
(mujer Maria)
(hombre Andres)
(mujer Irene)
(hombre Mario)
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
Rosa es madre de Ricardo
Rosa es abuela de  Mario
Rosa es abuela de  Alejandro
Rosa es abuela de  David
CLIPS> CLIPS> (defrule madre
(progenitor-de ?madre ?hijo)
(mujer ?madre)
=>
(assert (madre-de ?hijo ?madre))
(printout t ?madre " es madre de " ?hijo crlf)
)CLIPS>
CLIPS> CLIPS> (defrule madre
(progenitor-de ?madre ?hijo)
(mujer ?madre)
=>
(assert (madre-de ?hijo ?madre))
(printout t ?madre " es madre de " ?hijo crlf)CLIPS>
CLIPS> CLIPS> (defrule madre
(progenitor-de ?madre ?hijo)
(mujer ?madre)
=>
(assert (madre-de ?hijo ?madre))CLIPS>
CLIPS> CLIPS> (defrule madre
(progenitor-de ?madre ?hijo)
(mujer ?madre)
=>CLIPS>
CLIPS> CLIPS> (defrule madre
(progenitor-de ?madre ?hijo)
(mujer ?madre)CLIPS>
CLIPS> CLIPS> (defrule madre
(progenitor-de ?madre ?hijo)CLIPS>
CLIPS> CLIPS> (defrule madre
(progenitor-de ?madre ?hijo)
(mujer ?madre)
=>
(assert (madre-de ?hijo ?madre))
(printout t ?madre " es madre de " ?hijo crlf)
)CLIPS>
CLIPS> CLIPS> (defrule esposa
(marido-de ?hombre ?mujer)
=>
(assert (esposa-de ?mujer ?hombre))
(printout t ?mujer " es esposa de " ?hombre crlf))
CLIPS>
CLIPS> CLIPS> (defrule madre
(progenitor-de ?madre ?hijo)
(mujer ?madre)
=>
(assert (madre-de ?madre ?hijo))
(printout t ?madre " es madre de " ?hijo crlf)
)CLIPS>
CLIPS> (reset)
CLIPS> (run)
Rosa es esposa de David
David es padre de Luis
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
Rosa es madre de Ricardo
Rosa es abuela de  Mario
Rosa es abuela de  Alejandro
Rosa es abuela de  David
CLIPS> 
