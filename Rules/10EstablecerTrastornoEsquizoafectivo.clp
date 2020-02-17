(defrule EstablecerTrastornoEsquizoafectivo
(and
	(Paciente
		(CumpleCriterioA si)
	)
	(Paciente
		(Limpio si)
	)
	(Sintomas
		(IdeasDelirantes si)
	)
	(Sintomas
		(SintomasNegativos no)
	)
	(Sintomas
		(DuracionSintoma ?DSintoma & :(> ?DSintoma 15) & :(< ?DSintoma 30))		
	)	
	(Sintomas
		(EpisodiosAnimicos si)
	)
	
)
	=>
	(assert 
		(Psicotico
			(TrastornoEsquizoafectivo si)
		)
		(Paciente
			(PoseeTrastorno si)
		)
	)
)