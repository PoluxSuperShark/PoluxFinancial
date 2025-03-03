           IDENTIFICATION DIVISION.
           PROGRAM-ID. Taxes. *> @CBL.Polux.bank.taxes

           ENVIRONMENT DIVISION.

           DATA DIVISION.

           *> VARIABLES & VALUES
           WORKING-STORAGE SECTION.
           01 SALARY   PIC 9(6)V99 VALUE 0.
           01 TAX      PIC 9(6)V99 VALUE 0.
           01 MESSAGE  PIC X(50) VALUE "Enter salary".
           01 FIN      PIC X VALUE 'N'.

           PROCEDURE DIVISION.

           *> MAIN PROCEDURE
           MAIN-PROCESS.
               DISPLAY "This program calcs tax on salary"
               PERFORM ASK-SALARY
               PERFORM CALCTAX
               PERFORM DISPLAY-RESULT
               STOP RUN.

           *> FUNCTIONS

               *> ASK SALARY TO USER
           ASK-SALARY.
               DISPLAY MESSAGE
               ACCEPT SALARY.

               *> CALCULATE TAX
           CALCTAX.
               COMPUTE TAX = SALARY * 0.03.

               *> VALUE DISPLAYING
           DISPLAY-RESULT.
               DISPLAY TAX
               DISPLAY "Finish !". *> PROGRAM FINISHED
