(deffunction master()

	(load "Functions/loadTemplates.clp")
	(reset)
	(loadTemplates)
	(reset)
	(load "Functions/loadInitialValues.clp")
	(reset)
	(load "Pacientes/Paciente01 - Adriano Gomez.clp")
	(reset)
	(load "Functions/runConditionals.clp")
	(reset)
	(runConditionals)

	(printout t crlf "TAREA EXITOSA")

)