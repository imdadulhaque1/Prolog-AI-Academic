male(abid).
male(prince).
male(sopon).
female(riya).
female(suma).

parents(abid,prince).
parents(abid,riya).
parents(riya,sopon).
parents(riya,suma).

father(X,Y):- parents(X,Y),
	male(X).
mother(X,Y):- parents(X,Y),
	female(X).

