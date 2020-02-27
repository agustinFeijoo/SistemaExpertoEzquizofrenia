(defrule EstablecerEsquizofreniaTipoDesorganizado
(and
	(Sintomas
		(LenguajeDesorganizado si)
		(ComportamientoCatatonico ?ComCat&~si)
		(ComportamientoDesorganizado si)
		(AplanamientoAfectivo si)
	)
	(TipoCatatonico
		(Presenta si)
	)
	(Esquizofrenia
		(Presenta si)
	)

?TDesor <- (TipoDesorganizado (Presenta ?Pres&~si))
)
	=>
	(modify ?TDesor	(Presenta si))

)