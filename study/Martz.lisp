





(write-line "Hello, World!")



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


(defun make-pointlist ()
  (let ((lis nil))
    (do ((i 64 (- i 2)))
      ((= i 0))
      (do ((j 75 (- j 3)))
        ((= j 0))
        (setf lis (cons 
          (make-point j i) lis))))
    lis))
    
    
(defun our-pos (nu lst)
  (do ((i nu (- i 1)))
    ((= i 0))
    (setf lst (cdr lst)))
  (car lst))
    
    

(defun make-square (lens point)
  (let ((lis (list (
     (make-point (+ (car point) (/ lens 2)) 
                 (+ (cdr point) (/ lens 2)))
     (make-point (+ (car point) (/ lens 2)) 
                 (- (cdr point) (/ lens 2)))     
     (make-point (- (car point) (/ lens 2)) 
                 (+ (cdr point) (/ lens 2)))
     (make-point (- (car point) (/ lens 2)) 
                 (- (cdr point) (/ lens 2)))))))
     (let ((novlis (list ()))))))


