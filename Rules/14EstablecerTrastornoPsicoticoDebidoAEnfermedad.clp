(defrule EstablecerTrastornoPsicoticoDebidoAEnfermedad
(and
?Paciente<-(Paciente
		(CumpleCriterioA no)
		(Enfermedad si)
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
	(Esquizofrenia
		(Presenta no)
	)
?Psicotico <- (Psicotico
		(AlteracionesDuranteDelirum no)
		(TrastornoPsicoticoDebidoAEnfermedad ?TEnf&~si)
	)	
	
)
	=>
	(modify ?Psicotico (TrastornoPsicoticoDebidoAEnfermedad si))
	(modify ?Paciente (PoseeTrastorno si))
)