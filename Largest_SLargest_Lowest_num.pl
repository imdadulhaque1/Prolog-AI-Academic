go:-
    write('Enter Three number: '),read(A),read(B),read(C),
    largest(A,B,C),
    slargest(A,B,C),
    lowest(A,B,C).

largest(A,B,C):- A>B, A>C, write("A is the Largest Number !"),nl.
largest(A,B,C):- B>A, B>C, write("B is the Largest Number !"),nl.
largest(A,B,C):- C>A, C>B, write("C is the Largest Number !"),nl.

slargest(A,B,C):- A<B, A>C, write("A is the second Largest Number !"),nl.
slargest(A,B,C):- A>B, A<C, write("A is the second Largest Number !"),nl.
slargest(A,B,C):- B<A, B>C, write("B is the second Largest Number !"),nl.
slargest(A,B,C):- B>A, B<C, write("B is the second Largest Number !"),nl.
slargest(A,B,C):- C<A, C>B, write("C is the second Largest Number !"),nl.
slargest(A,B,C):- C>A, C<B, write("C is the second Largest Number !"),nl.

lowest(A,B,C):- A<B, A<C, write("A is the Lowest Number !"),nl.
lowest(A,B,C):- B<A, B<C, write("B is the Lowest Number !"),nl.
lowest(A,B,C):- C<A, C<B, write("C is the Lowest Number !"),nl.

