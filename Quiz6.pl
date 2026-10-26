my_reverse([],[]).

my_reverse([H|T], R) :- my_reverse(T, Y),
                        join(Y, [H], R).
