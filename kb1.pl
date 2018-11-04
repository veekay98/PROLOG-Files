male(vig).
male(hari).
male(shiv).
male(zak).
male(sasi).
male(sujith).

female(rekha).
female(resmy).
female(ani).
female(radha).

father(sujith,sanju).
mother(sujith,rekha).
mother(ani,resmy).
mother(resmy,vig).
father(hari,vig).
father(shiv,hari).
father(sasi,resmy).
mother(radha,hari).
sister(rekha,resmy).
parent(A,B) :- father(A,B);mother(A,B).
brother(A,B) :- father(C,A),father(C,B),mother(D,A),mother(D,B),not(=(A,B)),male(A). 
sister(A,B) :- father(C,A),father(C,B),mother(D,A),mother(D,B),not(=(A,B)),female(A). 
sibling(A,B) :- brother(A,B);sister(A,B).
uncle(A,B) :- brother(A,C),(father(C,B);mother(C,B)).
aunt(A,B) :- sister(A,C),(father(C,B);mother(C,B)).
cousin(A,B) :- (uncle(C,B);aunt(C,B)),parent(C,A).
father(hari,zak).
mother(resmy,zak).
paternal_grandfather(Z,X) :- father(Z,Y),father(Y,X).
maternal_grandmother(Z,X) :- mother(Z,Y),mother(Y,X).
paternal_grandmother(Z,X) :- mother(Z,Y),father(Y,X).
maternal_grandfather(Z,X) :- father(Z,Y),mother(Y,X).
