(defrule EstablecerTrastornoPsicoticoCompartido
(and
	(Paciente
		(CumpleCriterioA no)
	)
	(Paciente
		(Limpio si)
	)
	(Paciente
		(PoseeTrastorno si)
	)
	(Sintomas
		(IdeasDelirantes si)
	)
	(Psicotico
		(PersonaCercanaConCondicion si)
	)
	(Psicotico
		(MismaCondicionQuePersona si)
	)	
	
)
	=>
	(assert 
		(Psicotico
			(TrastornoPsicoticoCompartido si)
		)
		(Paciente
			(PoseeTrastorno si)
		)
	)
)