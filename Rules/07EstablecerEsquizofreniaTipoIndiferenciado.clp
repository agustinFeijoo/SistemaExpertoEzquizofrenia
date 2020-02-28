(defrule EstablecerEsquizofreniaTipoIndiferenciado
(declare (salience 900))
(and
	(Esquizofrenia
		(Presenta si)
	)
	(TipoParanoide
		(Presenta ?Pres&~si)
	)
	(TipoDesorganizado
		(Presenta ?Pres&~si)
	)
	(TipoCatatonico
		(Presenta ?Pres&~si)
	)
?TIndif <-(TipoIndiferenciado
		(Presenta ?Pres&~si)
	)
)
	=>
	(modify ?TIndif (Presenta si))

)