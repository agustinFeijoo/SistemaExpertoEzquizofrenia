(defrule EstablecerSintomasEsquizofrenia
(and
	(or
		(Sintomas

			(DisfuncionSocial si)
			(or
				(EpisodiosAnimicos no)
				(and
					(EpisodiosAnimicos si)
					(DuracionEpisodio breve)
				)
			)

			(or
				(TrastornoDesarrollo no)	
				(and
					(TrastornoDesarrollo si)
					(and
						(or
							(IdeasDelirantes si)
							(Alucinaciones si)
						)
						(or
							(DuracionSintoma ?ds & :(> ?ds 30))
							(
								(DuracionSintoma ?ds & :(< ?ds 30))
								(TratadoConExito si)
							)
						)
					)
				)
			)

		)	
	)
	(Paciente
		(CumpleCriterioA si) 
		(and
			(Duracion ?d & :(> ?d 6))
			(Sintomas (DuracionSintoma ?ds & :(> ?ds 30)))
		)
		(Limpio si)
	)
)
	=>
	(assert (Esquizofrenia (Presenta si))))
