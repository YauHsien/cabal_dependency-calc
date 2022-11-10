suite(Item, Suite) :-
    dependency(Item, Ver, _),
    suite(Item, Ver, [], Suite).

suite(base, Ver, Acc, Suite) :-
    accept(base-Ver, Acc, Suite),
    !.
suite(Item, Ver, Acc, Suite) :-
    dependency(Item, Ver, Deps),
    maplist([(Item2,Range2),Item2-Ver2] >> candidate(Item2,Range2,Ver2),
            Deps,
            List),
    accept(List, [Item-Ver|Acc], Acc2),
    !,
    findall(Suite,
            (member(I0-V0, List),
             suite(I0, V0, Acc2, Suite)),
            List2),
    append(List2, Suite0),
    setof(X, member(X,Suite0), Suite).

accept([], Acc, Acc) :- !.
accept([H|T], Acc, Result) :- !,
    accept(H, Acc, Acc2),
    accept(T, Acc2, Result).
accept(Item-Ver, Acc, Acc) :-
    member(Item-Ver, Acc),
    !.
accept(Item-Ver, Acc, [Item-Ver|Acc]) :-
    once((member(Item0-_, Acc),
          Item == Item0)),
    !,
    fail.
accept(Item-Ver, Acc, [Item-Ver|Acc]).

candidate(Item, (any,any), Ver) :-
    candidate(Item, any, Ver).
candidate(Item, any, Ver) :- !,
    dependency(Item, Ver, _).
candidate(Item, Ver, Ver) :-
    (N, _) = Ver,
    integer(N),
    !,
    candidate(Item, (Ver,Ver), Ver).
candidate(Item, (L_bound, U_bound), Ver) :-
    L_bound == U_bound,
    !,
    dependency(Item, Ver, _),
    L_bound == Ver.
candidate(Item, (L_bound, U_bound), Ver) :-
    dependency(Item, Ver, _),
    feasible(L_bound, Ver, U_bound).

feasible(L_bound, Ver, U_bound) :-
    norm(L_bound, A),
    norm(Ver, B),
    A @=< B,
    norm(U_bound, C),
    B @< C.

norm(N, (N,0,0,0)) :- integer(N), !.
norm((A,B,C,D), (A,B,C,D)) :- !.
norm((A,B,C), (A,B,C,0)) :- !.
norm((A,B), (A,B,0,0)).

dependency(Item, Ver, Deps) :-
    d(Item, Ver, Deps).

d(base,(4,17,0,0),[]).
d(base,(4,16,4,0),[]).
d(base,(4,16,3,0),[]).
d(base,(4,16,2,0),[]).
d(base,(4,16,1,0),[]).
d(base,(4,16,0,0),[]).
d(base,(4,15,1,0),[]).
d(base,(4,15,0,0),[]).
d(base,(4,14,3,0),[]).
d(base,(4,14,2,0),[]).
d(base,(4,14,1,0),[]).
d(base,(4,14,0,0),[]).
d(base,(4,13,0,0),[]).
d(base,(4,12,0,0),[]).
d(base,(4,11,1,0),[]).
d(base,(4,11,0,0),[]).
d(base,(4,10,1,0),[]).
d(base,(4,10,0,0),[]).
d(base,(4,9,1,0),[]).
d(base,(4,9,0,0),[]).
d(base,(4,8,2,0),[]).
d(base,(4,8,1,0),[]).
d(base,(4,8,0,0),[]).
d(base,(4,7,0,2),[]).
d(base,(4,7,0,1),[]).
d(base,(4,7,0,0),[]).
d(base,(4,6,0,1),[]).
d(base,(4,6,0,0),[]).
d(base,(4,5,1,0),[]).
d(base,(4,5,0,0),[]).
d(base,(4,4,1,0),[]).
d(base,(4,4,0,0),[]).
d(base,(4,3,1,0),[]).
d(base,(4,3,0,0),[]).
d(base,(4,2,0,2),[]).
d(base,(4,2,0,1),[]).
d(base,(4,2,0,0),[]).
d(base,(4,1,0,0),[]).
d(base,(4,0,0,0),[]).
d(base,(3,0,3,2),[]).
d(base,(3,0,3,1),[]).
d(errors,(2,3,0),[(base,(4,7),5)]).
d(errors,(2,2,5),[(base,(4,5),5)]).
d(errors,(2,2,4),[(base,(4,5),5)]).
d(errors,(2,2,3),[(base,(4,5),5)]).
d(errors,(2,2,2),[(base,(4,5),4,11)]).
d(errors,(2,2,1),[(base,(4,5),4,11)]).
d(errors,(2,2,0),[(base,(4,5),4,11)]).
d(errors,(2,1,3),[(base,4,4,11)]).
d(errors,(2,1,2),[(base,4,4,11)]).
d(errors,(2,1,1),[(base,4,5)]).
d(errors,(2,1,0),[(base,4,5)]).
d(errors,(2,0,1),[(base,4,5)]).
d(errors,(2,0,0),[(base,4,5)]).
d(errors,(1,4,7),[(base,4,5)]).
d(errors,(1,4,6),[(base,4,5)]).
d(errors,(1,4,5),[(base,4,5)]).
d(errors,(1,4,4),[(base,4,5)]).
d(errors,(1,4,3),[(base,4,5)]).
d(errors,(1,4,2),[(base,4,5)]).
d(errors,(1,4,1),[(base,4,5)]).
d(errors,(1,4,0),[(base,4,5)]).
d(errors,(1,3,1),[(base,4,4,7)]).
d(errors,(1,3,0),[(base,4,4,7)]).
d(errors,(1,2,1),[(base,4,5)]).
d(errors,(1,2,0),[(base,4,5)]).
d(errors,(1,1,1),[(base,4,5)]).
d(errors,(1,1,0),[(base,4,5)]).
d(errors,(1,0,0),[(base,4,5)]).
d(win32,(2,13,4,0),[(base,(4,5),5)]).
d(win32,(2,13,3,0),[(base,(4,5),5)]).
d(win32,(2,13,2,1),[(base,(4,5),5)]).
d(win32,(2,13,2,0),[(base,(4,5),5)]).
d(win32,(2,13,1,0),[(base,(4,5),5)]).
d(win32,(2,13,0,0),[(base,(4,5),5)]).
d(win32,(2,12,0,1),[(base,(4,5),5)]).
d(win32,(2,12,0,0),[(base,(4,5),5)]).
d(win32,(2,11,1,0),[(base,(4,5),5)]).
d(win32,(2,11,0,0),[(base,(4,5),5)]).
d(win32,(2,10,1,1),[(base,(4,5),5)]).
d(win32,(2,10,1,0),[(base,(4,5),5)]).
d(win32,(2,10,0,0),[(base,(4,5),5)]).
d(win32,(2,9,0,0),[(base,(4,5),5)]).
d(win32,(2,8,5,0),[(base,(4,5),5)]).
d(win32,(2,8,4,0),[(base,(4,5),5)]).
d(win32,(2,8,3,0),[(base,(4,5),5)]).
d(win32,(2,8,2,0),[(base,(4,5),5)]).
d(win32,(2,8,1,0),[(base,(4,5),5)]).
d(win32,(2,8,0,0),[(base,(4,5),5)]).
d(win32,(2,7,0,0),[(base,(4,5),5)]).
d(win32,(2,6,2,1),[(base,(4,5),5)]).
d(win32,(2,6,2,0),[(base,(4,5),5)]).
d(win32,(2,6,1,0),[(base,(4,5),5)]).
d(win32,(2,6,0,0),[(base,(4,5),5)]).
d(win32,(2,5,4,1),[(base,(4,5),5)]).
d(win32,(2,5,4,0),[(base,(4,5),5)]).
d(win32,(2,5,3,0),[(base,(4,5),5)]).
d(win32,(2,5,2,0),[(base,(4,5),5)]).
d(win32,(2,5,1,0),[(base,(4,5),5)]).
d(win32,(2,5,0,0),[(base,(4,5),5)]).
d(win32,(2,4,0,0),[(base,(4,5),5)]).
d(win32,(2,3,1,1),[(base,(4,5),5)]).
d(win32,(2,3,1,0),[(base,(4,5),5)]).
d(win32,(2,3,0,2),[(base,(4,5),5)]).
d(win32,(2,3,0,1),[(base,(4,7),5)]).
d(win32,(2,3,0,0),[(base,3,5)]).
d(win32,(2,2,2,0),[(base,3,4,13)]).
d(win32,(2,2,1,0),[(base,3,4,5)]).
d(win32,(2,2,0,2),[(base,3,4,5)]).
d(win32,(2,2,0,1),[(base,3,4,5)]).
d(win32,(2,2,0,0),[(base,0,4,5)]).
d(win32,(2,1,0,0),[(base,0,0)]).
d(win32,(2,1),[(base,0,0)]).
d(template-haskell,(2,19,0,0),[(base,(4,11),4,18)]).
d(template-haskell,(2,18,0,0),[(base,(4,11),4,17)]).
d(template-haskell,(2,17,0,0),[(base,(4,11),4,16)]).
d(template-haskell,(2,16,0,0),[(base,(4,11),4,15)]).
d(template-haskell,(2,15,0,0),[(base,(4,11),4,14)]).
d(template-haskell,(2,14,0,0),[(base,(4,9),4,13)]).
d(template-haskell,(2,13,0,0),[(base,(4,9),4,12)]).
d(template-haskell,(2,12,0,0),[(base,(4,8),4,11)]).
d(template-haskell,(2,11,1,0),[(base,(4,7),4,10)]).
d(template-haskell,(2,11,0,0),[(base,(4,7),4,10)]).
d(template-haskell,(2,10,0,0),[(base,(4,8),4,9)]).
d(template-haskell,(2,9,0,0),[(base,(4,7),4,8)]).
d(template-haskell,(2,8,0,0),[(base,(4,6),4,7)]).
d(template-haskell,(2,7,0,0),[(base,(4,5),4,6)]).
d(template-haskell,(2,6,0,0),[(base,(4,4),4,5)]).
d(template-haskell,(2,5,0,0),[(base,(4,3),4,4)]).
d(template-haskell,(2,4,0,1),[(base,(4,2),4,3)]).
d(template-haskell,(2,4,0,0),[(base,3,4,3)]).
d(template-haskell,(2,3,0,1),[(base,0,4,3)]).
d(template-haskell,(2,3,0,0),[(base,0,4,3)]).
d(template-haskell,(2,2,0,0),[(base,0,4,3)]).
d(win32-errors,(0,2,2,5),[(base,(4,6),5,0),(template-haskell,(2,8),2,17)]).
d(win32-errors,(0,2,2,4),[(base,(4,6),5,0),(template-haskell,(2,8),2,15)]).
d(win32-errors,(0,2,2,3),[(base,(4,6),5,0),(template-haskell,(2,8),2,14)]).
d(win32-errors,(0,2,2,1),[(base,(4,6),4,9),(template-haskell,(2,8),2,11)]).
d(win32-errors,(0,2,2),[(base,(4,6),4,8),(template-haskell,(2,8),2,10)]).
d(win32-errors,(0,2,1),[(base,(4,6),4,8),(template-haskell,(2,8),2,10)]).
d(win32-errors,(0,2,0,1),[(base,(4,6),4,8),(template-haskell,(2,8),2,9)]).
d(win32-errors,(0,2),[(base,(4,6),4,8),(template-haskell,(2,8),2,9)]).
d(win32-errors,(0,1),[(base,(4,5),4,9),(template-haskell,(2,8),2,9)]).
d(win32-services,(0,4,0,1),[(base,(4,5),5,0),(win32,(2,2),2,9),(win32-error2,(0,2),0,3)]).
d(win32-services,(0,4),[(base,(4,5),5,0),(win32,(2,2),2,8),(win32-error2,(0,2),0,3)]).
d(win32-services,(0,3),[(base,(4,5),4,9),(win32,(2,2),2,4),(win32-error2,(0,2),0,3)]).
d(win32-services,(0,2,5,1),[(base,(4,5),4,9),(win32,(2,2),2,4)]).
d(win32-services,(0,2,5),[(base,(4,5),4,9),(win32,(2,2),2,4)]).
d(win32-services,(0,2,4),[(base,(4,5),4,8),(errors,(1,4),1,5),(win32,(2,2),2,4)]).
d(win32-services,(0,2,3,1),[(base,(4,5),4,8),(errors,any),(win32,any)]).
d(win32-services,(0,2,3),[(base,(4,5),4,8),(errors,any),(win32,any)]).
d(win32-services,(0,2,2,1),[(base,(4,5),4,7),(errors,any),(win32,any)]).
d(win32-services,(0,2,2),[(base,(4,5),4,7),(errors,any),(win32,any)]).
d(win32-services,(0,2,1),[(base,(4,5),4,6),(errors,any),(win32,any)]).
d(win32-services,(0,2),[(base,(4,5),4,6),(errors,any),(win32,any)]).
d(win32-services,(0,1),[(base,(4,5),5,0),(errors,any),(win32,any)]).
