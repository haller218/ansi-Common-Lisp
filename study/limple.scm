(+ 5 3 4) 

(- 9 1) 

(/ 6 2) 

(define a 3) 

(define b (+ a 1)) 

(+ a b (* a b))

(= a b)

(if (and (> b a) (< b (* a b)))
      b
      a)

(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))

(+ 2 (if (> b a) b a))

(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1))





(define (our-map-aps fn lstt)
  (define (aps acc lst)
    (cond ((null? lst)
       acc)
      (else 
         (aps (cons (fn (car lst)) acc) 
                  (cdr lst)))))
    (aps '() lstt))


;; (our-reduce (lambda(x)(* 7 x)) '(6 8 3 66))



(define (our-map p l)
   (if (null? l)
       l
      (cons (p (car l))
            (our-map p (cdr l)))))


(define (for-each p lst)
    (cond ((null? lst))
          (else
            (p (car lst))
          (for-each p (cdr lst)))))

(define (our-map-aps fn lstt)                
  (define (map-aps lst acc)
    (cond ((not (null? lst))
      (map-aps 
          (cons (fn (car lst)) acc)
          (cdr lst)))))
  (map-aps lstt '()))




(for-each (lambda(x)(print x)) '(7 8 5 3 4 9 33))




(define (scale-list scl lst)
    (our-map (lambda(x)(* x scl)) lst))

;; (our-map (lambda(x)(* x 333)) '(6 7 88 77 33 55 777 666 8 9 4))


(scale-list #'+ '(6 8 8 4 22))



(define (monte-carlo trails experiment)
    (define (iter remains passed)
        (cond 
          ((= remains 0) 
             (/ passed trails))
          ((experiment)
             (iter
                (- remains 1)
                (+ passed 1)))
          (else
             (iter
                (- remains 1)
                passed))))
    (iter trails 0.0))



(define ramincoin
  (let ((st #f))
    (lambda()
      (define iter
        (lambda()
          (set! st (not st))
         st)
    (iter)))))








(define rootfs '())

(define (make-abstraction name)
  (list 'abstraction (list name '())))

(define (make-symbolic name)
  (list 'symbolic (list name)))


(define (abstraction? box)
  (eq? (car box) 'abstraction))

(define (symbolic? box)
  (eq? (car box) 'symbolic))
  
  
(define (gen-symbolic symbol something)
  (cond 
    ((not (symbolic? symbol)) 'erro-not-a-symbolic)
    ((symbolic? something) 'erro-not-add-symbolic-to-a-stmbolic)
    (else 
      (list (car symbol (list (cadr symbol) something))))))

(define (ls abstraction)
  (caddr abstraction))


(set! rootfs (make-abstraction '/))

;; define queue

(define (make-queue head tail)
  (cons (cons )))





;;; lazyness

;; my own cadr 
;; make on air


(define (mcons x y)
  (let ((first x)
      (secd y)
      (set-first! 
        (lambda (my-x)
          (set! first my-x)))
      (set-secd! 
        (lambda (my-y)
          (set! secd my-y))))
    (lambda (fn)
       (fn first secd set-first! set-secd!))))
       
(define (mcar fn-cons)
  (fn-cons 
    (lambda(x y sx sy)
      x)))

(define (mcdr fn-cons)
  (fn-cons 
    (lambda(x y sx sy)
      y)))

(define (mset-car! fn-cons n)
  (fn-cons 
    (lambda(x y sx sy)
      (sx n))))

(define (mset-cdr! fn-cons n)
  (fn-cons 
    (lambda(x y sx sy)
      (sy n))))



;; lazy evaluation 
;; steams processing

(define (memo-proc fn)
  (let ((realy-run? nil)
          (result nil))
    (lambda()
      (if (not realy-run?)
        (set! result (fn))
        (set! realy-run? (not #f))
        result)
       result))))
        
(define (dalay someth)
  (memo-proc 
     (lambda()
       someth)))

(define (cons-steam x y)
  (cons x (dalay y)))

(define (head st-of-st)
  (car st-of-st))
  
(define (tail st-of-st)
  ((cdr st-of-st)))



