male(vignesh).
male(hari).
male(sivadasan).
male(vysakh).
male(sasidharan).
male(sujith).
male(vaishnav).
male(vishnu).
male(jayachandran).

female(praveena).
female(seema).
female(vedhika).
female(gopika).
female(thanmaya).
female(rekha).
female(resmy).
female(jayasree).
female(radha).
female(sanjna).

father(sujith,sanjna).
mother(rekha,sanjna).
mother(jayasree,resmy).
mother(resmy,vignesh).
father(hari,vignesh).
father(sivadasan,hari).
father(sasidharan,resmy).
mother(radha,hari).
father(sasidharan,rekha).
mother(jayasree,rekha).
father(hari,vysakh).
mother(resmy,vysakh).
father(sivadasan,vishnu).
father(sivadasan,jayachandran).
father(vishnu,vaishnav).
father(vishnu,vedhika).
father(jayachandran,gopika).
father(jayachandran,thanmaya).
mother(radha,vishnu).
mother(radha,jayachandran).
mother(praveena,vaishnav).
mother(praveena,vedhika).
mother(seema,gopika).
mother(seema,thanmaya).

married(hari,resmy).
married(sasidharan,jayasree).
married(sivadasan,radha).
married(vishnu,praveena).
married(jayachandran,seema).
married(sujith,rekha).




parent(A,B) :- father(A,B);mother(A,B).
brother(A,B) :- father(C,A),father(C,B),mother(D,A),mother(D,B),not(=(A,B)),male(A). 
sister(A,B) :- father(C,A),father(C,B),mother(D,A),mother(D,B),not(=(A,B)),female(A). 
sibling(A,B) :- brother(A,B);sister(A,B).
uncle(A,B) :- brother(A,C),(father(C,B);mother(C,B)).
aunt(A,B) :- sister(A,C),(father(C,B);mother(C,B)).
cousin(A,B) :- ((uncle(C,B);aunt(C,B)),parent(C,A));((uncle(C,A);aunt(C,A)),parent(C,B)).
uncle(A,B) :- married(A,C),aunt(C,B).
aunt(A,B):- married(A,C),uncle(C,B).

paternal_grandfather(Z,X) :- father(Z,Y),father(Y,X).
maternal_grandmother(Z,X) :- mother(Z,Y),mother(Y,X).
paternal_grandmother(Z,X) :- mother(Z,Y),father(Y,X).
maternal_grandfather(Z,X) :- father(Z,Y),mother(Y,X).

ancestor(A,B) :-  father(A,B);mother(A,B);maternal_grandfather(A,B);maternal_grandmother(A,B);paternal_grandfather(A,B);paternal_grandmother(A,B).
descendant(A,B) :-  father(B,A);mother(B,A);maternal_grandfather(B,A);maternal_grandmother(B,A);paternal_grandfather(B,A);paternal_grandmother(B,A).