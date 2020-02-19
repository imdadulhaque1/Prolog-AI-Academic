go:-
write("Enter two numbers: "),read(X),nl,read(Y),nl,
sum(X,Y),
sub(X,Y),
mul(X,Y),
div(X,Y).

sum(X,Y):- S is X+Y,
write("Summation: "),write(S),nl.

sub(X,Y):- Z is X-Y,
write("Substraction: "),write(Z),nl.

mul(X,Y):- M is X*Y,
write("Multiplication: "),write(M),nl.

div(X,Y):- D is X/Y,
write("Division: "),write(D).