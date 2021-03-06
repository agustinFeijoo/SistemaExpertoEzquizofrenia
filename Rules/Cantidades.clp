(defrule Cantidades
	(declare (salience 1100))	

?Sintomas<-(Sintomas
		(IdeasDelirantes ?Sin1)
		(Alucinaciones ?Sin2)
		(LenguajeDesorganizado ?Sin3)
		(ComportamientoCatatonico ?Sin4)
		(ComportamientoDesorganizado ?Sin5)
		(SintomasNegativos ?Sin6)
		(CantidadSintomas 0)
	)
?Catatonico<-(TipoCatatonico 
		(InmovilidadCataplesiaOStupor ?Sint1)
		(ActividadMotoraExcesiva ?Sint2)
		(NegativismoExtremoOMutismo ?Sint3)
		(PosturasOMovimientosExtranos ?Sint4)
		(EcolaliaOEcopraxia ?Sint5)
		(CantidadSintomas 0)
		)
      
=>
        (bind ?total 0)
	(bind ?total2 0)

	(if (eq ?Sin1 si)
		then	(bind ?total (+ ?total 1))
	)
	(if (eq ?Sin2 si)
		then	(bind ?total (+ ?total 1))
	)
	(if (eq ?Sin3 si)
		then	(bind ?total (+ ?total 1))
	)
	(if (eq ?Sin4 si)
		then	(bind ?total (+ ?total 1))
	)
	(if (eq ?Sin5 si)
		then	(bind ?total (+ ?total 1))
	)
	(if (eq ?Sin6 si)
		then	(bind ?total (+ ?total 1))
	)


	(if (eq ?Sint1 si)
		then	(bind ?total2 (+ ?total2 1))
	)
	(if (eq ?Sint2 si)
		then	(bind ?total2 (+ ?total2 1))
	)
	(if (eq ?Sint3 si)
		then	(bind ?total2 (+ ?total2 1))
	)
	(if (eq ?Sint4 si)
		then	(bind ?total2 (+ ?total2 1))
	)
	(if (eq ?Sint5 si)
		then	(bind ?total2 (+ ?total2 1))
	)

	(modify ?Sintomas (CantidadSintomas ?total))
	(modify ?Catatonico (CantidadSintomas ?total2))

)