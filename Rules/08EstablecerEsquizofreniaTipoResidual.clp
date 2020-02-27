(defrule EstablecerEsquizofreniaTipoResidual
(and
	(Paciente
		(CumpleCriterioA si)
	)
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