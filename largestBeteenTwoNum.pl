go:-
    write("Enter two number: "), read(A),read(B),
    largest(A,B).
largest(A,B):- A > B, write("A is greater !").
largest(A,B):- A < B, write("B is greater !").
