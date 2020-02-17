(defrule EstablecerTrastornoPsicoticoBreve
(and
	(Paciente
		(CumpleCriterioA si)
	)
	(Paciente
		(Limpio si)
	)
	(Sintomas
		(SintomasNegativos no)
	)
	(Sintomas
		(DuracionSintoma ?DSintoma & :(< ?DSintoma 30))
	)	
	(Psicotico
		(RecuperacionTotal si)
	)
	
)
	=>
	(assert 
		(Psicotico
			(TrastornoPsicoticoBreve si)
		)
		(Paciente
			(PoseeTrastorno si)
		)
	)
)