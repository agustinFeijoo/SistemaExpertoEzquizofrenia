(defrule EstablecerEsquizofreniaTipoParanoide
(and
	(or
	(Sintomas
		(IdeasDelirantes si)
		(LenguajeDesorganizado no)
		(ComportamientoCatatonico no)
		(ComportamientoDesorganizado no)
		(AplanamientoAfectivo no)
		)
	(Sintomas
		(Alucinaciones si)
		(LenguajeDesorganizado no)
		(ComportamientoCatatonico no)
		(ComportamientoDesorganizado no)
		(AplanamientoAfectivo no)
		)
	)
	(Esquizofrenia
		(Presenta si)
	)
)
	=>
	(assert (TipoParanoide
		(Presenta si))))