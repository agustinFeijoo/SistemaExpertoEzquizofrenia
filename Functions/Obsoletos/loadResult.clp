﻿(deffunction loadResult()
	
	(assert ?condicion no)

	(if (Esquizofrenia Presenta ?Pr & :(eql ?Pr si))
		then	
		(
		
		(printout t crlf "El paciente presenta Esquizofrenia ")
	
	
		(if (TipoParanoide Presenta ?Pr & :(eql ?Pr si))
			then (printout t crlf "del Tipo Paranoide F20.0X~%")	
		)
	
		(if (TipoDesorganizado Presenta ?Pr & :(eql ?Pr si))
			then (printout t crlf "del Tipo Desorganizado F20.1X~%")	
		)
	
		(if (TipoCatatonico Presenta ?Pr & :(eql ?Pr si))
			then (printout t crlf "del Tipo Catatonico F20.2X~%")	
		)

		(if (TipoIndiferenciado Presenta ?Pr & :(eql ?Pr si))
			then (printout t crlf "del Tipo Indiferenciado F20.3X~%")	
		)

		(if (TipoResidual Presenta ?Pr & :(eql ?Pr si))
			then (printout t crlf "del Tipo Residual F20.5X~%")	
		)
	
		(printout t crlf "Elija el ultimo digito segun corresponda:~%
			.x2 Episodico con sintomas residuales interepisodicos~%"
			.x3 Episodico con sintomas residuales no interepisodicos~%
			.x0 Continuo~%
			.x4 Episodio unico en remision parcial~%
			.x5 Episodio unico en remision total~%
			.x8 Otro patron o no especificado~%
			.x9 Menos de 1 año desde el inicio de los primeros sintomas de fase activa~%"
		)
		
		(assert ?condicion si)
		)		
	)


	(if (Paciente PresentaTrastorno ?Pr & :(eql ?Pr si))
		then
		(
		(printout t crlf "El paciente presenta Trastorno psicotico ")
	
		(if (Psicotico TrastornoEsquizofreniforme ?Pr & :(eql ?Pr si))
			then 
			(
				(printout t crlf "del Tipo Esquizofreniforme F20.8 ~%")	
				(printout t crlf "Sin caracteristicas de buen pronostico~%
					   Con caracteristicas de buen pronostico~%")			
			)
		)

		(if (Psicotico TrastornoEsquizoafectivo ?Pr & :(eql ?Pr si))
			then 
			(
				(printout t crlf "del Tipo Esquizoafectivo F25.x ~%")	
				(printout t crlf "Elija el ultimo digito segun corresponda:~%
					   .0 Tipo Bipolar~%
					   .1 Tipo Depresivo~%")			
			)
		)
		
		(if (Psicotico TrastornoDelirante ?Pr & :(eql ?Pr si))
			then 
			(
				(printout t crlf "del Tipo Delirante F22.0 ~%")	
				(printout t crlf "Especificar el tipo:~%
					   Tipo Erotomaniaco~%
					   Tipo de grandiosidad~%
					   Tipo celotipico~%
					   Tipo persecutorio~%
					   Tipo somatico~%
					   Tipo mixto~%
					   Tipo no especificado~%")
			)
		)
		
		(if (Psicotico TrastornoPsicoticoBreve ?Pr & :(eql ?Pr si))
			then 
			(
				(printout t crlf "del Tipo Psicotico Breve F23.8x ~%")	
				(printout t crlf "Elija el ultimo digito segun corresponda:~%
					   .81 Con desencadenante(s) grave(s)~%
					   .80 Sin desencadenante(s) grave(s)~%~%")
				(printout t crlf "Indicar si se presenta en el posparto. ~%")	
			)
		)

		(if (Psicotico TrastornoPsicoticoCompartido ?Pr & :(eql ?Pr si))
			then 
			(printout t crlf "del Tipo Psicotico Compartido F24 ~%")
		)

		(if (Psicotico TrastornoPsicoticoDebidoAEnfermedad ?Pr & :(eql ?Pr si))
			then 
			(
				(printout t crlf "del Tipo Psicotico debido a enfermedad F06.x ~%")	
				(printout t crlf "Indicar la enfermedad en el momento de registrar la codificacion. ~%")
				(printout t crlf "Elija el ultimo digito segun corresponda:~%
					   .2 Con ideas delirantes~%
					   .0 Con alucinaciones~%")
			)
		)

		(if (Psicotico TrastornPsicoticoDebidoASustancias ?Pr & :(eql ?Pr si))
			then 
			(
				(printout t crlf "del Tipo Psicotico debido a sustancias F1x.5x ~%")	
				(printout t crlf "Elija la sustancia y sintoma segun corresponda:~%
					   F10.51 Alcohol, con ideas delirantes~%
					   F10.52 Alcohol, con alucinaciones~%

					   F16.51 Alucinogenos, con alucinaciones~%
					   F16.52 Alucinogenos, con alucinaciones~%

					   F15.51 Anfetaminas (o similar), con ideas delirantes~%
					   F15.52 Anfetaminas (o similar), con alucinaciones~%

					   F12.51 Cannabis, con ideas delirantes~%
					   F12.52 Cannabis, con alucinaciones~%

					   F14.51 Cocaina, con ideas delirantes~%
					   F14.52 Cocaina, con alucinaciones~%

					   F19.51 Fenciclidina (o similar), con ideas delirantes~%
					   F19.52 Fenciclidina (o similar), con alucinaciones~%

					   F18.51 Inhalantes, con ideas delirantes~%
					   F18.52 Inhalantes, con alucinaciones~%

					   F11.51 Opiaceos, con ideas delirantes~%
					   F11.52 Opiaceos, con alucinaciones~%

					   F13.51 Sedantes, hipnoticos o ansioliticos, con ideas delirantes~%
					   F13.52 Sedantes, hipnoticos o ansioliticos, con alucinaciones~%

					   F19.51 Otras sustancias, con ideas delirantes~%
					   F19.52 Otras sustancias, con alucinaciones~%~%")
				
				(printout t crlf "Especificar si: ~%
					De inicio durante la intoxicacion~%
					De inicio durante la abstinencia~%")				
			)
		)



		(assert condicion si)
		)
	)


	(if (condicion ?Con & :(eql ?Con no))
	then
		(printout t crlf "[No se pudo definir la condicion del paciente.] ~%")	

	)
	
)
