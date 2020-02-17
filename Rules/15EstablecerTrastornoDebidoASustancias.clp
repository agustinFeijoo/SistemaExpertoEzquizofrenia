(defrule EstablecerTrastornoPsicoticoDebidoASustancias
(and
	(Paciente
		(CumpleCriterioA si)
	)
	(Paciente
		(Drogas si)
	)
	(Paciente
		(PoseeTrastorno no)
	)
	(or
		(Sintomas
			(IdeasDelirantes si)
		)
		(Sintomas
			(Alucinaciones si)
		)
	)
	(or
		(Sintomas
			(DuracionSintoma ?DSintoma & :(> ?DSintoma 15) & :(< ?DSintoma 30))		
		)	
		(Psicotico
			(EfectoExcesivo si)
		)
	)
	(Psicotico
		(ConcienteDeAlucinacionesPorSustancia no)
	)	
	(Esquizofrenia
		(Presenta no)
	)
	
)
	=>
	(assert 
		(Psicotico
			(TrastornPsicoticoDebidoASustancias si)
		)
	)
)