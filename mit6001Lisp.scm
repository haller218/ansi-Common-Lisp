;; Curse of lisp(Schema) for mit Computer Science (Video)
;; the Harold Abelson and Gerald Jay Sussman



(print "Hello, World!")

;; is fine by definition
(define (foreachx proc lst)
  (cond ((null? lst) "done1")
	(else (proc (car lst))
	      (foreachx proc
			(cdr lst)))))

;; not work in call stack execution, the return needs a whait mode
(define (for-eachx proc lst)
  (if (null? lst)
      "done"
      ((proc (car lst))
       (for-eachx proc
		  (cdr lst)))))






