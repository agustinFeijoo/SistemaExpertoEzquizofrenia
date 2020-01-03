(format t "Hellooo world ~%")
 ;(defvar *name* (read))
(bind ?cadena(readline))


(defglobal
  ?*var1* = 17
  ?*oranges* = "seven"
)


(defun hello(*name*)
    (format t "Hello ~a! ~%"*name*)
)

;;;(setq *print-case* :capitalize)
(hello *name*)

(load "Rules/1EstablecerCumplimientoDelCriterioA.clp")
