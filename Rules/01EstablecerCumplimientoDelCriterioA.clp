(defrule EstablecerCumplimientoCriterioA
	;(declare (salience 1000))
	
	(Paciente (CumpleCriterioA nil))

?Paciente <- (Paciente 
		(Duracion ?d))
	(or
           (Sintomas
                  (CantidadSintomas 1)
                  (IdeasDelirantes si)
                  (TipoIdeasDelirantes extranas)
                  (DuracionSintoma ?DSintoma & :(> ?DSintoma 15))
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
		(DuracionSintoma ?DSintoma & :(> ?DSintoma 15))
		(Atenuados no))
	   (Sintomas
		(CantidadSintomas ?CSintomas & :(> ?CSintomas 1))
		(DuracionSintoma ?DSintoma & :(< ?DSintoma 15))
		(TratadoConExito si)
		(Atenuados ?Aten&~si))
      
     )=>
(modify ?Paciente
	(CumpleCriterioA si))

)
