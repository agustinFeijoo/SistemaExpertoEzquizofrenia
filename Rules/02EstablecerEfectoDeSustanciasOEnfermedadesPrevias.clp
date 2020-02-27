(defrule EstablecerEfectoSustanciasOEnfermedadesPrevias
   	(declare (salience 1000))
	?Paciente <- (Paciente (Enfermedad ?enf&~nil)
				(Drogas ?dro&~nil)
				(Limpio nil))
		
=>
	(if (or (eq ?enf si) (eq ?dro si)) 
	then
	(modify ?Paciente (Limpio no))
	
	else (modify ?Paciente (Limpio si))
	)
)