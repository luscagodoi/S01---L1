% Regras

especialista_comp(A) :-
    concluiu(A, D1),
    disciplina(D1, _, computacao),
    concluiu(A, D2),
    disciplina(D2, _, computacao),
    D1\=D2.

deficiencia_mat(Aluno) :-
    concluiu(Aluno, _),
    \+ (concluiu(Aluno, D), disciplina(D, _, matematica)).

% Query

%   especialista_comp(Aluno), deficiencia_mat(Aluno).