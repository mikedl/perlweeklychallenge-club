# picolisp code see https://picolisp.com/
# start a picolisp repl on the commandline:
#	pil +
# load my solution:
#	(load "ch-84.l")
# Part 1:
#	(rev -12345)
# Part 2:
#	(sqrs M1)
#
(de rev (x)
	(if (pre? "-" x) 
		(prinl (cons "-" (reverse (cdr (chop x)))))
		(prinl (reverse (chop x))))
	T)

# no arrays in picolisp,so use list of lists instead

(setq M1 (list  
	(list 0 1 0 1 )
	(list 0 0 1 0 )
	(list 1 1 0 1 )
	(list 1 0 0 1 )))

(setq M2 (list
       (list 1 1 0 1 )
       (list 1 1 0 0 )
       (list 0 1 1 1 )
       (list 1 0 1 1 )))

(setq M3 (list
       (list 0 1 0 1 )
       (list 1 0 1 0 )
       (list 0 1 0 0 )
       (list 1 0 0 1 )))

# return element of M @ x y
(de elem (M X Y)
	(car (nth (car (nth  M X)) Y)))

# Are the coners all 1s?
(de sq? (M X Y D)
	(and (=1 (elem M X Y))
		(=1 (elem M (+ X D) Y))
		(=1 (elem M X (+ Y D)))
		(=1 (elem M (+ X D) (+ Y D)))))

# scan matrix M for squares
(de sqrs (M)
	(let (cnt 0
	      len (dec (length M)))
		(for X len
			(for Y len
				(for D (- (length M) X)
					(cond ((sq? M X Y D)
		#			   (println "sq" X Y D)
					   (inc 'cnt))))))
		cnt))
