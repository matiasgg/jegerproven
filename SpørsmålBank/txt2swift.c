#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <stdlib.h>

int readFileToSwiftString(FILE *filename, char *swiftCodeQuestion){

    if (filename == NULL){
        return 0;
    }
    else {
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


        snprintf(swiftCodeQuestion,2000,"questions.append(Question(spm: \"%s\", answer: \"%s\", wrongAnswer1: \"%s\", wrongAnswer2: \"%s\")))",question, answer, wrongAnswer1, wrongAnswer2);


        return 1;
    }



}


int main(int argc, char const *argv[]) {

    int numQuestions = 1;
    int testInt = 1;

    char fileName[30];
    snprintf(fileName, 30, "./spmUtenBilde/Spørmål%d",numQuestions);

    char swiftTextFile[] = "swiftCodeTest";


    FILE *fCode = fopen(swiftTextFile, "w");
    FILE *fText = fopen(fileName, "r");

    while (testInt < 30) {

        char *swiftCodeQuestion;
        swiftCodeQuestion = (char *)malloc(2000);

        if (readFileToSwiftString(fText,swiftCodeQuestion)){
            fprintf(fCode, "%s\n",swiftCodeQuestion);
        }
        else{printf("Could not read from file: %s\n",fileName);}

        fclose(fText);

        snprintf(fileName, 30, "./spmUtenBilde/Spørsmål%d",numQuestions);   // Henter neste fil
        FILE *fText = fopen(fileName, "r");                                //

        testInt++;
        free(swiftCodeQuestion);
        //fText = fopen(fileName, "r");
        //fclose(fText);
    }

    printf("Spørsmålene 1 - %d ble omgjort til swift code og lagret i \"%s\" \n",numQuestions, swiftTextFile);

    fclose(fText);
    fclose(fCode);




    return 0;
}
