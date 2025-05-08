10 ; 10
(+ 5 3 4) ; 12
(- 9 1) ; 8
(/ 6 2) ; 3
( + (* 2 4) (- 4 6)) ; ( + 8 -2) = 6
(define a 3) ; a = 3
(define b (+ a 1)) ; b = 4
(+ a b (* a b)) ; (+ 3 4 (* 3 4)) = 19
( = a b) ; #f
(if (and (> b a ) (< b (* a  b)))
    b
    a) ; 4
(* (cond ( (> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1)) ; 16

( / (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5)))))
    (* 3 (- 6 2) (- 2 7)))

(define (sum-of-squares-of-largest-two a b c)
  (cond ((and (<= a b) (<= a c)) (+ (* b b) (* c c))) ; a — наименьшее
        ((and (<= b a) (<= b c)) (+ (* a a) (* c c))) ; b — наименьшее
        (else (+ (* a a) (* b b)))))                  ; c — наименьшее
(sum-of-squares-of-largest-two 1 2 3)

(define (a-plus-abs-b a b)
((if (> b 0) + -) a b))


(define (sumsquare a b)
(if (> a b)
0
(+ (* a a) (sumsquare (+ 1 a) b)) ))

; возводим в степень любое число
(define (to-the-power number power)
  (if (= power 0)
      1
      (* number (to-the-power number ( - power 1)))))

; используем возведение в степень числа и делаем проходку сумм степеней
(define (sum-power a b power)
  (if (> a b)
      0
      (+ (to-the-power a power) (sum-power (+ a 1) b power))))