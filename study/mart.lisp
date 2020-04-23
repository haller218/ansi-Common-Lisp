

(defun vium (n)
  (trees n 1))

(defun trees (n coun)
  (if (< n 3)
      n
      (* coun (trees (- n 1) (+ coun 1)))))


(defun pascal (n)
  (if (= n 0)
      1
      (* 2 (pascal (- n 1)))))

(defun fib (n)
  (fib-iter 0 1 n))


(defun fib-iter (a b n)
  (if (< n 2)
      n
      (+ a (fib-iter b (+ a b) (- n 1)))))


(defun pow (n)
  (* n n))

(defun our-power (n exp)
  (if (= exp 0)
      1
      (* n (our-power n (- exp 1)))))

(defun gfib (n)
  (/ (- (our-power (/ (+ 1 (sqrt 5)) 2) n)
     (our-power (/ (- 1 (sqrt 5)) 2) n))
     (sqrt 5)))
     

(defun fock (n)
  (do ((i n (- i 1)))
    ((< i 0))
    (format t "~%~A" (gfib i))))

(defun fockoff (n)
  (do ((i n (- i 1)))
    ((< i 0))
    (format t "~%~A" (fib i))))


(defun fast-expb(n exep)
  (if (= exep 0)
      1
      (if (expem n)
          (square (fast-square n (/ exp 2)))
     (* n (fast-expb n (- exep 1))))))

(defun expem (n)
  (= (/ n 2) 0))



(defun finder (obj vec init end)
   

;;;; Utilities to operate in short vector

;;; find a element in short vector

(defun bin-search (obj vec)
  (let ((len (length vec)))
    ;; if a real vector send it to find
    (and (not (zerop len))
       (finder obj vec 0 (- len 1)))))

(bin-search '5 '(1 2 3 4 5 6 7 8 9))








