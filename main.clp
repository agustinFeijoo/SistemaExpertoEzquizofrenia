(deffunction main()
	(load "Functions/loadTemplates.clp")
	(load "Functions/loadRules.clp")
)

(deffunction exec()

	(loadTemplates)
	(load "Pacientes/Paciente01 - Adriano Gomez.clp")
	(loadRules)

)