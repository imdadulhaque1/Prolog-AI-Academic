go:-
    write('Enter four number: '),read(A),read(B),read(C), read(D),
    largest(A,B,C,D),
    slargest(A,B,C,D),
    tlargest(A,B,C,D),
    lowest(A,B,C,D).

largest(A,B,C,D):- A>B, A>C, A>D, write("A is the Largest Number !"),nl.
largest(A,B,C,D):- B>A, B>C, B>D, write("B is the Largest Number !"),nl.
largest(A,B,C,D):- C>A, C>B, C>D, write("C is the Largest Number !"),nl.
largest(A,B,C,D):- D>A, D>B, D>C, write("D is the Largest Number !"),nl.

