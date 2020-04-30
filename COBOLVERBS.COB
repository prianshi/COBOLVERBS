      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. VERBS1.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 A PIC 999 VALUE 90.
       01 B PIC 999 VALUE 20.
       01 C PIC 999 VALUE 30.
       01 D PIC 999 VALUE 40.
       01 E PIC 9(2)V9(2) VALUE 44.5.
       01 H PIC 9(2)V9(2) VALUE 33.2.
       01 G PIC 9(2).
       01 I PIC 99 VALUE 77.
       01 J PIC 9(2).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY " ".
           DISPLAY "A=" A " B=" B " C=" C " D=" D
           ADD A,B TO C.
           DISPLAY "ADD: " "A=" A " B=" B " C=" C " D=" D.
           SUBTRACT D FROM A.
           DISPLAY "SUB: " "A=" A " B=" B " C=" C " D=" D.
           MULTIPLY A BY B.
           DISPLAY "MUL: " "A=" A " B=" B " C=" C " D=" D.
           DIVIDE A INTO C.
           DISPLAY "DIV: " "A=" A " B=" B " C=" C " D=" D.
           DISPLAY " ".
           ADD E TO H GIVING G ROUNDED.
           DISPLAY "ROUND: " "E=" E " H=" H " G=" G .
           ADD E TO I GIVING J SIZE ERROR PERFORM 0001
                                       NOT SIZE ERROR PERFORM 0002.
           DISPLAY "ROUND: " "E=" E " I=" I " J=" J .                           
           STOP RUN.
           
       0001.
       DISPLAY "SIZE ERROR".
       0002.
       DISPLAY "NO SIZE ERROR".
       END PROGRAM VERBS1.


