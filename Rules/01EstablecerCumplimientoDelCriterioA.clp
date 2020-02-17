(defrule EstablecerCumplimientoCriterioA
	(or
           (Sintomas
                  (CantidadSintomas 1)
                  (IdeasDelirantes si)
                  (TipoIdeasDelirantes extranas)
                  (DuracionSintoma ?DSintoma & :(> ?DSintoma 30))
                  (Atenuados no))  
	  (Sintomas
                  (CantidadSintomas 1)
                  (IdeasDelirantes si)
                  (TipoIdeasDelirantes extranas)
                  (DuracionSintoma ?DSintoma & :(< ?DSintoma 15))
                  (Atenuados no)
		  (TratadoConExito si))
	   (Sintomas
		(CantidadSintomas ?CSintomas & :(> ?CSintomas 1))
		(DuracionSintoma ?DSintoma & :(> ?DSintoma 15) & :(< ?DSintoma 30))
		(Atenuados no))
	   (Sintomas
		(CantidadSintomas ?CSintomas & :(> ?CSintomas 1))
		(DuracionSintoma ?DSintoma & :(< ?DSintoma 15))
		(TratadoConExito si)
		(Atenuados no))
      
     )=>
            (assert
(Paciente(CumpleCriterioA si))))
