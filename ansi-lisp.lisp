; become the frist program comparation using lisp.
;;
;; using CLISP to run all the code
;; 
;;
;;
;;
;;

#||

(defun sum (n)
  (let ((s 0))
    (dotimes (i n s)
      (incf s i))))


(write (sum 44445))


(write-line "")

||#



;; (write-line "Hello, World!")

#||

(defun our-askem ()
  (format t "Please inset one number ")
  (force-output)
  (let ((val (read)))
	(if (numberp val)
	    val
	  (our-askem))))

(format t "Number Digited ~A ~%" (our-askem))

||#

#||

(write-line "")
(write-line "Global Variable")
	
(defparameter *global* 32)

(write *global*)

(defconstant limit (+ *global* 1))

(write-line "")

(write limit)

(write-line "")

(write (boundp 'limit))

(write-line "")
(write (boundp '*global*))

||#

;; Assignment

#||
(write-line "")

(write-line "Assignment")

(setf *global* 98)

(write *global*)

(write-line "")

(write 
 (let ((cv 33))
   (setf cv 23)
  cv))


(setf x '(3 33 23 2 3 5))

(write-line "")

(write x)

(setf (car x) 'n)

(write-line "")

(write x)


(setf x 33
      n 44
      e 55)

(format t "~%X ~A, N ~A, E ~A ~%" x n e)

||#


#||
(write-line "Funtional Programming")

(setf lst '(a b c a e a n))

;; (remove 'a lst)

(format t "~%lst ~%~A~%and lst removed 'A ~%~A~%" lst (remove 'a lst))


(defun show-squares (start end)
  (do ((i start (+ i 1)))
      ((> i end) 'done)
      (format t "~A ~A~%" i (* i i))))

(write
 (show-squares 3 5))

(write-line "")

(defun show-q ()
  (format t "Enter the initial square ")
  (force-output)
  (let ((vara (read)))
    (format t "Enter the final square ")
    (force-output)
    (let ((varb (read)))
      (show-squares vara varb))))

;; (write (show-q))



(defun show-squares-rec (i end)
  (if (> i end)
      'done
    (progn
      (format t "~A ~A~%" i (* i i))
      (show-squares-rec (+ i 1) end))))


(show-squares-rec 2 4)



(defun our-length (lst)
;;  (write lst)
  (let ((len 0))
    (dolist (obj lst)
      (setf len (+ len 1)))
    len))

;;(write
;;  (let oo '(2 4 5 6 6 3 2 5)
;;     (our-length oo))


(write-line "Len of the list ")
(write
 (our-length '(1 2 3 4 5 6)))

(defun our-length-rec (lst)
  (if (null lst)
      0
    (+ (our-length-rec (cdr lst)) 1)))


(format t "~%Recursive version of our-length ~%")
(write (our-length-rec '(s 4 t tre 3 2 5)))
       
||#


#||

(format t "Functions as Objects~%")

(format t "Function +~%")

(write
 (function +))

(format t "~%Function * sharp-quote~%")

(write #'*)

(format t "~%Apply~%")

(write
 (apply #'* '(2 4 55 34 22)))

(format t "~%Funcall~%")

(write
 (funcall #'+ 3 55 23 21 55))

(format t "~%Lambda: ~%")

(write
 ((lambda(x)(* x x)) 33))

(write-line "")

(write
 (apply #'(lambda(y j k)(* y j k 3)) '(3 5 64)))


(write-line "")

(format t "Typep: 32 'integer ~%")

(write
 (typep 32 'integer))

||#


;; (format t "Looking Forward~%")


;; (funcall (eval '(lambda()(write "Hello, World!!"))))

(defun our-length (lst)
  (if (null lst)
      0
    (+ (our-length (cdr lst)) 1)))

#||

(defun crlist (n)
  (if (= n 0)
       'Done
    (format t "~A~%" (crlist (- n 1)))))

||#


(defun our-crlist (n)
  (if (= n 1)
      (list n)
      (cons n (our-crlist (- n 1)))))


(defun clist (n)
  (let ((lis nil))
    (do ((i n (- i 1)))
	((< i 0))
	(setf lis (cons i lis)))
    lis))


#||
(defun our-crlist-tail (n (let s nil))
  (if (= n 1)
      s
     (our-crlist-tai (- n 1) (cons n s))))
||#


#||
(defun fouth-elemts (n)
  (listp n)
    (car n)
  (nil))


(defparameter cc '(a b c d e f h i j k))


(format t "~%List: ~A~%" cc)

(format t "~%Fourth ElemtOfList ~A ~%" cc)

(format t "~%Len Of List~%")

(write (our-length cc))

(defparameter tamf 3)

(format t "~%Cria Lista ~A~%" tamf)

;; (write (crlist 5))

(write (our-crlist tamf))


;; (format t "~%Create List Tai Recursion ~A~%" tamf)

;; (write (our-crlist-tail tamf))

(format t "~%Create List do ~A~%" tamf)

(write (crlist tamf))


||#

#||
(format t "Exercicio~%")

;; Criar programa para mostrar item da possicao 40 de uma lista



(defun tlisti (lis li)
  (if (= li 1)
      (car lis)
    (crlist (cdr lis) (- li 1))))


(defun enigma (x)
  (and (not (null x))
       (or (null (car x))
	   (enigma (cdr x)))))


(write (enigma '(nil 1 2 3 n 5)))

(defun mystery (x y)
  (if (null y)
      nil
    (if (eql (car y) x)
	0
      (let ((z (mystery x (cdr y))))
	(and z (+ z 1))))))


(let ((xs 34))
  (format t "~%Numero de elementos ate ~A na lista ~%" xs)
  (write (mystery 34 (clist 66))))



(defun slis (n)
  (if (null (cdr n))
      nil
    (or (listp (car n)) (slis (cdr n)))))



(format t "~%List True of one List inside~%~A"
	(slis (cons nil (clist 44))))

(defun dotfactory (n)
  (do ((i n (- i 1)))
      ((= i 0))
      (format t ".")))

(defun dotrecfactory (n)
  (if (> n 0)
      (dotrecfactory (- n 1)))
	 (format t "."))


(format t "~%Number Dots for argument~%")


(dotfactory 44)

(format t "~%New Dots~%")

(dotrecfactory 55)


(defun our-listcount (lis sim)
  (let ((cu 0))
    (do ((i (our-length lis) (- i 1)))
	((< i 1))
	(if (eql (car lis) sim)
	    (setf cu (+ cu 1)))
        (setf lis (cdr lis)))
    cu))


(defun our-listcountrec (lis sim)
  (if (null lis)
      0
    (let ((s (our-listcountrec (cdr lis) sim)))
      (if (eql (car lis) sim)
	  (setf s (+ s 1))
	s))))


(format t "~%Simbol ocoration~%")

(write (our-listcount '(a b c d e e f r f e) 'e))

(write-line "")

(write (our-listcountrec '(a b c d e e f r f e) 'e))


(defun our-listinlistp (lis)
  (if (not (null lis))
      (or (listp (car lis))
	  (our-listinlistp (cdr lis)))))


(format t "~%List true if one is a list item : ~%")


(write (our-listinlistp '(2 4 5 6 71 2 2 3 4)))
(write-line "")
(write (our-listinlistp '(2 4 5 6 71 2 2 3 nil)))


(defun summit (lst)
  (remove nil lst)
;;  (write lst)
  (apply #'+ lst))
;; the function neeeds a atribution of change list lst to remove nil objects
;; in then, whorever, the new version pass the modification for apply function
(defun newsummit (lis)
  (apply #'+ (remove nil lis)))


(defun summit2 (lst)
  (let ((x (car lst)))
    (if (null x)
	(summit (cdr lst))
        (+ x (summit (cdr lst))))))
;; The algoritm resolv a problem of the olds-function, because its not more use
;; evaluation of x to be a stop-end function and a value of operate to the number
;; horever, is use a 'or operator to resolv the problem of ignorer the nil atons
;; and calculate in recursive sequence the value of som of valid numbers in list
;; creats a stop-end decission maker and returns the value to evaluete the some
(defun summitr (li)
  (if (null li)
      0
    (let ((x (car li)))
      (+ (or x 0) (summitr (cdr li))))))



(defparameter x '(2 4 54 55 66 33 22 44 11))
(defparameter y '(2 4 nil 55 66 nil 22 nil 11 nil))

(format t "~%~%Function to sum no nil values in list~%")
;; (summit '(3 ... )
(write (newsummit x))
(write-line "")
;; (summit '( 3 ... nil ... ))
(write (newsummit y))

(format t "~%~%Function 2 take a sum of not nil values in list~%")

(write (summitr x))
(write-line "")
(write (summitr y))

;; (format t "~%~%Function 3 take a sum only values in list~%")


||#




(defun our-listp (li)
  (or (null li) (consp li)))

(defun our-atom (a)
  (not (consp a)))

(defun our-equal (x y)
  (or (eql x y)
      (and (consp x)
	   (consp y)
	   (our-equal (car x) (car y))
	   (our-equal (cdr x) (cdr y)))))


(defun our-copy-list (li)
  (if (null (cdr li))
      li
      (cons (car li) (our-copy-list (cdr li)))))

(defun oficial-our-copy-list (lii)
  (if (atom lii)
      lii
    (cons (car lii) (oficial-our-copy-list (cdr lii)))))


; (let www (append '(3 4 66 4 nil) '('v 4 'c 'e nil 3 nil)))


(defun compress (x)
  (if (consp x)
      (compr (car x) 1 (cdr x))
    x))


(defun compr (elt n lst)
  (if (null lst)
      (list (n-elts elt n))
    (let ((next (car lst)))
      (if (eql next elt)
	  (compr elt (+ n 1) (cdr lst))
	(cons (n-elts elt n)
	      (compr next 1 (cdr lst)))))))


(defun n-elts (elt n)
  (if (> n 1)
      (list n elt)
    elt))




(defun uncompress (li)
  (if (null li)
      nil
    (let ((elt (car li))
	  (rest (uncompress (cdr li))))
      (if (consp elt)
	  (append (apply #'list-of elt)
		  rest)
	(cons elt rest)))))

(defun list-of (n elt)
  (if (zerop n)
      nil
    (cons elt (list-of (- n 1) elt))))


(nth 0 '(a b c))

(nthcdr 2 '(a b c))

(defun cxx ()
    (caddr '(2 3 44 5 6)))

(defun our-nthcdr (n lst)
  (if (zerop n)
      lst
    (our-nthcdr (- n 1) (cdr lst))))


;;(format t "Mapping Functions")
    
;; (mapcar)
;; (maplisp)

(defun our-mapcar (func list)
  (if (null list)
      nil
    (cons (funcall #'func (car list)) (our-mapcar func (cdr list)))))

;; Trees


;;(format t "Trees Lists")

(defun our-copy-tree (tree)
  (if (atom tree)
      tree
    (cons (our-copy-tree (car tree))
	  (our-copy-tree (cdr tree)))))


(defun our-subst (new old list)
  (if (eql old list)
      new
    (if (atom list)
	list
      (cons (our-subst new old (car list))
	    (our-subst new old (cdr list))))))


(defun len (list)
  (if (null list)
      0
    (+ (len (cdr list)) 1)))


(defun our-member (ber lst)
  (if (atom lst)
      lst
    (if (eql ber (car lst))
	lst
      (our-member ber (cdr lst)))))


(defun memberKeyworld ()
  (format t "~A~%" (member 'a '(b c d e a e r g)))
  (format t "~A~%" (member 'c '(e r d c e d s eq) :test #'equal))
  (format t "~A~%" (member 2 '((1) (2)) :test #'equal :key #'car))
  (format t "~A~%" (member 2 '((1) (2)) :key #'car :test #'equal)))

(defun memberIf ()
  (format t "~A~%" (member-if #'oddp '(2 3 4))))


(defun our-member-if (fnt lst)
  (if (atom lst)
      lst
    (if (funcall fnt (car lst))
	lst
      (our-member-if fnt (cdr lst)))))


(defun listProcessing ()
  (format t "~A~%~A~%~A~%~A~%"
	  (adjoin 's '(e x)) ;; adiction if element is not in the list
	  (union '(s c b) '(e r f g)) ;; union of lists
	  (intersection '(a b c) '(b b c)) ;; intersection 
	  (set-difference '(a b c d e) '(b e)))) ;; diference
	  

;;; Sequences

;; (format t "Sequences ~%")


(length '(a b c))

(subseq '(a v c d e r 3) 3)

(reverse '(2 3 5 5 4))

;; inprovised implementation of subseq, see later
;; # TODO
(defun our-inseq (lst con)
  (if (atom lst)
      lst
    (if (= con 0)
	lst
      (cons (car lst)
	    (out-inseq (cdr lst) (- con 1))))))
			       
(defun our-subseq (lst ini fni)
  (if (atom lst)
      lst
    (if (= ini 0)
	(our-inseq lst fni)
      (our-subseq lst (- ini 1) fni))))


;; polindrome verify
(defun mirror? (s)
  (let ((len (length s)))
    (and (evenp len)
	 (let ((mid (/ len 2)))
	   (equal (subseq s 0 mid)
		  (reverse (subseq s mid)))))))




(defun testSort ()
  (sort '(0 2 1 3 8) #'>))


(defun nthmost (n lst)
  (nth (- n 1)
       (sort (copy-list lst) #'>)))


(every #'oddp '(1 3 5))


;;; Stacks

(setf sx nil)

(push 'n sx)
(push 3 sx)
(push 'ns sx)
(push (cons 's nil) sx)
(pop sx)


(defun our-reverse (lst)
  (let ((acc nil))
    (dolist (elt lst)
      (push elt acc))
    acc))


(defun dottedlistsPushNew ()
  (let ((x '(a b)))
    (pushnew 'c x)
    (pushnew 'a x)
    x))


;;; Dotted Lists


(defun proper-list? (x)
  (or (null x)
      (and (consp x)
	   (proper-list? (cdr x)))))


;; (setf pair (cons 'a 'b))

(defun our-assoc (key alist)
  (and (consp alist)
       (let ((pair (car alist)))
	 (if (eql key (car pair))
	     pair
	   (our-assoc key (cdr alist))))))


(setf lls '((+ . "add") (- . "sub")))

(our-assoc '+ lls)


;; no side effects
(defun our-two-assoc (key alist)
  (and (consp alist)
       (if (eql key (car (car alist)))
	   (car alist)
	 (our-assoc key (cdr alist)))))


;; find path algoritm

(defun shortest-path (start end net)
  (bfs end (list (list start)) net))

(defun bfs (end queue net)
  (if (null queue)
      nil
    (let ((path (car queue)))
      (let ((node (car path)))
	(if (eql node end)
	    (reverse path)
	  (bfs end
	       (append (cdr queue)
		       (new-paths path node net))
	       net))))))

(defun new-paths (path node net)
  (mapcar #'(lambda(n)
	      (cons n path))
	  (cdr (assoc node net))))

;; (setf min '((a b c) (b c) (c d)))


;;; Garbage

(setf llst (list 'a 'b 'c))
(setf llst nil)

;; Summary

;; 1. A coons is a thow-part data structure. Lists are made of conses linked
;;; together.
; Cons are mede of two-parts, whiths the second is a list and de frist not
; needs to be a list, where else to be a atom.
;
;; 2. The predicate equal is less strict than eql. Essentially, it returns true
;;; if its arguments print the same.
; the equal checks the value of the variables, and the eql verify if the 
; two variables are the same.
;
;; 3. All Lisp objects behave like pointers. Your never have to manipulate
;;; pointers explicitly.
; the rules is true, but the lisp interprete opts to choice into a list of
; values and a variable, if a variable is less biger than a pointer of
; the data, then, lisp probably use the value root insted a pointer
;
;; 4. You can copy lists with copy-list, and join their element with append.
; the copy-list copy the values of a list past as return, its not a pointer of
; the variable the contains a list, and append insert data into set of values
; and return its, its not change the variable, if you needs to change the value,
; you needs to set the new set of value to the list
;
;; 5. Run-length encoding is a simple compression algorithm for use in
;;; restaurants.
; is usefull because the data is compress and the labor of the task is
; ultimized to done the maximum of one task in the vast set of padingins.
;
;; 6. Common Lisp has a variety of access functions defined in terms of 
;;; car and cdr.
; you can do make vast abstract api's for any cand of problem, the abstration
; left and rith is the best implemented in car and cdr, compine the difference
; betting, lists, atons, dotteds list and ends of lists, nil. The most exemplar
; functions is the abreviation function like caddr or cadr
;
;; 7. Mapping functions apply a function to successive elements, or succes-
;;; sive tails, of a list.
; mapping use the general patthern of function recursive calls, to maximise
; development, focussing in business rules and not code structure, logic 
; validation, the powerfull is wishful, the applications of map, create another
; list using the news values of the return of the lambda function pass as 
; paramethers.
;
;; 8. Operations on nested lists are sometimes considered as operations on
;;; trees.
; yes, the tree is a list of lists or a set of sets, then, the anatomy of 
; the lists in Lisp make the handler abstration like trees great.
;
;; 9. To judge a recursive function, you only have to consider whether it
;;; covers all the cases.
; Not, you only need to cover the stop step and prevent inifity loops, check the 
; stop desicion is work well, so, your don't realy needs to cover all cases,
; this come to becomes realy a mess, and you to becomes realy confusing, your justs 
; needs to keep in mind the function work for your problem, your don't needs to nows 
; who then covers the problem.
;
;; 10. Lists can be used to represent sets. Several build-in functions view 
;;; lists this way.
; yes, it's true, sets is easy to representate in bi-directional list walk
;
;; 11. Keyword arguments are optional, and are identify not by possition, but 
;;; by simbolic tags that presede them.
; yes, is the meta-data key:value of lisp to change the behavior of procedures
;
;; 12. Lists are subtypes of sequences. Common Lisp are a large number of sequence
;;; functions
; yes, some of this is maplist, mapcar, append, and so on
;
;; 13. A cons that isn't a proper list is called a dotted list
;;;
; yes, the notation of list is the end is a nil element, the dottedlist is 
; a two value of one cons, car and cdr
;
;; 14. Lists with consenses as elements can be used to represent a mapping. Such
;;; lists are called assoc-list.
; is a key:value by simbol used to acess the value in a sutch variable
;
;; 15. Automatic memory management saves you from dealing with memory allocation,
;;; but generating excessives garbage can meke programs slower
; yes, is good, but this is only ocorr in the instace of the same object
; used multiplo times, create a heap of mutch objects in yang garbage
;

;;;; Exercises

#||

Write this in box notation

(a) (a b (c d))
(b) (a (b (c (d))))
(c) (((a b) c) d)
(d) (a (b . c) . d)

||#

;; Write a version of union that preserves the order of the elements in the
; original lists:

; Works! ok
(defun my-new-onion (lis_now olds)
  (if (atom olds)
      lis_now
    (my-new-onion (append lis_now (list (car olds))) (cdr olds))))
    
;; Define a function that takes a list and return a list indicating the number of times
; each (eql) element appear, sorted from most commmon element to least common:
; > (occurrences '(a b a d a c d c a))
; ((A . 4) (C . 2) (D . 2) (B . 1))

;;; Declarative style programin functional
;;
; checks if the list is empty
(defun occurrences (list)
  (if (consp list)
      (occurrent-behavior nil list)
    nil))

;;
; make cells of dots
(defun create-dot (item lis)
  (cons item lis))

;;
; appendo dot to list of dots
(defun add-dot (item num lis)
  (cons (create-dot item num) lis))

;;
; Interfaces
(defun value-of-dot (dot)
  (cdar dot))

(defun key-of-dot (dot)
  (caar dot))

(defun value-of-one-dot (dot)
  (cdr dot))

(defun key-of-one-dot (dot)
  (car dot))

;;;
;; check List
(defun the-nex-in-list (now next)
  (eq (caar now) next))

;; using in
(defun exist-element (test lis)
    (and (not (null lis))
	 (or (eq test (caar lis))
	     (exist-element test (cdr lis)))))

;;
;; Deprecated !
(defun exist-element-from-list-in-list (list-one list-two)
  (defun exist-element (test lis)
    (and (not (null lis))
	 (or (eq test (car lis))
	     (exist-element test (cdr lis)))))
  (and (not (null list-one))
       (or (exist-element (caar list-one) list-two)
	   (exist-element-from-list-in-list (cdr list-one) list-two))))


;;
; up te value of list of dots
(defun up-the-dot (item lis)
  (defun update-dot (i test)
    (if (eql test (car i))
	(create-dot (car i) (+ (cdr i) 1))
	(create-dot (car i) (cdr i))))
  (if (not (null lis))
      (cons (update-dot (car lis) item)
	    (up-the-dot item (cdr lis)))
	nil))

;;
; short list of numbers
(defun short-list-cresent (lis)
  (sort lis #'<))

(defun short-a-list (list-to)
  (defun shorted (list-nums list-origin)
    (defun searcht (num list-org)
      (if (not (null list-org))
	  (if (eq (cdar list-org) num)
	      (car list-org)
	      (searcht num (cdr list-org)))))
    (if (not (null list-nums))
	(cons (searcht (car list-nums) list-origin)
	      (shorted (cdr list-nums) list-origin))))
  (defun scheme-something (fun list)
    (if (null list)
	list
	(cons (funcall fun list)
	      (scheme-something fun (cdr list)))))
  (let ((nums (scheme-something #'cdar list-to)))
    (setq nums (sort (copy-list nums) #'>))
    (shorted nums list-to)))

     
;;; (short-a-list '((C . 2) (D . 2) (B . 1) (A . 4)))
;;
; make list of repatitions
(defun occurrent-behavior (ocurrent lis)
  (if (null lis)
      (short-a-list ocurrent)
    (if (not (exist-element (car lis) ocurrent))
	(occurrent-behavior (add-dot (car lis) 1 ocurrent) (cdr lis))
      (occurrent-behavior (up-the-dot (car lis) ocurrent) (cdr lis)))))
;
;
;
;;;; 4. Why does (member '(a) '((a) (b))) return nil?
;;
;;; because its uses cdr with returns nil in a one item list
;;
;;;; 5. Suppose the function pos+ takes a list and returns a list of each element plus its position:
;; > (pos+ '(7 5 1 4))
;; (7 6 3 7)
;;

;; (a) Recursion
(defun pos+ (lst-pos)
  (defun pos-aps (acc pos-cont lis)
    (if (null lis)
	(reverse acc)
	(pos-aps (cons (+ (car lis) pos-cont)
		       acc)
		 (+ pos-cont 1)
		 (cdr lis))))
  (pos-aps nil 0 lst-pos))

;; (b) interation

(defun inter-pos+ (lst-pos)
  (let ((cont -1))
    (defun int (num)
      (setq cont (+ cont 1))
      (+ cont num))
    (loop for x in lst-pos
	collect (int x))))

;; (c) mapcar

(defun  mapcar-pos+ (lst)
  (let ((cont -1))
    (mapcar (lambda(x)
	      (setv cont (+ cont 1))
	      (+ cont x))
	    lst)))

;;
;;
;;; Define this function using (a) Recursion, (b) iteration, (c) mapcar.
;;
;;;; 6. After years of deliberation, a goverment commission has decided that lists
;;; should be represented by using the cdr to point to the frist element and the car
;;; to point to the rest of the list. Define the goverment version of the following
;;; functions:
;;


(defun I (i)
  i)

(defun lazy (arg)
  (lambda(fn)
    (funcall fn arg)))

;; (a) cons
(defun ocons (itemfor listfor)
  (lambda (fn)
    (funcall fn itemfor (lazy listfor))))

(defun ocar (ohcons)
  (funcall ohcons (lambda(fr sq)
		    (funcall sq 'I))))


(defun ocdr (ohcons)
  (funcall ohcons (lambda(fr sq)
		    fr)))

(defun typenow (typed somethingtotype)
  (ocons typed somethingtotype))

(defun typelistfor (typecheck)
  (lambda (tocheck)
    (if (eq (ocdr tocheck) typecheck)
	t
	nil)))

(setq typelistp (typelistfor 'list))
(setq typelistnolp (typelistfor 'nol))

(defun isfunction (item)
  (eq (type-of item) 'FUNCTION)) ; COMPILED-FUNCTION for CL-android
					; FUNCTION for sbcl


(defun getypen (some)
  (if (isfunction some)
      (ocar some)
      some))


(defun ourcons (somea someb)
  (if (isfunction someb)
      (typenow 'list (ocons somea someb))
      (typenow 'nol (ocons somea someb))))


(defun onullp (item)
  (if (eq (nocar item) 'nol)
      t
      nil))

(defun nolp (item)
  (eq item 'nol))

(defun nocar (item)
  (if (nolp item)
      'nol
      (ocar (getypen item))))

(defun nocdr (item)
  (if (nolp item)
      'nol
  (ocdr (getypen item))))

;; (b) list

(defun olist (&rest symbolic)
  (defun olist-aps (acc lst)
    (if (null (car lst))
	acc
	(olist-aps (ourcons (car lst)
			    acc)
		   (cdr lst))))
  (olist-aps 'nol (reverse symbolic)))



;; needs a flag for data structure handler: a type
;;; (d) member
;; Lambda, the Ultimate Opticode
(defun omember (item tsl)
  (defun omember-aps (lst item)
    (cond ((onullp lst)
	   'nol)
	  ((eq (nocdr lst) item)
	   lst)
	  (t
	   (omember-aps (nocar lst)
			item))))
  (omember-aps tsl item))





;; (a) cons
;; (b) list
;; (c) length (for lists)
;; (d) member (for lists; no keywords)
;;
;;;; 7. Modify the program in Figure 3.6 to use fewer cons cells.

;;; (Hint: Use dotted lists.)
;;
;;
;;;; 8. Define a function that takes a list and prints it in dot notation:
;;; > (showdots '(a b c))
;;; (A . (B . (C . NIL)))
;;
;;
;;;; 9. Write a program to find the longest finite path through a network
;;; represented as in section 3.15. The network may contain cycles.
;;;
;;
;;


    
