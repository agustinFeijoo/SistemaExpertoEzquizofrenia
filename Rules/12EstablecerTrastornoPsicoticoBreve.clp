(defrule EstablecerTrastornoPsicoticoBreve
(and
?Paciente<-(Paciente
		(PoseeTrastorno nil)
		(CumpleCriterioA si)
		(Limpio si)
	)
	(Sintomas
		(SintomasNegativos ?SinNeg&~si)
		(DuracionSintoma ?DSintoma & :(< ?DSintoma 30))
	)	
?Psicotico <-(Psicotico
		(RecuperacionTotal si)
		(TrastornoPsicoticoBreve ?TPsiBreve&~si)
		)
	
)
	=>
	(modify ?Psicotico (TrastornoPsicoticoBreve si))
	(modify ?Paciente (PoseeTrastorno si))
)