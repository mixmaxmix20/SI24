ojciec(jan, jerzy).
ojciec(jerzy, janusz).
ojciec(jerzy, jozef).
dziadek(X, Z) :- ojciec(X, Y), ojciec(Y, Z).