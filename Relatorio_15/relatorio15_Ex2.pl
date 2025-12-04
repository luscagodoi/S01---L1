% Regras
aluno_apto(A, D) :-
    disciplina(D, _, AR),
    AR\=fundamental,
    prerequisito(D, M),
    \+ falta_concluir(A, M).

% Query
%   aluno_apto(joao, D).

%   aluno_apto(maria, inteligencia_artificial).