

(defrule EstablecerCumplimientoCriterioA
           (or
                  (Sintomas CantidadSintomas 1)
                  (Sintomas IdeasDelirantes si)
                  (Sintomas TipoIdeasDelirantes extrañas)
                  (Sintomas DuracionSintoma <30)
                  (Sintomas DuracionSintoma >15)
                  (Sintomas Atenuados no)           
      =>
            (assert
(Sintomas CumpleCriterioA si)))




(defrule EstablecerCumplimientoCriterioA 
                (
                  (Sintomas CantidadSintomas 1)
                  (Sintomas IdeasDelirantes si)
                  (Sintomas TipoIdeasDelirantes extrañas)
                  (Sintomas DuracionSintoma >15)
                  (Sintomas TratadoConExito si)
                  (Sintomas Atenuados))=>
            (assert
(Sintomas CumpleCriterioA si)))









(defrule EstablecerCumplimientoCriterioA
           (Sintomas
                  (CantidadSintomas 1)
                  (IdeasDelirantes si)
                  (TipoIdeasDelirantes extranas)
                  (DuracionSintoma <30)
                  (Atenuados no))    
      =>
            (assert
(Sintomas CumpleCriterioA si)))





(DuracionSintoma ?dur & <30)
(defrule EstablecerCumplimientoCriterioA
      
          (Sintomas (CantidadSintomas 1)
                  (IdeasDelirantes si)
                  (TipoIdeasDelirantes <15)
                  (TratadoConExito si)
                  (CumpleCriterioA ?CritA))
                  =>
            (assert
(Sintomas CumpleCriterioA?si)))
