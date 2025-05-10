; FUNCTIONS AS DATA
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

; GIVE A FUNCTION AS AN ARGUMENT TO ANOTHER FUNCTION
(define (sum-power FN a b)
  (if (> a b)
      0
      (+ (FN a) (sum-power FN (+ a 1) b))))
(define (square a)
  (* a a))
(sum-power square 3 5)


(member `as `(asdasdfd asdf as))

; LAMBDA AS A WAY TO DEFINE A FUNCTION
(define square (lambda (x) (* x x)))
(square 123)
square

; CONDITIONAL
(define (abs2 x)
  (cond ((< x 0) (- x))
        ((= x 0) 0)
        ((> x 0) x)))
(abs2 -3)

;IF ELSE
(define (abs3 x)
  (if (< x 0)
      (- x)
      x))
(abs3 -3)

;SQUARE ROOT

;averaging two numbers
(define (average x y)
  (/ (+ x y) 2))

; look if the guess is good enough
(define (try guess x)
  (if (good-enough? guess x)
      guess
      (try (improve guess x) x)))

;the square root function
(define (sqrt1 x) (try 1 x))

; (x + g/x) / 2 for the next guess
(define (improve guess x)
  (average guess (/ x guess)))

; see if the difference between a square guess and the number is small enough
(define (good-enough? guess x)
  (< (abs(- (square guess) x)) 0.001))
(sqrt1 9)