      ******************************************************************
      *     I D E N T I F I C A T I O N   D I V I S I O N              *
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. COBOLTEMPLATE.
       AUTHOR. SLANGE-DEV.
       INSTALLATION. 01-JUL-2024.
       DATE-WRITTEN. 01-JUL-2024.
       DATE-COMPILED. 01-JUL-2024.
       SECURITY. NORMAL.

      ******************************************************************
      *     E N V I R O N M E N T   D I V I S I O N                    *
      ******************************************************************
       ENVIRONMENT DIVISION.

      ******************************************************************
      *     C O N F I G U R A T I O N   S E C T I O N                  *
      ******************************************************************
       CONFIGURATION SECTION.
      * SOURCE-COMPUTER. LPAR1-ZOS.
      * OBJECT-COMPUTER. LPAR2-ZOS.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

      ******************************************************************
      *     I N P U T - O U T P U T   S E C T I O N                    *
      ******************************************************************
      * THIS INPUT-OUTPUT SECTION CONTAINS INFORMATION ABOUT ALL THE   *
      * FILES TO BE USED IN YOUR PROGRAM                               *
      ******************************************************************
       INPUT-OUTPUT SECTION.

      ******************************************************************
      *     F I L E    C O N T R O L                                   *
      ******************************************************************
      * THIS WILL SHOW THE EXTERNAL DATA SETS INFORMATION              *
      * USED IN THE PROGRAM                                            *
      ******************************************************************
       FILE-CONTROL.

      ******************************************************************
      *     I-O    C O N T R O L                                       *
      ******************************************************************
      * THIS WILL SHOW THE FILES INFORMATION USED IN THE PROGRAM       *
      ******************************************************************
       I-O-CONTROL.

      ******************************************************************
      *     D A T A   D I V I S I O N                                  *
      ******************************************************************
      * THIS DIVISION WILL DEFINE ALL STORAGE BEING READ IN BY THE     *
      * FILES, BEING OUTPUTED TO FILES AND BEING USED BY THE PROGRAM   *
      ******************************************************************
       DATA DIVISION.

      ******************************************************************
      *     F I L E   S E C T I O N                                    *
      ******************************************************************
      * THIS SECTION IS USED TO DEFINE THE RECORD STRUCTURE            *
      * OF THE FILE                                                    *
      ******************************************************************
       FILE SECTION.

      ******************************************************************
      *     W O R K I N G - S T O R A G E   S E C T I O N              *
      ******************************************************************
      * THIS SECTION IS USED FOR DECLARING TEMPORARY VARIABLES AND     *
      * FILE STRUCTURES USED IN THE PROGRAM                            *
      ******************************************************************
       WORKING-STORAGE SECTION.

      ******************************************************************
      *     L O C A L - S T O R A G E   S E C T I O N                  *
      ******************************************************************
      * THIS SECTION IS SIMILAR TO WORKING-STORAGE SECTION             *
      * IT IS ONLY DIFFERENT IN THE TERMS THAT IN THIS SECTION, THE    *
      * VARIABLES ARE ALLOCATED AND INITIALIZED EVERY TIME WHEN THE    *
      * PROGRAM STARTS EXECUTION                                       *
      ******************************************************************
       LOCAL-STORAGE SECTION.

      ******************************************************************
      *     L I N K A G E   S E C T I O N                              *
      ******************************************************************
      * THIS SECTION IS USED TO DESCRIBE THE DATA NAMES RECEIVED FROM  *
      * AN EXTERNAL PROGRAM                                            *
      ******************************************************************
       LINKAGE SECTION.

      ******************************************************************
      *     P R O C E D U R E   D I V I S I O N                        *
      ******************************************************************
      * THIS DIVISION WILL DO ALL THE COMPUTATIONS                     *
      * AND PROCESS ALL THE DATA FOR THE PROGRAM                       *
      ******************************************************************
       PROCEDURE DIVISION.

           STOP RUN.
