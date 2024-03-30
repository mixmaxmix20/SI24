lubi(jan, pawel).
lubi(pawel, krzysztof).
lubi(pawel, jan).
lubi(jan, bartek).
lubi(bartek, jan).
lubi(ala, bartek).
lubi(bartek, ala).
lubi(ola, robert).
kocha(ola, robert, kobieta).
kocha(robert, ola, mezczyzna).
kocha(ala, bartek, kobieta).
kocha(bartek, ala, mezczyzna).

przyjazn(X, Y) :-
    lubi(X, Y),
    lubi(Y, X).

niby_przyjazn(X, Y) :-
    lubi(X, Y);
    lubi(Y, X).

nieprzyjazn(X, Y) :-
    \+lubi(X, Y),
    \+lubi(Y, X).

loves(X, Y) :-
    kocha(X, Y, mezczyzna),
    kocha(Y, X, kobieta);
    kocha(X, Y, kobieta),
    kocha(Y, X, mezczyzna).

true_love(X, Y) :-
    lubi(X, Y),
    kocha(X, Y, mezczyzna),
    kocha(Y, X, kobieta);
    lubi(Y, X),
    kocha(X, Y, kobieta),
    kocha(Y, X, mezczyzna).