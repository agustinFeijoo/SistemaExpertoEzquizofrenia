(defrule EstablecerEsquizofreniaTipoDesorganizado
(and
	(Sintomas
		(LenguajeDesorganizado si)
		(ComportamientoCatatonico no)
		(ComportamientoDesorganizado si)
		(AplanamientoAfectivo si)
	)
	(TipoCatatonico
		(Presenta si)
	)
	(Esquizofrenia
		(Presenta si)
	)
)
	=>
	(assert
		(TipoDesorganizado
			(Presenta si)
		)))