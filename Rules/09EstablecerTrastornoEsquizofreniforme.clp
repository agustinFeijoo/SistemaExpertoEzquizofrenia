(defrule EstablecerTrastornoEsquizofreniforme
(declare (salience 700))
(and
?Paciente<-(Paciente
		(PoseeTrastorno nil)
		(CumpleCriterioA si)
		(Limpio si)
		(Duracion ?d & :(> ?d 1) & :(< ?d 6))
	)
	(Sintomas
		(DisfuncionSocial si)
		(TrastornoDesarrollo ?TDes&~si)
	)
	(or
		(Sintomas
			(EpisodiosAnimicos ?Epis&~si)
		)
		(Sintomas
			(DuracionEpisodio BREVE)
		)
	)
?Psicotico <- (Psicotico (TrastornoEsquizofreniforme ?TEsq&~si))
	
)
	=>
	(modify ?Psicotico (TrastornoEsquizofreniforme si))
	(modify ?Paciente (PoseeTrastorno si))
	
)