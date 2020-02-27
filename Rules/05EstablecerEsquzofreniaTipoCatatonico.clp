(defrule EstablecerEsquizofreniaTipoCatatonico
(and
	(Esquizofrenia
		(Presenta si)
	)
?TCatatonico<-(TipoCatatonico
			(Presenta ?Pres&~si)
			(CantidadSintomas ?NSintomas & :(> ?NSintomas 1))
		)
)
	=>
	(modify ?TCatatonico (Presenta si))

)