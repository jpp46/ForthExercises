\ Problem 1:
\ What is the difference between DUP DUP and 2DUP?

1 2 dup dup
.s \ will be 1 2 2 2

1 2 2dup
.s \ will be 1 2 1 2

\ 2DUP works on the top 2 number (a pair) while dup works only on the top number.



\ Problem 2:
\ Write a phrase which will reverse the order of the top four items on the stack.

: rev4 ( n1 n2 n3 n4 -- n4 n3 n2 n1 ) swap 2swap swap ;



\ Problem 3:
\ Write a definition called 3dup which will duplicate the top 3 numbers on the stack.

: 3dup ( n1 n2 n3 -- n1 n2 n3 n1 n2 n3 ) dup 2over rot ;



\ Problem 4:
\ Write a definition for a^2 + ab + c with given stack effects ( c a b -- result ).

: eq1 ( c a b -- a^2 + ab + c ) over + * + ;



\ Problem 5:
\ Write a definition for (a-b)/(a+b) with given stack effects ( a b -- result ).

: eq2 ( a b -- a-b / a+b ) 2dup - rot rot + / ;



\ Problem 6:
\ Write a set of words to compute prison sentences for hardened criminals.

: convicted-of 0 ;
: homicide 20 + ;
: arson 10 + ;
: bookmaking 2 + ;
: tax-evasion 5 + ;
: will-serve . ." Years" ;
convicted-of arson homicide tax-evasion
will-serve



\ Problem 7:
\ You're the inventory programmer at Maria's Egg Ranch. Define a word called EGG.CARTONS which expects on the stack the total number of eggs laid by the chickens today and prints out the number of cartons that can be filled with a dozen each, as well as the number of left-over eggs.

: egg.cartons ( eggs -- cartons rem ) 12 /mod . ." Carton(s) and " . ." egg(s)" ;



