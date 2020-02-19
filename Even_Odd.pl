go:-
    write("Enter a number: "),read(X),
    even_odd(X).
even_odd(X):-  A is mod(X,2), 
	A=0, write("Even Number !").

even_odd(X):- A is mod(X,2), 
	A \= 0,
	write("Odd Number !").
