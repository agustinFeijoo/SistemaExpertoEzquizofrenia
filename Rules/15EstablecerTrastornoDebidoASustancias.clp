(defrule EstablecerTrastornoPsicoticoDebidoASustancias
(declare (salience 500))
(and
?Paciente<-(Paciente
		(CumpleCriterioA si)
		(Limpio ?Limpi&~si)
		(Drogas si)
		(PoseeTrastorno ?PTras&~si)
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
?Psicotico <- (Psicotico
		(ConcienteDeAlucinacionesPorSustancia ?Conc&~si)
		(TrastornoPsicoticoDebidoASustancias ?TComp&~si)
	)	
	(Esquizofrenia
		(Presenta ?Pres&~si)
	)
	
)
	=>
	(modify ?Psicotico (TrastornoPsicoticoDebidoASustancias si))
	(modify ?Paciente (PoseeTrastorno si))
)