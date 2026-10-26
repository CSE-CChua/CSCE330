% Problem 1. (4 points) Consider the following knowledge based of birth_year
% and current_year. 

birth_year(donna,1996).
birth_year(andy,1997).
current_year(2026).

% define a predicatre age(Person, X) such that Person's age is X. 
age(Person,X) :- 
    birth_year(Person, BirthYear),
    current_year(CurrentYear),
    X is CurrentYear - BirthYear.

% Problem 2. (4 points) Consider the following definition of
% location(X, Y): X is located in Y. 
location(desk, office).
location(computer, office).
location(flashlight, office).
location(envelope, desk).
location(stamp, envelope).
location(key, envelope).

% Define the predicate is_contained_in(X, Y) to find the X that is contained in Y, including the nested ones. 

is_contained_in(X, Y) :- 
    location(X, Y).
is_contained_in(X, Y) :-
    location(X, Z),
    is_contained_in(Z, Y).


% Problem 3 (4 points) Consider the following predicate parent/2. 


% parent(X, Y): X is parent of Y
parent(patch,spot).
parent(patch,fluffy).
parent(fang,spot).
parent(patch,tommy).
parent(fang,tommy).
parent(kitty,ranger).
parent(fairy,fang).
parent(frodo,fang).
parent(frodo,kitty).

% Define a predicate ancestor(X, Y): X is an ancestor of Y.
ancestor(X, Y) :- 
    parent(X, Y).
ancestor(X, Y) :-
    parent(X,Z),
    ancestor(Z, Y). 

% Problem 4. (4 points) Define the summation function as a predicate in Prolog
% that add from 0 to n. e.g. sum(4, X), X = 0+1+2+3+4. You may have more than
% one clause for the sum. 
sum(0, 0).
sum(N, N + SumPrev) :- 
    N > 0,
    N1 is N - 1,
    sum(N1, SumPrev).











