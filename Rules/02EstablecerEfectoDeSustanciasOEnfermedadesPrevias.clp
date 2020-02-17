(defrule EstablecerEfectoSustanciasOEnfermedadesPrevias
   	(or
	(Paciente
		(Enfermedad si))
	(Paciente
		(Drogas si))
	)		
=>
	(assert (Paciente
			(Limpio no))))