(defrule EstablecerEsquizofreniaTipoResidual
(declare (salience 900))
(and
	(or
	(Sintomas
		(CantidadSintomas ?CSintomas & :(> ?CSintomas 1))
		(SintomasNegativos si)
	)
	)
?TResid  <-(TipoResidual
		(SintomasEsquizofreniaAtenuados si)
	)
)
	=>
	(modify ?TResid (Presenta si))
)