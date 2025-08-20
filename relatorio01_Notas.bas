10  INPUT "NP1: ";NP1
20  INPUT "NP2: ";NP2
25  LET NPA = (VAL(NP1) + VAL(NP2)) / 2
30  IF NPA > 60 THEN  PRINT "APROVADO DIRETO" ELSE IF NPA < 30 THEN PRINT "REPROVADO DIRETO"
40  IF NPA > 60 OR NPA < 30 THEN END
50  INPUT "NP3: ";NP3
60  LET NPF = (NPA + VAL(NP3)) / 2
70  IF NPF > 50 THEN  PRINT "APROVADO PELA NP3" ELSE PRINT "REPROVADO PELA NP3"
100  END

REM Faça um programa que leia duas notas e calcule a média.
REM Se a média for acima de 60, exiba a mensagem "Aprovado direto".
REM Se a média for abaixo de 30, exiba a mensagem "Reprovado direto".
REM Caso a média esteja entre 30 e 60 (inclusive), solicite a inserção de uma nova nota, recalcule a média e:
REM Se a nova média for acima de 50, exiba "Aprovado pela NP3".
REM Caso contrário, exiba "Reprovado na NP3".
