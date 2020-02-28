(defrule EstablecerTrastornoDelirante
(declare (salience 700))
(and
?Paciente<-(Paciente
		(PoseeTrastorno nil)
		(CumpleCriterioA ?CritA&~si)
		(Limpio si)
		)
	(Sintomas
		(IdeasDelirantes si)
		(TipoIdeasDelirantes LEVES)
		(DuracionSintoma ?DSintoma & :(> ?DSintoma 30))
		(DisfuncionSocial ?Disf&~si)
		(ComportamientoDesorganizado ?ComDesor&~si)
	)

	(or
			(Sintomas (EpisodiosAnimicos ?Epi&~si))
			(and
				(Sintomas (EpisodiosAnimicos si)
					(DuracionEpisodio BREVE))
			)
		)

	?Psicotico <- (Psicotico (TrastornoDelirante ?TDel&~si))	
)
=>
	(modify ?Psicotico (TrastornoDelirante si))
	(modify ?Paciente (PoseeTrastorno si))
)