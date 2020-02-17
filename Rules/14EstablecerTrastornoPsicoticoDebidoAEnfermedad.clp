(defrule EstablecerTrastornoPsicoticoDebidoAEnfermedad
(and
	(Paciente
		(CumpleCriterioA no)
	)
	(Paciente
		(Enfermedad si)
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
	(Esquizofrenia
		(Presenta no)
	)
	(Psicotico
		(AlteracionesDuranteDelirum no)
	)	
	
)
	=>
	(assert 
		(Psicotico
			(TrastornoPsicoticoDebidoAEnfermedad si)
		)
	)
)