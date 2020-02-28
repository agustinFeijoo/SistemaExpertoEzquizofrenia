(defrule EstablecerEsquizofreniaTipoDesorganizado
(declare (salience 900))
(and
	(Sintomas
		(LenguajeDesorganizado si)
		(ComportamientoCatatonico ?ComCat&~si)
		(ComportamientoDesorganizado si)
		(AplanamientoAfectivo si)
	)
	(TipoCatatonico
		(Presenta ?Pres&~si)
	)
	(Esquizofrenia
		(Presenta si)
	)

?TDesor <- (TipoDesorganizado (Presenta ?Pres&~si))
)
	=>
	(modify ?TDesor	(Presenta si))

)