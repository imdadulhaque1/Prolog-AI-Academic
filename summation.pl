go:-
write('Enter the first number: '),read(X),nl,
write('Enter the second number '),read(Y),nl,
sum(X,Y).
sum(X,Y):- S is X+Y,
write('Summation: '),write(S).