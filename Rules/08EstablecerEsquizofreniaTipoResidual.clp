(defrule EstablecerEsquizofreniaTipoResidual
(and
	(Paciente
		(CumpleCriterioA si)
	)
	(Sintomas
		(CantidadSintomas ?CSintomas & :(> ?CSintomas 1))
	)
	(TipoResidual
		(SintomasEsquizofreniaAtenuados si)
	)
)
	=>
	(assert (TipoResidual
			(Presenta si)
		)))