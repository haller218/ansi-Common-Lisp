((lambda(x)
    (cond
      [(> x 0) x]
      [else 0])) 6)
      
(lambda(f)
  (lambda(x)
  (f (f (f x)))))
  
(define du
  (lambda(f)
   (lambda(x)
   (f (f (f x))))))
   
(du 5)

((du (lambda(x) x)) 6)

((du (lambda(x) (+ x 2))) 5)

(define tre
  (lambda(f)
   (lambda(x)
   (f (f (f (f x)))))))
   
((du tre) (lambda(x) x))

((du tre) (lambda(x) 'hi))

(((du tre) (lambda(x) 'hi)) 5)

(define ones (cons 1 (lambda() ones)))

ones

(car ones)

(cdr ones)

((cdr ones))

(define force-a-thunk
  (lambda(x)
    (x)))
    
(car (force-a-thunk 
  (cdr (force-a-thunk (cdr ones)))))
  
(define force-a-thunk
  (lambda(x)
    (x)))
    
(car (force-a-thunk 
  (cdr (force-a-thunk (cdr ones)))))
  
(define our-cdr 
  (lambda(x)
    (force-a-thunk (cdr x))))
    
(our-cdr ones)

(our-cdr (our-cdr (our-cdr ones)))

(car (force-a-thunk 
  (cdr (force-a-thunk (cdr ones)))))
  
(define ones (cons 1 (lambda() ones)))

(define force-a-thunk
  (lambda(x)
    (x)))
    
(define my-y (cons 1 (lambda(x) x)))

(car my-y)

((cdr my-y) my-y)

(let ((y (cons 1 (lambda(x) x))))
  ((cdr y) y))
  
(define true (lambda(fr)
    (lambda(seq)
      fr)))
      
(define false 
  (lambda(fr)
    (lambda(seq)
      seq)))
      
((true (lambda() 'hi)) false)

(((true (lambda() 'hi)) false))


(define comp
  (lambda(x)
    (lambda(y)
      (y x))))


(define zero
  (lambda(f)
    (lambda(x)
      (f x))))


(define one
  (lambda(f)
    (lambda(x)
      (f(f(x))))))

(define tow
  (lambda(f)
    (lambda(x)
      (f(f(f x))))))

(define tre
  (lambda(f)
    (lambda(x)
      (f(f(f(f x)))))))





