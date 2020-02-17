(defrule EstablecerSintomasEsquizofrenia
(and
	(or
	(Sintomas

		(DisfuncionSocial si)
		(TrastornoDesarrollo si)
		(EpisodiosAnimicos si)
	)
	(Sintomas
		(DisfuncionSocial si)
		(TrastornoDesarrollo si)
		(DuracionEpisodio breve)
	))
	(Paciente
		(CumpleCriterioA si) 
		(Duracion ?d & :(< ?d 6))
		(Limpio si)
	)
)
	=>
	(assert (Esquizofrenia (Presenta si))))