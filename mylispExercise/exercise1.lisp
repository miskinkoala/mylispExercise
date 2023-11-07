#| 
1. Write the Lisp expressions for the following maths expressions, and try evaluating them:

2*3 + 7*8

3*4*5

-1 * 2 + 3
|#



(+ (* 2 3) (* 7 8))

(* 3 4 5)

(+ 3 (* -1 2))

;;;;;


(+(random 6) 1)




;;;;;;




#|

1. Write an expression that will construct this list:

(1 (2 (3 4)))

Then try it out to check your answer.

2. Write an expression that will construct a list of two random numbers, each from 0 to 9.

|#

(list 1 (list 2 (list 3 4)))

(list (random 10) (random 10))


#|
1. Predict what the following Lisp expressions will give, and then check your answers by evaluating them:

(list (list 2 3) (list 4 5))

(list '(list 2 3) '(list 4 5))

'(list (list 2 3) (list 4 5))

 |#
#| 
((2,3),(4,5))

((list 2 3), (list 4 5))

(list (2,3) (4,5))
|#

#|
We can write the average procedure as follows:

(defun average (1st-number 2nd-number)
  (/ (+ 1st-number 2nd-number) 2))


1- Define a procedure square that returns the square of a number. Check that:


2- Define a procedure triangular that gives the nth triangular number defined as n(n+1)/2, and check that:

3- Define a procedure two-dice that returns the total result of throwing two dice.

 |#

 (defun square (number)
    (* number number)
        
    )

(defun dice ()
    (+ (+ 1 random 6) (+ 1 random 6))

)



#|  Exercises
1. Convert between km and miles

Define a variable using defparameter to represent:

1 kilometer = 0.621371192 miles

Use this to define two procedures, convert-km and convert-miles, that convert miles to km and km to miles,
 and check that 80 km converts to about 50 miles.
2. Find the average of three numbers

Define a procedure average3 that finds the average of three numbers.

Check that:

(average3 21 7 8)

gives 12.
3. Cube the sum of two numbers

Here's a procedure cubesum that calculates (a + b) x (a + b) x (a + b):

(defun cubesum (a b)
  (* (+ a b) (+ a b) (+ a b)))

Use let* to write it so (a + b) is only calculated once.

Check that:

(cubesum 3 4)

gives 343.

|#


(defun convertToMiles (kmValue)
  (* kmvalue 0.62)

)

(defun average3 (num1 num2 num3)
  (+ num1 (+ num2 num3))
)

(defun cubesum (a b)
  (let* (((sum (+ a b)))
  (* sum (* sum sum))
  ))


)


#|


Exercises
1. Swap the first two items in a list

Write a procedure swap to exchange the first two items of a list. Check that:

(swap '(9 8 7 6))

gives:

(8 9 7 6)

2. Duplicate the first item in a list

Write a procedure dup to duplicate the first item in a list, Check that:

(dup '(0 1 2 3))

gives:

(0 0 1 2 3)

3. Return a random item from a list

Write a procedure random-elt that returns a random element of a list. For example:

(random-elt '(11 22 33 44))

would randomly return one of the four numbers. Hint: use nth and random.
4. Return the last item in a list

Write a procedure last-elt which returns the last item in a list. For example:

(last-elt '(1 2 3 4))

should return 4.

5. write insert prosocuder your own

 |#



(defun swap (liste)
  (let* ( (first (nth 1 (liste))))
          (second (nth 2 (liste)))
          ((new_list rest (rest liste)))
          (cons first new_list)
          (cons second new_list)

  )

  )



(defun dup (liste)
  (cons (first liste) liste)
)

(defun randList (liste)
  (nth (random (length liste)) liste)

  )

(defun last-elt(liste)
  (first (reverse liste))
)


#|
CL-USER > (length "Lisp")

CL-USER > (concatenate 'string "band" "age")
"bandage"


CL-USER > (subseq "averylongword" 5 9)
"long"

(defun piglatin (word)
 (concatenate 'string (subseq word 1) (subseq word 0 1) "ay"))



Exercises
1. Reverse the middle letters of a word

Write a procedure midverse to reverse all but the first and last letters of a word. For example:

(midverse "retinues")

becomes "reunites". Check that

(midverse (midverse word))

leaves the word unchanged.
2. Rotate a string n places to the left

Write a procedure rotate that rotates a string n characters to the left. So, for example:

(rotate "mousetrap" 5)

should give:

"trapmouse"

 |#


#|
    (format t "The answer is ~a." (* 2 3))

    will return:

    "The answer is 6."



    Exercises

    1. Use format to write a story-writing program. The procedure story should 
    take a name, food, and colour; for example:

    (story "Lisa" "cheese" "green")

    and produce a story like:

    There once was a princess called Lisa who liked cheese. One day Lisa found some green cheese and ate so much that she died. The end.

 |#

(defun story (name food colour)
  (format t "There once was a princess called ~a who liked ~a. 
  One day ~a found some ~a ~a and ate so much that she died. The end." name food name colour food)

  )


#|
Is something a number? numberp

CL-USER > (numberp 2)
T


Testing for nil: null



Exercise
  1. Test whether a string is a palindrome

  Write a procedure palindrome? to test whether a string is a palindrome.

  Check that:

  (palindrome? "madam")

  gives T.
  2. Test whether an object is a list of two numbers

  Write a procedure numberpair? that returns T if its parameter is a list of two numbers like (2 3), and nil otherwise.

  Check that:

  (numberpair? '(45 67))

  is T, and:

  (numberpair? '("cat" "dog"))

  is nil.
  3. Write a piglatin translator

  Improve the piglatin program in Strings to cope with words beginning with a vowel. The rule is that if the word begins with a vowel you add "way" on the end, so for example:

  "pig" becomes "igpay"

  but

  "ant" becomes "antway"

 |#



