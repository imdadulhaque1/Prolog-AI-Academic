go:-
   write("Enter a number: "),read(N),
   A is 0,
   B is 1,
   write(A),write(' , '),write(B),write(' , '),
   fibonacci(N,A,B).

fibonacci(N,A,B):- 
   (
	N<2;
	C is A+B, write(C),write(' , '),
	D is B, 
	E is C,
	M is N-1, 
	fibonacci(M,D,E)
   ).
	