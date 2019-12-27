(format t "Hellooo world ~%")
(defvar *name* (read))

(defun hello(*name*)
    (format t "Hello ~a! ~%"*name*)
)

;;;(setq *print-case* :capitalize)
(hello *name*)

(load "Rules/1EstablecerCumplimientoDelCriterioA.clp")