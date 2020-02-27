(defrule EstablecerTrastornoPsicoticoCompartido
(and
?Paciente<-(Paciente
		(CumpleCriterioA no)
		(Limpio si)
		(PoseeTrastorno ?PTras&~si)
	)
	(Sintomas
		(IdeasDelirantes si)
	)
?Psicotico <- (Psicotico
		(PersonaCercanaConCondicion si)
		(MismaCondicionQuePersona si)
		(TrastornoPsicoticoCompartido ?TComp&~si)
	)	
	
)
	=>
	(modify ?Psicotico (TrastornoPsicoticoCompartido si))
	(modify ?Paciente (PoseeTrastorno si))
)