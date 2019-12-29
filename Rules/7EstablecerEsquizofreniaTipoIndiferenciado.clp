(defrule EstablecerEsquizofreniaTipoIndiferenciado
(and
	(Esquizofrenia
		(Presenta si)
	)
	(TipoParanoide
		(Presenta no)
	)
	(TipoDesorganizado
		(Presenta no)
	)
	(TipoCatatonico
		(Presenta no)
	)
)
	=>
	(assert (TipoIndiferenciado
			(Presenta si)
		)))