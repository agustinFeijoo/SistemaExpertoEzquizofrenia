;Defino estructura de datos de Sintomas


(deftemplate Sintomas
(field IdeasDelirantes)
(field TipoIdeasDeli)
(field Alucinaciones)
(field LenguajeDesorganizado)
(field ComportCatatonico)
(field ComportDesorganizado)
(field SintomasNegativos)
(field CantSintomas)
(field TratadoConExito)
(field DuracSintoma)
(field CumpleCriterioA)
(field DisfuncionSocial)
(field EpisodiosAnimicos)
(field DuracEpisodio)
(field TrastornoDeDesarrollo)
)

(deffacts SintomasHechos
	(Sintomas
		(IdeasDelirantes NO)
		(TipoIdeasDeli NO)
		(Alucinaciones NO)
		(LenguajeDesorganizado NO)
		(ComportCatatonico NO)
		(ComportDesorganizado NO)
		(SintomasNegativos NO)
		(CantSintomas 0)
		(TratadoConExito NO)
		;(DuracSintoma)
		(CumpleCriterioA NO)
		(DisfuncionSocial NO)
		(EpisodiosAnimicos NO)
		;(DuracEpisodio)
		(TrastornoDeDesarrollo NO))
)

