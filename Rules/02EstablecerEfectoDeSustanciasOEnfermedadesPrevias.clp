(defrule EstablecerEfectoSustanciasOEnfermedadesPrevias
   	
	?Paciente <- (Paciente (Enfermedad ?enf)
				(Drogas ?dro))
		
=>
	(if ((eq ?enf si)|(eq ?dro si)) 
	then
		(modify ?Paciente (Limpio no))
	
	else (modify ?Paciente (Limpio si))
	)