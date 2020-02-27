(defrule EstablecerEsquizofreniaTipoParanoide
(and
	(or
	(Sintomas
		(IdeasDelirantes si)
		(LenguajeDesorganizado ?Len&~si)
		(ComportamientoCatatonico ?ComCat&~si)
		(ComportamientoDesorganizado ?ComDes&~si)
		(AplanamientoAfectivo ?Aplan&~si)
		)
	(Sintomas
		(Alucinaciones si)
		(LenguajeDesorganizado ?Len&~si)
		(ComportamientoCatatonico ?ComCat&~si)
		(ComportamientoDesorganizado ?ComDes&~si)
		(AplanamientoAfectivo ?Aplan&~si)
		)
	)
	(Esquizofrenia
		(Presenta si)
	)
)
	=>
	(assert (TipoParanoide
		(Presenta si))))