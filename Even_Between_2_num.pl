go:-
    write('Enter the 1st and Last number of the Loop: '), read(I),read(S),
    evenloop(I,S).
%    oddloop(I,S).
evenloop(I,S):-
    between(I,S,X),
    A is mod(X,2),
    A = 0,
    writeln(X),
    X>=S, !.
    limit(I,S),nl.

%oddloop(I,S):-
%    between(I,S,X),
%    A is mod(X,2),
%    A \= 0,
%    writeln(X),
%    X>=S, !.
%    limit(I,S).