(defrule EstablecerTrastornoEsquizoafectivo
(and
?Paciente<-(Paciente
		(PoseeTrastorno nil)
		(CumpleCriterioA si)
		(Limpio si)
	)
	(Sintomas
		(IdeasDelirantes si)
		(SintomasNegativos ?SinNeg&~si)
		(DuracionSintoma ?DSintoma & :(> ?DSintoma 15) & :(< ?DSintoma 30))
		(EpisodiosAnimicos si)
	)
?Psicotico <- (Psicotico (TrastornoEsquizoafectivo ?TEsq&~si))
	
)
	=>
	(modify ?Psicotico (TrastornoEsquizoafectivo si))
	(modify ?Paciente (PoseeTrastorno si))
)