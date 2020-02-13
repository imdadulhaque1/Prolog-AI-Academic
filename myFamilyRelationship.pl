male(harun_orrosid).
male(ismail).
male(ishaque).
male(taleb).
male(khaybor).
male(imdadul).
male(durjoy).
male(nahid).
male(sohel).

female(hurjahan).
female(marzia).
female(rebeka).
female(sohana).
female(saheda).
female(shampa).
female(urmi).
female(nadira).
female(aysha).

parents(harun_orrosid, ismail).
parents(harun_orrosid, ishaque).
parents(harun_orrosid, sohana).
parents(harun_orrosid, saheda).
parents(hurjahan, ismail).
parents(hurjahan, ishaque).
parents(hurjahan, sohana).
parents(hurjahan, saheda).

parents(ismail, imdadul).
parents(ismail, shampa).
parents(marzia, imdadul).
parents(marzia, shampa).

parents(ishaque, durjoy).
parents(ishaque, urmi).
parents(rebeka, durjoy).
parents(rebeka, urmi).

parents(taleb, nahid).
parents(taleb, nadira).
parents(sohana, nahid).
parents(sohana, nadira).

parents(khaybor, sohel).
parents(khaybor, aysha).
parents(saheda, sohel).
parents(saheda, aysha).



father(X,Y):- parents(X,Y),male(X).

mother(X,Y):- parents(X,Y), female(X).

brother(X,Y):- male(X), parents(Z,X), parents(Z,Y), X\=Y.

sister(X,Y):- female(X), parents(Z,X), parents(Z,Y),  X\=Y.

/*sibling(X,Y):- male(X), female(Y), 
		parents(Z,X), parents(Z,Y), X\=Y, X\=Z.*/

grandfatherpaternal(X,Y):- parents(X,Z), parents(Z,Y), male(X).

grandmotherpaternal(X,Y):- parents(X,Z), parents(Z,Y), female(X).

grandfathermaternal(X,Y):- father(X,Z), mother(Z,Y), male(X).

grandmothermaternal(X,Y):- mother(X,Z), mother(Z,Y), female(X).

auntie(X,Y):- female(X),
		sister(X,Z), parents(S,X), parents(S,Z), parents(Z,Y).
uncle(X,Y):- male(X),
		brother(X,Z), parents(S,X), parents(S,Z), parents(Z,Y), X\=Y, X\=Z.

wife(X,Y):- female(X), 
		parents(X,Z), parents(Y,Z),  X\=Y.

husband(X,Y):- male(X), 
		parents(X,Z), parents(Y,Z), X\=Y.

/*

father(harun_orrosid, ismail).
father(harun_orrosid, ishaque).
father(harun_orrosid, sohana).
father(harun_orrosid, saheda).
father(ismail, imdadul).
father(ismail, shampa).
father(ishaque, durjoy).
father(ishaque, urmi).
father(taleb, nahid).
father(taleb, nadira).
father(khaybor, sohel).
father(khaybor, aysha).

mother(hurjahan, ismail).
mother(hurjahan, ishaque).
mother(hurjahan, sohana).
mother(hurjahan, saheda).
mother(marzia, imdadul).
mother(marzia, shampa).
mother(rebeka, durjoy).
mother(rebeka, urmi).
mother(sohana, nahid).
mother(sohana, nadira).
mother(saheda, sohel).
mother(saheda, aysha).

brother(ismail, sohana).
brother(ismail, saheda).
brother(ishaque, sohana).
brother(ishaque, saheda).
brother(imdadul, shampa).
brother(durjoy, urmi).
brother(nahid, nadira).
brother(sohel, aysha).

sister(sohana, ismail).
sister(sohana, ishaque).
sister(saheda, ismail).
sister(saheda, ishaque).
sister(shampa, imdadul).
sister(urmi, durjoy).
sister(nadira, nahid).
sister(aysha, sohel).

*/