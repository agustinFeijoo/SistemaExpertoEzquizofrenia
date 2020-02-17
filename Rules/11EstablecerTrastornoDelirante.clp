(defrule EstablecerTrastornoDelirante
(and
	(Paciente
		(CumpleCriterioA no)
	)
	(Paciente
		(Limpio si)
	)
	(Sintomas
		(IdeasDelirantes si)
	)
	(Sintomas
		(TipoIdeasDelirantes LEVES)
	)
	(Sintomas
		(DuracionSintoma ?DSintoma & :(> ?DSintoma 30))
	)	
	(Sintomas
		(DisfuncionSocial no)
	)
	(Sintomas
		(ComportamientoDesorganizado no)
	)
	
)
	=>
	(assert 
		(Psicotico
			(TrastornoDelirante si)
		)
		(Paciente
			(PoseeTrastorno si)
		)
	)
)