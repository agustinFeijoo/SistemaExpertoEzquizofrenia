(defrule Esq.Paranoide
	(declare (salience 10))

	(Esquizofrenia (Presenta si))
	(TipoParanoide (Presenta si))
=>
	(printout t crlf "El paciente presenta Esquizofrenia ")
	(printout t crlf "del Tipo Paranoide F20.0X")
	(printout t crlf "Elija el ultimo digito segun corresponda:
			.x2 Episodico con sintomas residuales interepisodicos
			.x3 Episodico con sintomas residuales no interepisodicos
			.x0 Continuo
			.x4 Episodio unico en remision parcial
			.x5 Episodio unico en remision total
			.x8 Otro patron o no especificado
			.x9 Menos de 1 año desde el inicio de los primeros sintomas de fase activa
			"
		)
)

(defrule Esq.Desorganizado
	(declare (salience 10))

	(Esquizofrenia (Presenta si))
	(TipoDesorganizado (Presenta si))
=>
	(printout t crlf "El paciente presenta Esquizofrenia ")
	(printout t crlf "del Tipo Desorganizado F20.1X")
	(printout t crlf "Elija el ultimo digito segun corresponda:
			.x2 Episodico con sintomas residuales interepisodicos
			.x3 Episodico con sintomas residuales no interepisodicos
			.x0 Continuo
			.x4 Episodio unico en remision parcial
			.x5 Episodio unico en remision total
			.x8 Otro patron o no especificado
			.x9 Menos de 1 año desde el inicio de los primeros sintomas de fase activa
			"
		)
)

(defrule Esq.Catatonico
	(declare (salience 10))

	(Esquizofrenia (Presenta si))
	(TipoCatatonico (Presenta si))
=>
	(printout t crlf "El paciente presenta Esquizofrenia ")
	(printout t crlf "del Tipo Catatonico F20.2X")
	(printout t crlf "Elija el ultimo digito segun corresponda:
			.x2 Episodico con sintomas residuales interepisodicos
			.x3 Episodico con sintomas residuales no interepisodicos
			.x0 Continuo
			.x4 Episodio unico en remision parcial
			.x5 Episodio unico en remision total
			.x8 Otro patron o no especificado
			.x9 Menos de 1 año desde el inicio de los primeros sintomas de fase activa
			"
		)
)

(defrule Esq.Indiferenciado
	(declare (salience 10))

	(Esquizofrenia (Presenta si))
	(TipoIndiferenciado (Presenta si))
=>
	(printout t crlf "El paciente presenta Esquizofrenia ")
	(printout t crlf "del Tipo Indiferenciado F20.3X")
	(printout t crlf "Elija el ultimo digito segun corresponda:
			.x2 Episodico con sintomas residuales interepisodicos
			.x3 Episodico con sintomas residuales no interepisodicos
			.x0 Continuo
			.x4 Episodio unico en remision parcial
			.x5 Episodio unico en remision total
			.x8 Otro patron o no especificado
			.x9 Menos de 1 año desde el inicio de los primeros sintomas de fase activa
			"
		)
)

(defrule Esq.Residual
	(declare (salience 10))

	(Esquizofrenia (Presenta si))
	(TipoResidual (Presenta si))
=>
	(printout t crlf "El paciente presenta Esquizofrenia ")
	(printout t crlf "del Tipo Residual F20.5X")
	(printout t crlf "Elija el ultimo digito segun corresponda:
			.x2 Episodico con sintomas residuales interepisodicos
			.x3 Episodico con sintomas residuales no interepisodicos
			.x0 Continuo
			.x4 Episodio unico en remision parcial
			.x5 Episodio unico en remision total
			.x8 Otro patron o no especificado
			.x9 Menos de 1 año desde el inicio de los primeros sintomas de fase activa
			"
		)
)

(defrule Tras.Esquizofreniforme
	(declare (salience 10))

	(Paciente (PoseeTrastorno si))
	(Psicotico (TrastornoEsquizofreniforme si))
=>
	(printout t crlf "El paciente presenta Trastorno psicotico ")
	(printout t crlf "del Tipo Esquizofreniforme F20.8 ")
	(printout t crlf "Sin caracteristicas de buen pronosticoCon caracteristicas de buen pronostico
	")
)

(defrule Tras.Esquizoafectivo
	(declare (salience 10))

	(Paciente (PoseeTrastorno si))
	(Psicotico (TrastornoEsquizoafectivo si))
=>
	(printout t crlf "El paciente presenta Trastorno psicotico ")
	(printout t crlf "del Tipo Esquizoafectivo F25.x ")
	(printout t crlf "Elija el ultimo digito segun corresponda:
					   .0 Tipo Bipolar
					   .1 Tipo Depresivo
		")
)

(defrule Tras.Delirante
	(declare (salience 10))

	(Paciente (PoseeTrastorno si))
	(Psicotico (TrastornoDelirante si))
=>
	(printout t crlf "El paciente presenta Trastorno psicotico ")
	(printout t crlf "del Tipo Delirante F22.0 ")	
	(printout t crlf "Especificar el tipo:
					   Tipo Erotomaniaco
					   Tipo de grandiosidad
					   Tipo celotipico
					   Tipo persecutorio
					   Tipo somatico
					   Tipo mixto
					   Tipo no especificado
			")
)

(defrule Tras.PsicoticoBreve
	(declare (salience 10))

	(Paciente (PoseeTrastorno si))
	(Psicotico (TrastornoPsicoticoBreve si))
=>
	(printout t crlf "El paciente presenta Trastorno psicotico ")
	(printout t crlf "del Tipo Psicotico Breve F23.8x ")	
	(printout t crlf "Elija el ultimo digito segun corresponda:
					   .81 Con desencadenante(s) grave(s)
					   .80 Sin desencadenante(s) grave(s)")
	(printout t crlf "Indicar si se presenta en el posparto. 
		")
)

(defrule Tras.PsicoticoCompartido
	(declare (salience 10))

	(Paciente (PoseeTrastorno si))
	(Psicotico (TrastornoPsicoticoCompartido si))
=>
	(printout t crlf "El paciente presenta Trastorno psicotico ")
	(printout t crlf "del Tipo Psicotico Compartido F24 
		")
)

(defrule Tras.PsicoticoDebidoAEnfermedad
	(declare (salience 10))

	(Paciente (PoseeTrastorno si))
	(Psicotico (TrastornoPsicoticoDebidoAEnfermedad si))
=>
	(printout t crlf "El paciente presenta Trastorno psicotico ")
	(printout t crlf "del Tipo Psicotico debido a enfermedad F06.x ")	
	(printout t crlf "Indicar la enfermedad en el momento de registrar la codificacion. ")
	(printout t crlf "Elija el ultimo digito segun corresponda:
					   .2 Con ideas delirantes
					   .0 Con alucinaciones
		")
)

(defrule Tras.PsicoticoDebidoASustancias
	(declare (salience 10))

	(Paciente (PoseeTrastorno si))
	(Psicotico (TrastornoPsicoticoDebidoASustancias si))
=>
	(printout t crlf "El paciente presenta Trastorno psicotico ")
	(printout t crlf "del Tipo Psicotico debido a sustancias F1x.5x ")	
	(printout t crlf "Elija la sustancia y sintoma segun corresponda:
					   F10.51 Alcohol, con ideas delirantes
					   F10.52 Alcohol, con alucinaciones

					   F16.51 Alucinogenos, con alucinaciones
					   F16.52 Alucinogenos, con alucinaciones

					   F15.51 Anfetaminas (o similar), con ideas delirantes
					   F15.52 Anfetaminas (o similar), con alucinaciones

					   F12.51 Cannabis, con ideas delirantes
					   F12.52 Cannabis, con alucinaciones

					   F14.51 Cocaina, con ideas delirantes
					   F14.52 Cocaina, con alucinaciones

					   F19.51 Fenciclidina (o similar), con ideas delirantes
					   F19.52 Fenciclidina (o similar), con alucinaciones

					   F18.51 Inhalantes, con ideas delirantes
					   F18.52 Inhalantes, con alucinaciones

					   F11.51 Opiaceos, con ideas delirantes
					   F11.52 Opiaceos, con alucinaciones

					   F13.51 Sedantes, hipnoticos o ansioliticos, con ideas delirantes
					   F13.52 Sedantes, hipnoticos o ansioliticos, con alucinaciones

					   F19.51 Otras sustancias, con ideas delirantes
					   F19.52 Otras sustancias, con alucinaciones")
				
	(printout t crlf "Especificar si: 
					De inicio durante la intoxicacion
					De inicio durante la abstinencia

			")
)

(defrule Negativos
	(declare (salience 100))

?Esqui		<-(Esquizofrenia (Presenta nil))
?Paciente	<-(Paciente (PoseeTrastorno nil))
=>
	(modify ?Esqui (Presenta no))
	(modify ?Paciente (PoseeTrastorno no))
)

(defrule Indefinido
	(declare (salience 5))

	(Esquizofrenia (Presenta no))
	(Paciente (PoseeTrastorno no))
=>
	(printout t crlf "[No fue posible definir la condicion del paciente.] 

		")
)
