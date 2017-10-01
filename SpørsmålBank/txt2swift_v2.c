#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <stdlib.h>

#include "txt2swift_v2.h"



/* Hvis fileAdress er større enn antall spørsmål setter swiftString = 0*/
void readFileToSwiftString(char *fileAdress, char *swiftString){

    FILE *filename = fopen(fileAdress,"r");

    if (filename == NULL){
        *swiftString = 0;
    }
    else{
        char question[1000];
        char answer[1000];
        char wrongAnswer1[1000];
        char wrongAnswer2[1000];


        fgets(question,1000,filename);
        question[strcspn(question, "\n")] = 0;          //Replacer /n med 0

        fgets(answer,1000,filename);
        memmove(answer, answer + 1, strlen(answer));   // Fjerner -
        answer[strcspn(answer, "\n")] = 0;              //Replacer /n med 0

        fgets(wrongAnswer1,1000,filename);
        memmove(wrongAnswer1, wrongAnswer1 + 1, strlen(wrongAnswer1));
        wrongAnswer1[strcspn(wrongAnswer1, "\n")] = 0;  //Replacer /n med 0

        fgets(wrongAnswer2,1000,filename);
        memmove(wrongAnswer2, wrongAnswer2 + 1, strlen(wrongAnswer2));
        wrongAnswer2[strcspn(wrongAnswer2, "\n")] = 0;  //Replacer /n med 0


        snprintf(swiftString,2000,"questions.append(Question(spm: \"%s\", answer: \"%s\", wrongAnswer1: \"%s\", wrongAnswer2: \"%s\"))",question, answer, wrongAnswer1, wrongAnswer2);
    }

    fclose(filename);
}


void txt2swift_v2(void){

    char *swiftCodeQuestion;
    swiftCodeQuestion = (char *)malloc(2000);

    int numQuestions = 0;
    char spmFileName[30];

    FILE *swiftCodeFile = fopen("spmSwiftCode","w"); /* Hvor swift koden skrives til */

    do{
        numQuestions++;
        snprintf(spmFileName, 30, "./spmUtenBilde/Spørmål%d",numQuestions);
        readFileToSwiftString(spmFileName, swiftCodeQuestion);
        fprintf(swiftCodeFile, "%s\n", swiftCodeQuestion); /* Skriver swift code til fil */
        /*printf("%s\n", swiftCodeQuestion);*/

    }while (*swiftCodeQuestion != 0);
    numQuestions--;
    free(swiftCodeQuestion);
    fclose(swiftCodeFile);
    printf("\t\t%d spørsmål har nå blitt gjort om til swiftkode i filen \"spmSwiftCode\"\n",numQuestions );
}
