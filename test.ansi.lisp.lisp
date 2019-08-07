








(setf x '(1 2 3 4 5))
(setf s '(2 nil 4 nil 6 nil))




(defun lam (y)
  (if (null y)
      0
    (let ((x (car y)))
      (+ (or x 0) (lam (cdr y))))))








