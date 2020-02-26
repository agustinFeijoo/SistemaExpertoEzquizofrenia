(defrule EstablecerSintomasEsquizofrenia
(declare (salience 900)) 
(and
	(or
		(Sintomas (DisfuncionSocial si))

			(or
				(Sintomas (EpisodiosAnimicos no))
				(and
					(Sintomas 
					(EpisodiosAnimicos si)
					(DuracionEpisodio BREVE))					
				)
			)

			(or
				(Sintomas (TrastornoDesarrollo no))	
				(and
					(Sintomas (TrastornoDesarrollo si))
					(and
						(or
							(Sintomas 
							(IdeasDelirantes si)
							(Alucinaciones si))							
						)

						(or
							(Sintomas (DuracionSintoma ?ds & :(> ?ds 30)))
							(and
								(Sintomas 
								(DuracionSintoma ?ds & :(< ?ds 30))
								(TratadoConExito si))
							)
						)
					)
				)
			)	
	)
	
	(Paciente (CumpleCriterioA si)) 
	(and
		(Paciente (Duracion ?d & :(> ?d 6)))
		(Sintomas (DuracionSintoma ?ds & :(> ?ds 30)))
	)
	(Limpio si)
	
)
	=>
	(assert (Esquizofrenia (Presenta si))))
