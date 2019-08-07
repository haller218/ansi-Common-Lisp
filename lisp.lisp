;new data to cover common lisp dialecto.

(write-line "Hello, World!")


(defun fat (n x z)
  (+ x n z))


(write (fat 44 44 22 ))


(write-line "")

(write "Cos : ")
(write (cos 45))

; logical boolean expression test

(write-line "")
(write-line "Test Boolean Operation")
(write (or t nil))


(write-line "")

(write-line "single quote used, it inhibits evaluation")
(write '(* 2 3))
(write-line " ")
'(write-line "single quote not used, so expression evaluated")
(write (* 2 3))
