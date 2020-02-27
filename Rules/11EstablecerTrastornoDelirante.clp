(defrule EstablecerTrastornoDelirante
(and
?Paciente<-(Paciente
		(PoseeTrastorno nil)
		(CumpleCriterioA no)
		(Limpio si)
	)
	(Sintomas
		(IdeasDelirantes si)
		(TipoIdeasDelirantes LEVES)
		(DuracionSintoma ?DSintoma & :(> ?DSintoma 30))
		(DisfuncionSocial ?Disf&~si)
		(ComportamientoDesorganizado ?ComDesor&~si)
	)
?Psicotico <- (Psicotico (TrastornoDelirante ?TDel&~si))	
)
	=>
	(modify ?Psicotico (TrastornoDelirante si))
	(modify ?Paciente (PoseeTrastorno si))
)