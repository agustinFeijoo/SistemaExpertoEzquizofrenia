(defrule EstablecerEsquizofreniaTipoCatatonico
(and
	(Esquizofrenia
		(Presenta si)
	)
	(TipoCatatonico
		(CantidadSintomas ?NSintomas & :(> ?NSintomas 1))
	)
)
	=>
	(assert (TipoCatatonico (Presenta si))))