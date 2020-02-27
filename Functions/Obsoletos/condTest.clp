(defrule Conditionals

	
	(Sintomas
		(SintomasNegativos ?Sin)
		(CantidadSintomas ?CSin)
	)
	(test (eq ?Sin si))

	=> 


	(assert (Sintomas (CantidadSintomas (+ ?CSin 1))))
)