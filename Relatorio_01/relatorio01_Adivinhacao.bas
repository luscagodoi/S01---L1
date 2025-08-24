15 LET TARGET = INT(RND()*100)+1
20 INPUT "DE UM PALPITE DE 1 A 100: ";GUESS
30 IF VAL(GUESS) < TARGET THEN PRINT "O NUMERO ALVO É MAIOR QUE " + GUESS ELSE IF VAL(GUESS) > TARGET THEN PRINT "O NUMERO ALVO É MENOR QUE " + GUESS
40 IF VAL(GUESS) = TARGET THEN PRINT "PARABENS! O NUMERO ALVO E: " + TARGET ELSE GOTO 20
100 END

REM Faça um programa de adivinhação de números de 0 a 100.
REM O programa deve pedir que o usuário tente adivinhar o número correto.
REM Quando o palpite estiver errado, exiba uma mensagem indicando se o número correto é maior ou menor que o número digitado.
REM Quando o usuário acertar, exiba uma mensagem de congratulação.
REM Dica: use a função rnd
