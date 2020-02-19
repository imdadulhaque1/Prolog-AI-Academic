go:-
    write('Enter the limitation of the Loop: '), read(N),
    limit(1,N).
limit(1,N):-
    between(1,N,X),
    writeln(X),
    X>=N, !.
    limit(1,N).
