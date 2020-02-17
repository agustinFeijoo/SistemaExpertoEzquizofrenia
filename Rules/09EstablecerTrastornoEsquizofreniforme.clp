(defrule EstablecerTrastornoEsquizofreniforme
(and
	(Paciente
		(CumpleCriterioA si)
	)
	(Paciente
		(Limpio si)
	)
	(Paciente
		(Duracion ?d & :(> ?d 1) & :(< ?d 6))
	)
	(Sintomas
		(DisfuncionSocial si)
	)
	(Sintomas
		(TrastornoDesarrollo no)
	)
	(or
		(Sintomas
			(EpisodiosAnimicos no)
		)
		(Sintomas
			(DuracionEpisodio BREVE)
		)
	)
)
	=>
	(assert 
		(Psicotico
			(TrastornoEsquizofreniforme si)
		)
		(Paciente
			(PoseeTrastorno si)
		)
	)
)