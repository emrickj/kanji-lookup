10 OPEN "kjfile.dat" FOR RANDOM ACCESS READ AS #1 LEN = 256
20 FIELD #1, 2 AS A$, 20 AS B$, 2 AS C$
30 NR = LOF(1) / 256
40 FL = 0: INPUT "Enter kanji character to search:", KJ$
45 IF KJ$ = "" THEN GOTO 130
50 FOR N = 1 TO NR
60 GET #1, N
70 IF INSTR(KJ$, A$) THEN PRINT : PRINT "Kanji " + A$ + " you typed is in the file.": PRINT : PRINT "Meaning: "; B$: PRINT : FL = 1
80 NEXT
90 IF FL = 0 THEN BEEP: PRINT : PRINT "Kanji you typed is not in the file.": PRINT
100 GOTO 40
130 CLOSE

