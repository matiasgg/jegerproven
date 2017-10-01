#include <stdio.h>
#include "swift2txt.h"

void swift2txt_v1(void){

    int c;
    int questionNum = 0;

    FILE *fp;
    fp = fopen("spmSwiftCode.txt","r");
    if (fp){
        while( (c = fgetc(fp)) != EOF){
            //putchar(c);

            if (c == '\"'){
                questionNum++;
                char fileName[30];
                snprintf(fileName, 30, "./spmUtenBilde/Spørmål%d",questionNum);
                FILE *fText = fopen(fileName, "w");

                  while ((c = fgetc(fp)) != '\"'){
                      fprintf(fText,"%c",c);
                  }

                  fprintf(fText, "\n-");
                  while ((c = fgetc(fp)) != '\"'){} // Går gjennom til neste ", Svaret
                  while ((c = fgetc(fp)) != '\"'){
                      fprintf(fText,"%c",c);
                  }

                  fprintf(fText, "\n-");
                  while ((c = fgetc(fp)) != '\"'){} // Går gjennom til neste ", wrongAnswer1
                  while ((c = fgetc(fp)) != '\"'){
                      fprintf(fText,"%c",c);
                  }

                  fprintf(fText, "\n-");
                  while ((c = fgetc(fp)) != '\"'){} // Går gjennom til neste ", wrongAnswer2
                  while ((c = fgetc(fp)) != '\"'){
                      fprintf(fText,"%c",c);
                  }
                  fclose(fText);
            }
        }
        printf("\t\tSwift koden i \"spmSwiftCode\" har nå blitt gjort om til spørsmål og ligger i mappen \"spmUtenBilde\"\n" );
    }
    else {
        printf("\t\tFile not found.");
    }
    fclose(fp);

}
