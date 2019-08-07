





(defun make-point (x y)
  (cons x y))

(defun our-power (x)
  (* x x))

(defun power (x exp)
  (if (= exp 0)
      x
    (* (power x (- exp 1)) x)))

(defun cl-vecta (pointA pointB)
  (sqrt (+ (our-power
	    (- (car pointB)
	       (car pointA)))
	   (our-power
	    (- (cdr pointB)
	       (cdr pointA))))))

(setf pi 3.141512)

(defun make-vecta (ponA ponB)
  (list ponA (cl-vecta ponA ponB) ponB))


(defun our-pos (pos lis)
  (do ((i pos (- i 1)))
      ((= 0 i))
      (setf lis (cdr lis)))
  (car lis))

(defun make-square (lens point)
  (let ((lis (list
	      (make-point (+ (car point) (/ lens 2)) (+ (cdr point) (/ lens 2)))
	      (make-point (+ (car point) (/ lens 2)) (- (cdr point) (/ lens 2)))
	      (make-point (- (car point) (/ lens 2)) (- (cdr point) (/ lens 2)))
	      (make-point (- (car point) (/ lens 2)) (+ (cdr point) (/ lens 2))))))
    (let ((novlis (list
		   (make-vecta (our-pos 0 lis) (our-pos 1 lis))
		   (make-vecta (our-pos 1 lis) (our-pos 2 lis))
		   (make-vecta (our-pos 2 lis) (our-pos 3 lis))
		   (make-vecta (our-pos 3 lis) (our-pos 0 lis)))))
      novlis)))

(defun make-circle (raio ponty)
  (list raio ponty
	(* (* 2 raio) pi)
	(* (our-power raio) pi)))
		

(defun cons-vecta (point lens)
  ())




(defun our-large (a b)
  (if (> a b)
      a
    b))

(defun treesquares (um dos tres)
  (let ((maior (our-large um dos)))
    (let ((segundo (our-large dos tres)))
      (+ (sqrt maior) (sqrt segundo)))))


;;(defun a-plus-abs-b (a b)
  ;;((if (> b 0) + -) a b))


(defun fas-exp (n exp)
  (if (= exp 0)
      n
    (if (exem n)
	(square (fas-exp n (/ exp 2)))
      (* n (fas-exp n (- exp 1))))))

(defun square (n)
  (* n n))

(defun exem (n)
  (= (/ n 2) 0))


