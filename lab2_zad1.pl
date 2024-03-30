rodzic(bartek, maks).
rodzic(bartek, julia).
rodzic(kuba, maks).
rodzic(kuba, julia).
rodzic(martyna, julia).
rodzic(martyna, oskar).
rodzic(leosia, marek).
rodzic(leosia, ola).
rodzic(agnieszka, maks).
rodzic(agnieszka, martyna).
rodzic(natalia, bartek).
rodzic(natalia, leosia).
rodzic(tomek, kuba).

% A:
rodzenstwo(X, Y) :-
    rodzic(X, Z),
    rodzic(Y, Z),
    rodzic(X, K),
    rodzic(Y, K).

% B:
kuzyn(X, Y) :-
    rodzic(X, Z),
    rodzic(Y, V),
    rodzenstwo(Z, V).

% C:
tesc(X, Y) :-
    rodzic(Z, X),
    rodzic(V, Y),
    rodzic(W, Z),
    rodzic(W, V).

% D:
przybrane_dziecko(X, Y) :-
    rodzic(Z, Y),
    rodzic(Z, K),
    rodzic(X, K),
    \+rodzic(X, Y).

% E:
przyrodnie_rodzenstwo(X, Y) :-
    rodzic(X, K),
    rodzic(Y, K),
    rodzic(X, O),
    rodzic(Y, Z),
    O \= Z.

% F:
szwagier(X, Y) :-
    rodzic(Y, K),
    rodzic(D, K),
    \+rodzic(X, K),
    rodzic(W, X),
    rodzic(W, D).

% G:
rodzina_patologiczna(X, Y) :-
    rodzic(X, R),
    rodzic(X, L),
    rodzic(A, L),
    rodzic(Y, A),
    rodzic(Y, R).