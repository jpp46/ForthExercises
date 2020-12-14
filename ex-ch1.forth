\ Problem 1:
\ Define a word called GIFT which, when executed, will type out the name of some gift.
: gift ." Albion Long Sword" ;
: giver ." Nina" ;
: thanks cr ." Dear " GIVER ." ," space ." Thanks for the " GIFT ." . " cr ;
thanks



\ Problem 2:
\ Define a word called TEN.LESS which takes a number on the stack, subtracts ten, and returns the answer on the stack.

: ten.less ( n -- n-10 ) 10 - ;
: ten.less ( n -- n-10 ) -10 + ;



\ Problem 3:
\ After entering the words in Problem 1, enter a new definition for GIVER to print someone else’s name, then execute THANKS again. Can you explain why THANKS still prints out the first giver’s name?

: giver ." Myself" ;
thanks

\ Because the THANKS has the old GIVER compiled into the dictionary already.
