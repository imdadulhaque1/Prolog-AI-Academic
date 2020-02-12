go:-
write('Enter the first number: '),read(X),nl,
write('Enter the second number: '),read(Y),nl,
write('Enter the third number: '),read(Z),nl,
sum(X,Y,Z).
sum(X,Y,Z):- S is (X+Y+Z)/3,
write("Average is: "),write(S).