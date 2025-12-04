% Regras

alto_impacto(D) :-
    disciplina(D, C, _),
	C>5,
	prerequisito(D1, D),
	prerequisito(D2, D),
	D1\=D2.

% Query

%    disciplina(D, 4, matematica),
%    \+ prerequisito(_, D).