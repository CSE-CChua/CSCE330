% Problem 1.
% 1. (1 point) Define exactly_3(X), it is true if X is a list with exactly three elements.
exactly_3([_, _, _]).

% 2. (1 point) Define at_least_3(X), it is true if X is a list with at least three elements.
at_least_3([_, _, _|_]).

% 3. (2 points) Define at_most_3(X), it is true if x is list with at most three elements.
at_most_3([]).
at_most_3([_]).
at_most_3([_, _]).
at_most_3([_, _, _]).

% Problem 2 (2 points). Use the 'append' predicate to define a predicate just_before(X, Y, Z)
% such that it holds when X appears just before Y as an element of the list Z.
% E.g., just_before(3,4, [1,2,3,4,5,6]). returns true.
% just_before(3,5, [1,2,3,4,5,6]). returns false.

just_before(X, Y, Z) :- 
    append(_, [X, Y | _], Z). 


% Problem 3. (2 points). Consider the following mystery predicates p and q. 

p(X) :- q(X, [], X).
q([], Y, Y).
q([H|T], Y, Z) :- q(T, [H|Y], Z).


% Describe in English the lists X for which the predicate p holds.
% Please put your answer into a prolog comment. 

% p(X) holds when X is a palindrome.
% q reverses the list using an accumulator, so p just checks if the list is the same as its reverse.


% Problem 4 (4 points) Use recursion to define the following remove predicate. 
% remove(X, Y, Z): Removes all occurrences of X from the List Y to produce Z.
remove(_, [], []).
remove(X, [X|T], Z) :- 
    remove(X, T, Z).
remove(X, [Y|T], [Y|Z]) :- 
    X \= Y, 
    remove(X, T, Z).


% Problem 5 (4 point) Nth element. Define nth(N, L, X) with 1-based indexing. 
% E.g. nth(2, [a,b,c], X) returns X = b
nth(1, [H|_], H).
nth(N, [_|T], X) :- 
    N > 1, 
    N1 is N - 1, 
    nth(N1, T, X).
