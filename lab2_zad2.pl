mezczyzna(bartek).
mezczyzna(maks).
mezczyzna(kuba).
mezczyzna(tomek).
mezczyzna(jerzy).
rodzic(bartek, maks).
rodzic(bartek, natalia).
rodzic(ola, maks).
rodzic(ola, natalia).
rodzic(kuba, natalia).
rodzic(kuba, olek).
rodzic(julia, bartek).
rodzic(tomek, ola).
rodzic(jerzy, tomek).

kobieta(X) :-
    \+mezczyzna(X).

ojciec(X, Y) :-
    mezczyzna(X),
    rodzic(Y, X).

matka(X, Y) :-
    kobieta(X),
    rodzic(Y, X).

corka(X, Y) :-
    kobieta(X),
    ojciec(X, Y);
    matka(X, Y).

brat_rodzony(X, Y) :-
    mezczyzna(X),
    rodzic(X, M),
    rodzic(Y, M),
    rodzic(X, O),
    rodzic(Y, O).

brat_przyrodni(X, Y) :-
    mezczyzna(X),
    rodzic(X, M),
    rodzic(Y, M),
    rodzic(X, O),
    rodzic(Y, Z),
    O \= Z. 

kuzyn(X, Y) :-
    rodzic(X, Z),
    rodzic(Y, V),
    rodzic(Z, K),
    rodzic(V, K).

dziadek_od_strony_ojca(X, Y) :-
    ojciec(T, Y),
    ojciec(X, T).

dziadek_od_strony_matki(X, Y) :-
    ojciec(X, M),
    matka(M, Y).

dziadek(X, Y) :-
    ojciec(X, R),
    rodzic(Y, R).

babcia(X, Y) :-
    matka(X, R),
    rodzic(Y, R).

wnuczka(X, Y) :-
    kobieta(Y),
    dziadek(X, Y);
    babcia(X, Y).

przodek_do2pokolenia_wstecz(X, Y) :-
    babcia(X, Y);
    dziadek(X, Y).

przodek_do3pokolenia_wstecz(X, Y) :-
    rodzic(B, X),
    przodek_do2pokolenia_wstecz(B, Y).
    