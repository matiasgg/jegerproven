sjekk py#include <stdlib.h>
#include <stdio.h>
#include "swift2txt.h"
#include "txt2swift_v2.h"

int main(int argc, char const *argv[]) {


int a = 9;

while (a != 0){
    printf( "\n\n\n \t\t*********** Jegerprøven Spørsmålsbank *********** \n\n");
    printf( "\t\tVelg et alternativ under:\n");
    printf( "\t\t1: Gjør spørsmål uten bilder om til swiftcode \t\t\t\t 2: Gjør swiftcode om til spørsmål\n");
    printf( "\t\t3: Gjør spørsmål med bilder om til swiftcode (Ikke ferdig) \t\t 0: Avslutt\n");
    printf("\t\tSkriv ditt valg her og trykk enter: " );
    scanf("%d",&a);
    printf("\n");
    switch (a) {
        case 1:
            txt2swift_v2();
            break;
        case 2:
            swift2txt_v1();
            break;
        case 0:
            a = 0;
            break;
    }

}



    return 0;
}
