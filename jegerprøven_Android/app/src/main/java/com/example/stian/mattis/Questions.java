package com.example.stian.mattis;

import java.util.LinkedList;
import java.util.List;
import java.util.Random;

/**
 * Created by Matias on 10/7/2015.
 */
public class Questions{
    private int rightAnswered;
    private int askedQuestions;
    private int numQuestions;
    private int numTotalQuestions = 188;
    private int numTotalArtQuestions = 70;
    private List<Question> question = new LinkedList<>();


    public Questions(int num, boolean isArtQuestion){
        this.rightAnswered = 0;
        this.askedQuestions = 0;
        this.numQuestions = num;
        addQuestion(isArtQuestion);
    }

    public void addQuestion(boolean isArtQuestion){

        Random rand = new Random();
        int var;

        int raNum = rand.nextInt(numTotalArtQuestions);
        int[] a = new int[numTotalArtQuestions];

        for (int i = 0;i<numTotalArtQuestions;i++){a[i] = i;}
        for (int i = 0;i<numTotalArtQuestions;i++){
            var = a[i];
            a[i] = a[raNum];
            a[raNum] = var;
            raNum = rand.nextInt(numTotalArtQuestions);
        }
        raNum = rand.nextInt(numTotalQuestions);
        int[] n = new int[numTotalQuestions];
        List<Question> art = new LinkedList<>();
        List<Question> q = new LinkedList<>();
        if(!isArtQuestion){
            for (int i = 0;i<numTotalQuestions;i++){n[i] = i;}
            for (int i = 0;i<numTotalQuestions;i++){
                var = n[i];
                n[i] = n[raNum];
                n[raNum] = var;
                raNum = rand.nextInt(numTotalQuestions);
            }

            //Vannlige spørsmål
            q.add(new Question("Finnes der gevær med både rifle og hagleløp?","Ja.","Nei.","Ja, de blir laget etter spesialbestilling."));
            q.add(new Question("Må kommunen gi fellingstillatelse på elg og hjort før jakt er tillat?","Ja.","Nei, fellingstillatelsen utstedes av Fylkesmannen.","Nei, grunneier kan bare jakte."));
            q.add(new Question("Hvilken storviltarter kan lovlig felles med hagle?","Rådyr, gaupe, villsvin og jerv.","Rådyr og ulv.","Rådyr og hjort."));
            q.add(new Question("Hvor lenge varer forfølgningsretten under storviltjakt?","Ut den dagen såret storvilt kom inn på en annens grunn.","Ut jakttiden.","Ut den dagen det ble påskutt."));
            q.add(new Question("Kan du jakte med kunstig lys?","Nei, med unntak av åtejakt på rev når lyskilden er fast anbrakt på husvegg.","Ja, men det må bare benyttes lommelykt.","Nei, det er totalforbud mot bruk av kunstig lys til jakt."));
            q.add(new Question("Hvilke faktorer er viktigst for å forebygge skade skyting?","Skytetrening, avstandsbedømmelse, vurdering av skuddvinkel og viltets bevegelse.","Valg av haglmateriale og hurtig anlegg og avtrekk.","Kalibervalg, kamuflasje og artkunnskap."));
            q.add(new Question("Må en 18 åring som har avlagt jegerprøven søke politiet for å få kjøpe haglgevær?","Ja.","Nei.","Bare hvis de foresatte nekter."));
            q.add(new Question("Er det tillatt å fange hare i snare?","Nei.","Ja, men bare i utvalgte kommuner.","Ja, men bare dersom det er vinter."));
            q.add(new Question("Ta stilling til følgende utsagn: Til jakt er det tillatt å bruke helautomatisk rifle, men ikke for mer enn to skudd.","Nei, helautomatisk rifle er ikke tillatt til jakt.","Ja, det er riktig.","Ja, men dette gjelder ikke gaupejakt."));
            q.add(new Question("Er det tillatt å oppbevare haglepatroner i en ubebodd hytte?","Nei.","Ja.","Ja, men må være forsvarlig nedlåst."));
            q.add(new Question("Du jakter hjortevilt med rifle, hvor skal du plassere skuddet?","Sentralt i hjerte - lungeregionen.","I hodet.","Så langt ned i brystet som mulig."));
            q.add(new Question("Hvilken av følgende regler er det viktig å følge for at våpenhåndteringen skal være sikker?","Du skal alltid behandle våpenet ditt som om det er ladd.","Du skal aldri låne bort våpenet ditt.","Du skal bære våpenet ditt i rem over skulderen."));
            q.add(new Question("Hvordan skal du alltid behandle et våpen?","Som om det alltid er ladd.","Med forsiktighet, det kan være usikret.","Det er ikke noen regler for dette."));
            q.add(new Question("Er ei ladd og sikret hagle farlig?","Ja, alltid.","Nei, bare hvis den er støttet til en bil.","Nei."));
            q.add(new Question("Finnes det noe i våre lover som stiller krav til jegeren om at jakten skal utøves så forsvarlig og humant som mulig?","Ja, narurmangfoldsloven, viltloven og dyrevelferdsloven har bestemmelser om det.","Ja, i grunnloven.","Nei, det er en uskreven regel jegere i mellom."));
            q.add(new Question("Hva skal en god jeger alltid etterstrebe?","Forbedre sine kunnskaper om viltarter og jakt generelt.","Kunne fremvise så mange trofeer som mulig.","Skaffe seg muligheter til å skyte så mye vilt som mulig."));
            q.add(new Question("Stilles det krav om haglestørrelse ved bruk av hagle til jakt?","Nei, det er opp til den enkelte jeger å vurdere behov for haglestørrelse ut fra hvilke viltarter vedkommende skal jakte på.","Ja, men kun for enkelte arter.","Ja."));
            q.add(new Question("Hvilke arter kreves det fellingstillatelse på før jakt er tillatt?","Elg, hjort, villrein og bever.","Elg, hjort og gaupe.","Elg, hjort, villrein, bever og rødrev."));
            q.add(new Question("For enkelte viltarter er det ikke åpnet for fri jakt innenfor gitte jakttider. Disse artene forvaltes gjennom såkalt lisensjakt og kvotejakt. Hvilken av disse viltartene gjelder dette?","Gaupe, jerv og steinkobbe","Grevling og oter","Dverggås, sangsvane og dobbeltbekkasin"));
            q.add(new Question("Du skal jakte vinterrype med rifle. Er det tillatt å bruke en rifle i kaliber 22?","Ja, dersom kaliberet er 22 LR (kule med hullspiss) eller kraftigere.","Nei.","Ja, alle rifler med kaliber 22 er tillatt for dyr opp til rådyrsstørrelse."));
            q.add(new Question("Storvilt, ryper og skogsfugl skal henges til modning. Hvor lenge bør slikt vilt henge?","40 døgngrader.","30 døgngrader.","20 døgngrader."));
            q.add(new Question("Hva er randhagl?","Deformerte hagl i haglsvermens ytterkant.","Harde hagl som gir renner i løpet.","Runde hagl som danner haglsvermens sentrum."));
            q.add(new Question("Hvilken av disse kravene må en stille til fangstfeller som skal avlive dyr?","At dyret blir drept momentant.","At dyret blir slått i svime.","At dyret dør senest etter 5 - 10 minutter."));
            q.add(new Question("Hvilken av disse dyregruppene er ikke jaktbar?","Ugler","Hjortevilt","Gnagere"));
            q.add(new Question("Hva er absolutt lengste anbefalte skuddavstand når man jakter elg og elgen står i ro?","150 meter","200 meter","80 meter"));
            q.add(new Question("Hvor ofte skal du ved fangst av villmink, jerv og gaupe føre tilsyn med fangstredskapet?","Minst hver morgen og kveld.","Minst en gang hvert døgn.","Minst annen hver dag."));
            q.add(new Question("En hjort blir skadeskutt nær grensen til naboeiendommen hvor du ikke har jaktrett. Kan du følge etter hjorten og avlive denne på naboeiendommen?","Ja, dette kan du uten videre gjøre innen utgangen av samme dag.","Nei.","Nei, du må først varsle kommune og grunneier."));
            q.add(new Question("Bruker av fangstredskaper som avliver viltet, plikter å føre tilsyn med fangstredskaper?","Minst en gang hver uke.","Når det passer, viltet er jo dødt.","Minst en gang hver tredje dag."));
            q.add(new Question("Du setter deg i bilen for å holde varmen. Da kommer haren. Kan du skyte gjennom bilvinduet?","Nei.","Ja, dersom bilen står på privat grunn.","Ja, men haren kan ikke befinne seg på veien."));
            q.add(new Question("Hva er forsvarlig sikkerhetsavstand for haglegevær med hagl nr. 4?","Minimum 300 meter.","Minimum 100 meter.","Minimum 200 meter."));
            q.add(new Question("Hva er god plassering av en jeger på post?","I kanten av myrer, hogstflater, kraftlinjer og lignende.","Nede i dalsøkk.","Inne i tett skog."));
            q.add(new Question("Hva er en choke på ei hagle?","En innsnevring i hagleløpet som bestemmer haglesvermets størrelse.","Det er der du lader hagla.","Det er en metode for å ta av forskjeftet."));
            q.add(new Question("Er det lov å bruke både hagle og rifle til rådyrjakt?","Ja, i den ordinære rådyrjakten er begge våpentyper tillatt.","Nei, det er foreløpig ikke lov å benytte rifle.","Nei, det er ikke tillatt å bruke hagle til rådyrjakt."));
            q.add(new Question("En jeger har bestått skyteprøven for villreinjakt. Kan han under jakten benytte et hvilket som helst våpen?","Nei, bare det, eller de våpen jegeren har avlagt skyteprøve med.","Ja.","Ja, men bare våpen som kan benyttes til storviltjakt."));
            q.add(new Question("Er det viktig å ta ut innvollene av hjortevilt så fort som mulig?","Ja.","Nei.","Helt uvesentlig. Dyret er tross alt dødt."));
            q.add(new Question("Du skal drive fangst av bever med slagfelle. Hvordan må fellen plasseres?","Fellen må alltid plasseres under vann.","I nærheten av vannkanten.","Fellen kan plasseres slik du finner mest hensiktmessig."));
            q.add(new Question("Hvorfor er det viktig med sikker bakgrunn når du skyter med rifle?","Rifleprosjektilet har lang rekkevidde og det er en risiko for at du treffer noe annet enn det du sikter på.","Dersom du treffer trær kan disse dø.","Et blyprosjektil kan ekspandere."));
            q.add(new Question("Forfølgninsretten på hjortevilt og gaupe. Hva innebærer det?","At den som på lovlig grunn skadeskyter hjortevilt eller gaupe, har rett til å forfølge og tilegne seg dyret på den grunnen der annen jeger har jaktrett.","At skadeskutt hjortevilt og gaupe kan forfølges og jaktes ved hjelp av alle tilgjengelige midler. (Bruk av kunstig lys, motoriserte kjøretør etc)","At regler for våpen og ammunisjon ikke gjelder."));
            q.add(new Question("Hva er avgjørende for hvor mange fellingstillatelser en grunneier / rettighetshaver får tildelt?","Størrelsen på hans eiendom.","Hvor flink han er som jeger.","Hvor mange dyr han har skutt de siste fem år."));
            q.add(new Question("Når vi jakter med rifle må vi alltid regne med at prosjektilet kan forandre retning. Faren er størst om du treffer:","Vann, eller stein.","Skogsbunn.","Løs snø."));
            q.add(new Question("I et dobbeltløpet haglegevær har de to løpene ofte forskjellig trangboring. Hva betyr det?","At løpene sprer haglene ulikt.","At en må bruke patroner med ulik lengde i de to løpene.","At løpene har ulikt kaliber."));
            q.add(new Question("Et halvmantlet prosjektil skal når det treffer dyret:","Ekspandere til omentrent det dobbelte av sin opprinnelige diameter.","For forandre retning.","Beholde sin opprinnelige form, for å bedre trenge gjennom dyrekroppen."));
            q.add(new Question("Hvor lenge er det vanlig at kjøtt av hjortevilt henger til modning?","40 døgngrader.","2 uker.","70 døgngrader."));
            q.add(new Question("Hvilken dager er det ikke tillatt å jakte?","Fra og med 24.12 til og med 31.12 og langfredag, påskeaften og første påskedag","Fra og med 24.12 til og med 31.12 og hele påsken","Fra og med 21.12 til og med 31.12"));
            q.add(new Question("Kan en grunneier fastsette andre jakttider for sin eiendom enn det Direktoratet for naturforvaltning (DN) har fastsatt?","Ja, men da må det være innenfor de jakttider som DN har fastsatt.","Nei.","Ja, men bare for hjortejakt."));
            q.add(new Question("Må du avlegge skyteprøven for å jakte rådyr med hagle?","Nei, skyteprøven er pålagt kun når du jakter rådyr med rifle.","Ja, alle som skal jakte rådyr må avlegge skyteprøven.","Ja, dersom du ikke er aktiv lerdueskytter."));
            q.add(new Question("Hva er regnet som jaktetisk forsvarlig maksimalt skuddhold når man bruker en vanlig hagle til småviltjakt?","30 meter.","45 meter.","40 meter."));
            q.add(new Question("Er det tillat å bruke fyllingskule til jakt i Norge?","Ja, men kun til jakt på villsvin og rådyr.","Ja.","Nei."));
            q.add(new Question("Du er på bukkejakt på rådyr i august. Har du anledning til å benytte kombivåpen?","Ja, men du kan kun benytte rifleløpet.","Nei, det er kun tillatt å benytte rifle.","Ja, og alle løp kan benyttes."));
            q.add(new Question("Kan du trene fuglehund på fjellet?","Ja, hvis du har grunneiers tillatelse og det ikke er båndtvang.","Nei.","Ja."));
            q.add(new Question("Er det lov å benytte hagle til bukkjakt på rådyr etter 25. september?","Ja.","Nei.","Ja, men kun ved bruk av fyllingskule."));
            q.add(new Question("Må jakttiden for en viltart være den samme over hele landet?","Nei.","Ja.","Ja, men bare på rovdyr."));
            q.add(new Question("Er det en fordel å beskatte en elgstamme ved jakt om høsten slik at konkurransen om vinterføden blir mindre?","Ja.","Nei, jakt bør ikke drives da dette medfører mindre vilt.","Nei, antall elg har ingen betydning for vinterføden."));
            q.add(new Question("Kan du trene din fuglehund på fjellet?","Ja, hvis du har grunneiers tillatelse og det ikke er båndtvang.","Ja.","Nei."));
            q.add(new Question("Hvorfor er det krav om ekspanderende prosjektil til jakt på hjortevilt?","Prosjektilet utvides og påfører dyret store skader og en rask død.","Billig i innkjøp.","Har høy hastighet og lang rekkevidde."));
            q.add(new Question("Du har tatt jegerprøven og er klar til å dra på småviltjakt. Hva kreves før du kan gå i gang med jakta?","Du må ha betalt jegeravgiften og fått tillatelse fra grunneier dersom du ikke jakter på egen eiendom.","Du må ha med egnende klær og utstyr.","Du må ha betalt jegeravgiften og bestått skyteprøven."));
            q.add(new Question("Er det alltid nødvendig å stikke et felt hjortevilt?","Nei, ikke hvis blodet har rent ut brysthulen, hjerte / lungetreff.","Ja, hvis ikke surner kjøttet.","Nei, det er aldri nødvendig.Stikking er et gammelt rituale."));
            q.add(new Question("Kan en grunneier bestemme at jakt med fuglehund ikke skal være tillatt på hans eiendom?","Ja.","Nei.","Ja, men det må godkjennes av Direktoratet for naturforvaltning (DA)"));
            q.add(new Question("Hva menes med ribbing og flåing av fuglevilt?","Ribbing er å trekke fjærene av uten å ødelegge skinnet, men flåing er å dra av skinn og fjær.","Ribbing og flåing er det samme.","Ribbing betyr å brenne fjærene av, mens flåing er å trekke fjærene av enkeltvis."));
            q.add(new Question("Kan kano benyttes under jakt på ender?","Ja, alle båttyper uten motor er tillatt under andejakt.","Ja, men bare på store innsjøer.","Nei, den kan velte på grunn av rekylen."));
            q.add(new Question("Hva defineres som vital del av våpen?","Forskjefte eller sluttstykke.","Magasin.","Kikkertsikte."));
            q.add(new Question("Må en grunneier som bare jakter på egen eiendom betale jegeravgift?","Ja.","Nei.","Ja, men bare hvis han jakter elg."));
            q.add(new Question("Det er tidlig morgen og du skal på jakt. Det første stykket går du langs en offentlig vei. Plutselig får du se ei røy som sitter i veien, bryter du viltloven om du skyter?","Ja, det er ikke tillatt å skyte på vilt fra offentlig vei.","Nei, det er om å gjøre og skyte så mye vilt som mulig.","Ja, men bare om det kommer en bil."));
            q.add(new Question("Hva er sikkerhetsavstanden for haglegevær med hagl nr 6?","Minimum 250 meter.","Minimum 100 meter.","Minimum 200 meter"));
            q.add(new Question("Hva er maksimal boghøyde for en drivende hund på rådyrjakt?","41.","42 cm.","52 cm."));
            q.add(new Question("Er det humant forsvarlig å skyte på ei rype midt i et rypekull?","Nei.","Ja, hvis du bruker hagl nr. 6","Ja, da kan du få flere ryper med et skudd."));
            q.add(new Question("Er åte sammen med utlagt selvskudd en akseptabel og effektiv måte å felle gaupe på?","Nei, selvskudd er ikke tillatt i Norge.","Ja, men dette er ikke lengre en vanlig fangstmetode.","Ja og spesielt tidlig i jaktperioden."));
            q.add(new Question("Du sitter på hjortepost i det du ser noe som er på vei mot deg i horisonten. Hva bør du gjøre?","Bruke håndkikkerten for å forsikre deg om hva det er.","Reise deg opp for å se hva det er.","Skyte i tlfellet det er en hjort."));
            q.add(new Question("Hva ligger i begrepet human jakt?","At viltet ikke skal utsettes for unødige lidelser.","At fuglene ikke skal skytes på bakken.","At viltet bør få en sjanse til å slippe vekk før det skytes."));
            q.add(new Question("Hvilke dager har jaktforbud i Norge?","24.12 - 31.12 og langfredag, påskeaften og første påskedag.","24.12 - 31.12 og hele påsken.","24.12 - 31.12 i julehelgen."));
            q.add(new Question("Kan en fangstmann bruke fotsaks som fangstredskap?","Nei, det er forbudt.","Ja, men bare om rev skal fanges.","Ja, dersom fotsaksa er merket og kommunen er varslet."));
            q.add(new Question("Bør en jeger trene ofte med våpenet sitt?","Ja, det er meget viktig for å bedre sine ferdigheter og lære å kjenne sine begrensninger.","Nei, det er nok å prøveskyte årlig slik at man vet våpenet er innskutt.","Nei, trening medfører økt skadeskytning fordi det blir flere dårlige treff, men færre rene bomskudd."));
            q.add(new Question("For hvilke storviltarter har myndighetene fastsatt ulik jakttid for hanndyr og hunndyr?","Rådyr.","Elg og hjort.","Gaupe, jerv og villsvin."));
            q.add(new Question("Hva er en viktig grunn for å ikke la en drivende hund fortsette jakten når et hjortevilt er skadeskutt?","Hunden forhindrer at dyret går i sårleie og vanskeliggjør dermed et ettersøk.","Hunden kan ikke følge det skadde dyret ettersom det stikker seg bort og ikke avgir lukt.","Hunden bytter så godt som alltid til et annet dyr og kan derfor ikke brukes til sporhund lengre."));
            q.add(new Question("Du har jaktrett på begge sider av en offentlig vei. Kan du felle vilt på veien?","Nei.","Ja, men det gjelder bare småvilt.","Ja, men  bare dersom du kjører bil."));
            q.add(new Question("Hva menes med fredningsprinnsippet i viltloven?","At alle landpattedyr, fugler, amfibier og krypdyr samt deres egg, reir og bo er fredet med mindre annet er bestemt.","At alt av dyreliv er fredet.","At alle pattedyr og fugler er fredet."));
            q.add(new Question("Hva er det første du må gjøre når du har felt dukkender, fiskender, vadefugler, skarver, eller måker?","Ta ut innvollene.","Legge dem til tørk, fordi de ofte er våte.","Flå av skinnet og legge det i en plastpose."));
            q.add(new Question("Gjelder viltloven bare de jaktbare viltartene?","Nei, med vilt i viltloven menes alle viltlevende landpattedyr og fugler, amfibier og krypdyr.","Ja.","Nei, den gjelder både de jaktbare artene og rovdyr."));
            q.add(new Question("Er det tillatt å jakte vilt ut fra en annens jaktområde?","Ja, det er helt vanlig.","Nei.","Ja, men det krever godkjenning fra Direktoratet for naturforvaltning."));
            q.add(new Question("Hva er lovlig ferdsel med våpen i utmark der en annen har jaktrett?","Ferdsel som er nødvendig for å komme til eget jaktterreng.","Prøveskyting av våpenet.","Jakt på rovdyr."));
            q.add(new Question("Hva menes med vilt i viltloven?","Alle viltlevende landpattedyr, fugler, amfibier og krypdyr.","Alle landlevende landpattedyr og fugler.","Alle viltlevende dyr, fugler og planter."));
            q.add(new Question("Viltbegrepet i viltloven omfatter viltlevende landpattedyr, fugler, krypdyr og ei gruppe til:","Amfibier.","Sel og hval.","Svaldbards fauna."));
            q.add(new Question("Hvem plikter en jeger å forevise jegeravgiftskort til?","Grunneieren, noen som opptrer på deres vegne eller jaktoppsynet.","Bare politiet.","Alle som ber om det."));
            q.add(new Question("Når kan du tenne bål i skogen?","Hele året unntatt perioden mellom 15.april og 15.september da er det forbudt.","Hele året.","Bare når du jakter."));
            q.add(new Question("Når du jakter stilles det krav om human jakt. Hva betyr det?","At vilt ikke utsettes for unødige lidelser.","At viltet skal få en sjanse til å slippe vekk.","At viltet skal skytes når det beveger seg fort."));
            q.add(new Question("Hva er spesielt viktig for anslagseffekten til ei geværkule?","Farten og vekta på kula.","Farten på kula og høyden på kulebanen.","Diameteren på kula."));
            q.add(new Question("Du er på hjortejakt og har skadeskutt en hind/kolle. Ved omplassering av postene får du se en kronhjort som dere også har rett til å skyte. Hva gjør du?","Lar den gå. Dere har et pliktig ettersøk.","Skyter. Dere har kronhjort på kvoten.","Skyter. Det er siste jaktdagen."));
            q.add(new Question("Er det tillatt å bruke halvatomatisk rifle til hjortejakt?","Ja, men bare dersom det er maksimalt tre patroner i magasinet og en i kammeret. Totalt fire patroner.","Ja, men bare dersom det er maksimalt to patroner, en i kammeret og en i magasinet.","Nei."));
            q.add(new Question("Er det tillatt å bruke helmantlet prosjektil til rådyrjakt?","Nei.","Ja det er en fordel. Ødelegger lite kjøtt.","Ja, det er bedre presisjon i helmantlet kuler."));
            q.add(new Question("Når bør er haglgevær avsikres?","I sammenheng med av våpenet løftes i anleggstilling.","Når jakten starter.","Når fuglen har fløyet 20 meter."));
            q.add(new Question("Du skal forsere et høyt gjerde. Hva gjør du med våpenet?","Tar ammunisjonen ut av kammeret.","Sikrer våpenet, men er klar til å skyte hvis det kommer vilt.","Bruker våpenet som stokk for å komme over gjerdet."));
            q.add(new Question("Du sitter på elgpost i det en elgku og kalv kommer på fint skuddhold. Jaktlaget har fellingstillatelse på begge. Hva gjør du?","Skyter kalven først.","Skyter kua.","Skyter kua først og kalven etterpå."));
            q.add(new Question("Du har klart skyteprøven for storvilt. Kan du under storviltjakta bruke en annen rifle enn den du brukte under oppskytningen?","Nei, du kan ikke bruke en annen rifle under storviltjakten enn den du brukte på skyteprøven.","Ja, hvis du bruker samme type ammunisjon som under skyteprøven.","Ja, det har ingen betydning hvilket gevær du skyter opp med."));
            q.add(new Question("Du er på rypejakt med hagle i et åpent fjellandskap. Foran deg ser du noen ryper som sitter på bakken om lag 50 meter unna. Hva bør du gjøre i en slik situasjon?","Smyger deg innpå rypene og skyte mot en enkeltsittende rype når avstanden er 20-25 meter.","Skyter med en gang for å være sikker på at rypene ikke flykter.","Smyge deg innpå rypene til du er på forsvarlig skuddhold, og vente med å skyte til rypene letter for å gi dem en fair sjanse."));
            q.add(new Question("Kan du skyte på svømmende hjortevilt?","Ja, men kun dersom det forfølges som såret.","Nei.","Ja."));
            q.add(new Question("Datoen er 1. september og du skal ut å trene jakthunden. Kan du slippe den løs hvor som helst?","Ja, men du må ha grunneierens tillatelse","Ja, du kan trene hvor som helst.","Nei, det er fortsatt båndtvang."));
            q.add(new Question("Hvor lenge skal en skutt hare henge før innvollene tas ut?","Innvollene tas ut med det samme den er skutt.","To, til tre dager.","Minst en uke."));
            q.add(new Question("Under jakt på hvilke arter er det tillatt å bruke løs på drevet halsende hund?","Hjort, rådyr, gaupe, rødrev og hare.","Elg, hjort og rådyr.","Gaupe, rødrev, hare, villmink og grevling."));
            q.add(new Question("Hvorfor er det viktig at jaktriflen er innskutt med samme ammunisjonstype som skal benyttes under jakt?","Fordi ulike patrontyper ofte gir forskjellig treffbilde.","For å venne seg til rekylen.","For at jegeren skal bli vant med smellet."));
            q.add(new Question("Hva skjer med prosjektilet når avstanden fra riflen øker?","Prosjektilet daler mot bakken.","Prosjektilet går oppvoer i lufta.","Prosjektilet ekspanderer når den har kommet på 400 meter."));
            q.add(new Question("I et jaktområde er det jakttid på ryper ut februar måned. Etter en lang og stille juleferie ønsker du å ta en jakttur etter rypene første nyttårsdag. Kan du det?","Ja, jaktforbudet gjelder fra og med 24. til og med 31. desember. 1. januar er jakt tillatt.","Nei, det er jaktforbud fra og med 24. desember til og med 2. januar.","Nei, det er forbudt med jakt på alle helligdager."));
            q.add(new Question("Følger du loven dersom du jakter rype med salongrifle (cal. 22 LR) ?","Ja, 22 LR med hullspiss er tillat for jakt på rype.","Nei. Du kan skyte trost og kråke, men ikke rype.","Nei, du må bruke hagle."));
            q.add(new Question("Kan jakttiden være forskjellig for hann- og hunndyr av samme art?","Ja.","Ja, men bare dersom det er snakk om fugler.","Nei."));
            q.add(new Question("Du kommer kjørende langs en privat vei idet du får se en elg som halter etter påkjørsel. Datoen er 15. februar. Hva gjør du?","Varsler kommunen eller politiet umiddelbart slik at de kan sørge for avlivning dersom elgen ikke kan bli frisk.","Ringer til en jaktkamerat som bor i nærheten slik at han kan komme og avlive elgen.","Kjører videre for å ikke uroe elgen."));
            q.add(new Question("Hva kreves for å oppbevare registreringspliktig våpen hjemme?","Våpenet, eller vital del av våpenet må oppbevares i FG-godkjent sikkerhetsskap.","Våpenet skal være nedlåst og adskilt fra ammunisjon.","Du må være over 18 år."));
            q.add(new Question("Hvor lenge skal en hare henge før innvollene tas ut?","Innvollene tas ut med det samme den er skutt.","Minst en uke.","To til tre dager."));
            q.add(new Question("Kan en 16 åring som har avlagt jegerprøven, kjøpet et våpen?","Nei, nederste grensen for kjøp av våpen er 18 år.","Nei, nederste grensen for kjøp av våpen er 21 år.","Ja, men bare dersom han skal skyte på blink."));
            q.add(new Question("Hva innebærer forfølgningsretten på hjortevilt?","At den som på lovlig grunn sårer hjortevilt har rett til å forfølge og tilegne seg dyret på grunn der en annen enn jegeren har jaktrett.","At regler for våpen og ammunisjon ikke gjelder.","Før en starter å forfølge skadet hjortevilt må grunneieren ha gitt tillatelse."));
            q.add(new Question("Hvorfor bør du ikke skyte på løpende hjortevilt?","Fare for å skadeskyte dyret er stor.","Det kan løpe ut av jaktområdet.","Det kan være vanskelig å vurdere avstanden."));
            q.add(new Question("Kan det fastsettes forskjellige jakttider på hann og hunndyr innen samme viltart?","Ja.","Nei.","Ja, men bare for fugler."));
            q.add(new Question("Kan du gå på rypejakt den 28. desember dersom du har sesongkort på småviltjakt?","Nei.","Ja, rypejakten varer ut februar.","Ja, men uten bruk av hund."));
            q.add(new Question("Du har tillatelse til å jakte ender ved og på en innsjø. Kan du bruke båt med påhengsmotor under jakten?","Nei.","Ja, men motorstørrelsen må være under 2 hk.","Ja."));
            q.add(new Question("Villmink har jakktid fra 15.07 til 15.04. I påskeferien er du på hytta og ser at det er mye mink rundt vannet som hytta ligger ved. Kan du sette opp feller for å fange noen, dersom det er innenfor jakttida for mink og du på forhånd har grunneiers tillatelse?","Ja, men ikke langfredag, påskeaften og første påskedag for da er det jakt- og fangstforbud.","Ja, de kan stå ute hele påskeferien.","Nei, det er jakt og fangstforbud fra palmesøndag til og med andre påskedag."));
            q.add(new Question("Kan hvem som helst fange en hund som løper løs i ordinær bandtvangstid?","Ja.","Nei, bare grunneier eller politiet.","Ja, hvis hunden gjør noe galt, for eksempel jager fredet vilt."));
            q.add(new Question("Kan skyteprøven for storviltjakt avlegges med valgfri ammunisjon?","Nei, den kan bare avlegges med ammunisjon godkjent for storviltjakt.","Ja.","Nei, den skal avlegges med helmantlet ammunisjon."));
            q.add(new Question("Hva er det første du bør gjøre når du har felt et rådyr?","Ta ut innmaten.","Flå av skinnet.","Skjære av hodet."));
            q.add(new Question("Stilles det krav om haglstørrelse ved bruk av hagle til jakt?","Nei, det er opp til den enkelte jeger å vurdere dette ut fra hvilke viltarter vedkommende skal jakte på.","Ja.","Ja, men kun for enkelte arter."));
            q.add(new Question("Du har bare ett registreringspliktig våpen. Hvilket krav stilles det til sikring når våpenet er oppbevart i heimen din?","Våpenet, eller en vital del av våpenet må være forsvarlig nedlåst.","Våpenet og ammo skal oppbevares i samme rom.","Det er tilstrekkelig at boligen er skikkelig avlåst."));
            q.add(new Question("Under jakt med pumphagle. Hvor mange skudd er det lov å lade med?","Til jakt er bruk av hagle for mer enn to skudd forbudt.","Til jakt er bruk av hagle for mer enn fire skudd forbudt.","Til jakt er bruk av hagle for mer enn fem skudd forbudt."));
            q.add(new Question("Når er den generelle båndtvangen?","Fra og med 1.april til og med 20.august.","Hele året.","Fra og med 1.mai til og med 31.august."));
            q.add(new Question("Kan hunder springe løs uten å bli fulgt av eieren eller andre utenom den ordinære båndtvangen?","Nei, i områder som er åpne for fri ferdsel, kan hunden springe løs dersom den er forsvarlig passet på.","Ja, men bare voksne hunder.","Ja."));
            q.add(new Question("Er det tillatt å skyte hare med salongrifle, cal. 22 LR?","Nei.","Ja, men bare med ekspanderende prosjektil.","Ja."));
            q.add(new Question("Kan du fjerne en beverdam på din egen eiendom?","Nei.","Ja.","Ja, men bare dersom dammen gjør skade."));
            q.add(new Question("For hvilken arter kreves det ekspanderende prosjektil når jakten utøves med rifle?","Alle storviltarter og bever.","Elg, hjort og villrein.","Elg, hjort, villrein, gaupe og rådyr."));
            q.add(new Question("Hvordan skal ryper og skogsfugl oppbevares under modning?","Henges etter hodet og skjermes for fluer.","Ta ut innvollene og fryses så raskt som mulig.","Pakke de ned i plastposer."));
            q.add(new Question("Hvorfor er det viktig å avlive viltet så fort som mulig?","For at viltet ikke skal lide unødvendig.","For å få kjøttet så fort som mulig ned i fryseeren.","For å få flere skuddsjanser på flere dyr."));
            q.add(new Question("Bør en hare flås samme dag som den er skutt?","Nei, vanligvis henges den noen dager til modning med skinnet på.","Ja.","Nei, den kan puttes i fryseren med skinnet på om kvelden."));
            q.add(new Question("Villmink har jakttid hele året. Det er julaften og du har endelig fri og tid til å drive med fellefangst. Du har grunneiers tillatelse til å drive med fellefangst i det aktuelle området og du har betalt jegeravgiften. Kan du sette opp fellene?","Nei, jakt og fangst er ikke tillatt i tiden fra og med 24. desember til 31. desember.","Ja, fellene kan benyttes i hele juleferien.","Ja, men fellene kan ikke benyttes på julaften og nyttårsaften."));
            q.add(new Question("Hva kalles normalt et våpen som har ett hagleløp og ett rifleløp sammenbygd?","Kombinasjonsvåpen.","Konkurransevåpen","Haglerifle."));
            q.add(new Question("Du har kjøpt deg småviltjaktkort for et område. Kan du da skyte rådyr?","Nei, rådyr blir forvaltet som storvilt.","Ja, men rådyr må skytes med rifle.","Ja, rådyr er å betrakte som småvilt."));
            q.add(new Question("Beveren har bygd en beverbolig på din eiendom og du frykter at det skal oppstå en situasjon med oversvømmelse av store områder. Kan du rive beverboligen?","En beverbolig kan kun rives dersom det foreligger tillatelse fra kommunen.","Nei, en beverbolig kan ikke fjernes.","Ja, en beverbolig som kan volde skade kan uten videre rives."));
            q.add(new Question("Er det tillat å bruke luftgevær til jakt?","Nei.","Ja, men kun på de minste artene.","Ja, men bare dersom du jakter på egen eiendom."));
            q.add(new Question("Hvilket krav stiller viltloven til våpen som skal brukes til jakt?","Til felling av vilt er det kun tillatt å bruke skytevåpen som lades med krutt.","Alle typer skytevåpen kan brukes, til og med pil og bue.","Viltloven stiller ingen krav til skytevåpen som skal brukes til jakt."));
            q.add(new Question("Hva er aldersgrensen for å drive selvstendig storviltjakt?","18 år","20 år","16 år"));
            q.add(new Question("Er det lov å bruke gift ved avlivning av viltet?","Nei.","Ja, men bare ved avlining av kråke og rev.","Ja."));
            q.add(new Question("Under jakt på hvilke arter egner det seg å bruke ledhund (båndhund)?","Elg og hjort.","Rype og storfugl.","Rev og mår."));
            q.add(new Question("Hvor lenge bør rypene henges til mørning før de fryses ned?","40 døgngrader.","De bør fryses ned så fort som mulig.","Bare natta over."));
            q.add(new Question("Hvilken hovedregel gjelder for fredning i viltloven?","At alle viltarter er fredet med mindre noe annet er bestemt.","At alt vilt er jaktbart, men det må tas hensyn til fredningsbestemmelsene.","At alle jakttidene tar hensyn til yngletida."));
            q.add(new Question("Hva er et revir?","Et område der enkeltindivider, par/familier bor og som forsvares mot inntrengere av samme art.","Et område der mårdyr kan stikke seg bort.","Et oppholdssted for revefamilier."));
            q.add(new Question("Hvilken del av et haglegevær har størst betydning for at du skal treffe godt?","Kolben.","Løpet.","Sikteskinnen."));
            q.add(new Question("Fines det bestemmelser om hvilke raser som kan godkjennes som ettersøkshunder?","Rase har ingen betydning.","Det må være sporhunder.","Det må være jakthunder."));
            q.add(new Question("Hvilke av disse våpen er tillatt som jaktvåpen i Norge?","Kombinasjonsvåpen.","Helautomatiske våpen.","Halvautomatiske våpen av militær karakter."));
            q.add(new Question("Hvem er det som generelt har enerett til jakt og fangst på privat grunn i Norge?","Grunneieren.","Alle som bor i kommunen.","De som har jakt og fangst som næring."));
            q.add(new Question("Hva er en viktig grunnregel ved all skyting mot et bevegelig mål (vilt,leirdue)?","Geværet skal være i bevegelse også i skuddøyeblikket.","Avtrekket skal være langsomt.","Skytteren skal stå med føttene samlet."));
            q.add(new Question("Hva er forsvarlig sikkerhetsavstand for hagl med hagldiameter 3,5 mm?","350 m","300 m","250 m"));
            q.add(new Question("Kan hvem som helst ferdes med skytevåpen på annens grunn?","Nei, kun dersom det er lovlig ærend og våpenet er uladd.","Ja, det er en gammel hevd.","Ja, men bare med uladd våpen."));
            q.add(new Question("Er det tillatt å bruke selvskudd til jakt på gaupe og rødrev i forbindelse med åtejakt på eget gårdstun?","Nei.","Ja.","Ja, men bare hvis du har en lyskilde festet til veggen."));
            q.add(new Question("Hva er henholdsvis ribbing og flåing av fuglevilt?","Ribbing er å trekke fjærene av uten å ødelegge skinnet, mens flåing er å trekke av skinnet med fjærene på.","Ribbing betyr å brenne fjærene av, mens flåing er å trekke fjærene av enkeltvis.","Ribbing og flåing er det samme."));
            q.add(new Question("Hvilken maksimal skyteavstand er regnet som jaktetisk forsvarlig skuddhold når man bruker en vanlig hagle på småviltjakt?","30 meter.","50 meter.","60 meter."));
            q.add(new Question("Er det tillatt å bruke både halge og rifle til rådyrjakt?","Ja, men under den tidlige bukkejakta er det bare tillatt å benytte rifle.","Nei, bare rifle er tillatt.","Nei, bare hagle er tillatt."));
            q.add(new Question("Hvem er det som har enerett til jakt og fangst på privat grunn i Norge?","Grunneieren.","Alle som bor i kommunen.","De som har jakt og fangst som næring."));
            q.add(new Question("Er det tillatt med snarefangst av rype?","Ja, i de kommuner som har særskilt tillatelse.","Ja, men bare i Nordland, Troms og Finnmark.","Nei."));
            q.add(new Question("Ryper som vi skyter første jaktuka må vi oppbevare ved jakthytta til vi drar hjem. Da bør de:","Henges opp på en fluesikker og luftig plass utendørs.","Plasseres som de er, helst på en hylle inne i hytta.","Legges i plastposer på hyttekjøkkenet."));
            q.add(new Question("Kan hvem som helst fange en hund som løper løs i båndtvangstiden?","Ja.","Nei, bare grunneier eller politi.","Nei, først må hunden ha gjort noe galt, for eksempel jaget fredet vilt."));
            q.add(new Question("Er gråspurv vilt i henhold til viltloven?","Ja.","Ja, men bare dersom den oppholder seg i skogen.","Nei."));
            q.add(new Question("Du er på jakt og har felt en av våre fiskeandarter. Hva bør du gjøre?","Ta ut innvollene og flå fuglen.","Legge den til tørk","Legge den i en plastpose."));
            q.add(new Question("Må man ha avtale om tilgang til godkjent ettersøkshund når man jakter rådyr?","Ja.","Nei, man må kun ha avtale med godkjent ettersøkshund under jakt på elg og hjort.","Ja, men ikke hvis du jakter på egen eiendom."));
            q.add(new Question("Hvor lenge gjelder forfølgningsretten til skadeskutt hjortevilt som går over på jaktterrenget til en annen?","Ut den dagen da det skadeskutte dyret gikk over på jaktterrenget til en annen.","Inntil det skadeskutte dyret finnes.","Ut den dagen da dyret ble skadeskutt."));
            q.add(new Question("Hvilke typer vilt er det nødvendig å henge til modning i 40 døgngrader?","Storvilt, hønsefugler og hare.","Sjøfugler som storskarv, toppskarv og havelle.","Selarter som steinkobbe og havert."));
            q.add(new Question("Du har en automathagle som kan lades med fem patroner. Hva må du gjøre for å benytte denne på jakt?","Du må sette i en plombe slik at du får en patron i kammer og en i magasin.","Du behøver ikke gjøre noe.","Du kan ha en patron i kammer og to i magasinet."));
            q.add(new Question("Er det tillatt å bruke både rifle og hagle under rådyrjakt?","Ja, men under den tidlige bukkejakta er det bare tillatt å benytte rifle.","Nei, bare hagle er  tillatt","Nei, bare rifle er tillatt"));
            q.add(new Question("Må alle som skal jakte i Norge betale jegeravgift?","Ja.","Nei, ikke de som jakter på egen eiendom.","Nei, bare de som jakter på statsgrunn."));
            q.add(new Question("Hvilken skuddvinkel er mest forsvarlig mot hjortevilt?","Rene sideskudd.","Motskudd på skrå.","Rett forfra."));
            q.add(new Question("En 17 år gammel gutt sitter alene på post under rådyrjakt med hagle. Politiet har gitt gutten tillatelse til å erverve medbrakt hagle, og han har avlagt jegerprøven. Faren til gutten kan hele tiden kommunisere med sønnen gjennom jaktradio og mobiltelefon. Er dette lovlig opplæringsjakt?","Nei. Faren må være i fysisk nærhet av sønnen under opplæring.","Ja.","Ja, men bare dersom sønnen venter med å skyte til faren sier at det er greit."));
            q.add(new Question("Mor og sønn sitter på elgpost. Mora har jaktet i mange år. Sønnen er fylt 17 år og har avlagt jegerprøven og skyteprøven. Dersom det kommer en elg som de har fellingstillatelse for, kan sønnen da skyte?","Ja.","Nei, aldersgrensen for å skyte storvilt er 20 år.","Nei, aldersgrensen for å skyte storvilt er 18 år."));
            q.add(new Question("Datoen er 1. oktober og jegerne er på lovlig rådyrjakt. Kan han skyte denne rådyrbukken med hagle, når avstanden er 20 meter?","Ja.","Nei, det er forbudt å skyte rådyr med hagle.","Nei, rådyrbukken kan bare skytes med rifle."));
            q.add(new Question("En gutt på 15 år er på rypejakt sammen med faren, som er en gammel jeger. Gutten har ikke avlagt jegerprøven. Kan han bruke hagle?","Ja, slik opplæringsjakt er lovlig for en 15-åring.","Nei, jakt med hagle betinger at gutten er fylt 16 år.","Nei, i følge våpenloven må alle som bruker skytevåpen være 18 år."));
            q.add(new Question("En mor og hans 15 år gamle sønn er på rypejakt. Sønnen har ikke avlagt jegerprøven. Kan han bruke haglegevær?","Ja, slik opplæringsjakt er tillatt for en femten åring.","Nei, han må være 16 år for å bære våpen.","Nei, han har ikke avlagt jegerprøven."));
            q.add(new Question("Du skal passere et gjerde med våpen når du er ute på jakt. Skjer passeringen på en god og sikker måte?","Ja, dersom våpenet er tomt for ammunisjon.","Nei.","Nei, du skal løfte våpenet over gjerdet først.",R.drawable.jeger_gjerde));
            q.add(new Question("Elgjegeren sitter på post. Han kan skyte valgfritt dyr. Avstanden er ca. 70 meter. Kan han skyte?","Nei, skadeskyting kan bli resultatet.","Ja, kua.","Ja, oksen.",R.drawable.elger_flokk));
            q.add(new Question("Disse jegerne er på sjøfuglejakt 3 km fra nærmeste land, holme eller skjær. Er det tillatt å benytte motorbåt til slik jakt?","Ja.","Ja, men båten kan ikke gjøre større fart enn fem knop.","Nei.",R.drawable.sjofugl_jakt));
            q.add(new Question("Er jakt som vist på dette bildet lovlig i følge viltloven?","Nei.","Ja, dersom det benyttes rifle.","Ja.",R.drawable.moped));
            q.add(new Question("Denne reven springer vekk fra jegeren, avstanden er 40 meter. Er det jaktetisk forsvarlig å skyte?","Nei.","Ja.","Ja, men bare dersom det brukes hagl nr. 4",R.drawable.reven_rasker));
            q.add(new Question("Er dette lovlig på andejakt?","Ja.","Nei, det er ulovlig å være to personer i båten under jakt.","Nei, jakt fra båt er ikke tillatt.",R.drawable.andejakt));
            q.add(new Question("Er det lovlig for denne jegeren å skyte haren?","Nei.","Ja, men da må motoren være i gang.","Ja.",R.drawable.moped_jeger));
            q.add(new Question("Tegningen viser en elgjeger som legger rifla mot et tre for å få støtte. Er dette tillatt?","Ja.","Nei.","Ja, men bare om elgen løper.",R.drawable.stotte_jeger));
            q.add(new Question("Har disse jegeren stilt seg opp for forsvarlig skyting når hunden jager opp fuglene?","Nei.","Ja.","Ja, men bare den ene kan skyte.",R.drawable.forsvalig));
            q.add(new Question("Tre jegere går på støkkjakt etter rype. Er det forsvarlig for noen av de tre jegerne å skyte?","Ja, den jegeren som står nærmest kan skyte.","Nei.","Ja, alle tre kan skyte.",R.drawable.tre_jegere));
            q.add(new Question("Karene er på harejakt. Haren støkkes ut. Hvem av disse kan skyte?","Ingen kan skyte.","Han som står lengst unna.","Han som står lengst til høyre nærmest.",R.drawable.haarejakt));
            q.add(new Question("Du er på villreinjakt og kommer over en flokk med dyr. Kan du skyte i denne situasjonen?","Nei.","Ja.","Ja, men kun dersom de står stille.",R.drawable.rein));
            q.add(new Question("Du er på elgjakt og kan felle en voksen okse. Plutselig 70 meter foran deg står en elgokse. Er det forsvarlig å skyte?","Nei.","Ja.","Ja, men skuddet må plasseres i hodet.",R.drawable.elgjaks));
            q.add(new Question("Er dette en sikkerhetsmessig forsvarlig måte å avlive skadet vilt på?","Nei.","Ja, men patronene må være tatt ut.","Ja.",R.drawable.galskap));
            q.add(new Question("Er det lov å skyte rådyr fra bilvinduet?","Nei.","Ja, dersom bilen er slått av.","Ja.",R.drawable.driveby));
            q.add(new Question("Er dette lovlig måte å jakte på?","Nei.","Ja, dersom veien er privat.","Ja",R.drawable.lysjakt));
            q.add(new Question("Du er ute på fuglejakt og møter en bærplukker. Holder du våpenet forsvarlig?","Ja, hvis ammunisjonen er tatt ut.","Nei.","Ja, våpenet kan henge på skuldra selv om det er ladd.",R.drawable.heihei));
            q.add(new Question("Plutselig 70 meter foran deg står en fin elgokse. Er det forsvarlig å skyte?","Nei, bakgrunnen er ikke sikker.","Ja.","Ja, men skuddet må plasseres i hodet.",R.drawable.elgjakt2));
            q.add(new Question("Plutselig 70 meter foran deg står en elgokse. Er det forsvarlig å skyte?","Nei.","Ja.","Ja, men skuddet må plasseres i hodet.",R.drawable.elgjakt3));
            q.add(new Question("Du er på villreinjakt og kan skyte ett valgfritt dyr. Hvordan ville du ha opptrådt i denne situasjonen?","Latt være å skyte pga. risikoen for skadeskytning er for stor.","Skutt reinen bakerst (til høyre)","Skutt reinen som står forrest (til venstre)",R.drawable.villrein));



        }
                //Art spørsmål
        art.add(new Question("Hvilken fugl er dette?", "Nøtteskrike", "Nøttekråke", "Gråtrost", R.drawable.nottesrkike2));
        art.add(new Question("Hvilken art er dette?", "Krikkand","Toppand", "Ærfugl", R.drawable.krikkand));
        art.add(new Question("Hvilken art er dette?", "Toppand","Stokkand", "Krikkand", R.drawable.toppand));
        art.add(new Question("Hvilken art er dette?", "Fjellrype","Lirype", "Jerpe", R.drawable.fjellrype));
        art.add(new Question("Hvilken art er dette?", "Ringdue","Rugde", "Skogdue", R.drawable.ringdue));
        art.add(new Question("Hvilken art er dette?", "Kanadagås","Hvitkinngås", "Grågås", R.drawable.kanadagaas));
        art.add(new Question("Hvilken art er dette?", "Hvitkinngås","Kanadagås", "Grågås", R.drawable.hvitkinngaas));
        art.add(new Question("Hvilken art er dette?", "Gaupe","Mårhund", "Rev", R.drawable.gaupe));
        art.add(new Question("Hvilken art er dette?", "Toppskarv","Kanadagås", "Storskarv", R.drawable.toppskarv));
        art.add(new Question("Hvilken art er dette?", "Storskarv","Kanadagås", "Toppskarv", R.drawable.storskarv));
        art.add(new Question("Hvilken art er dette?", "Jerpe","Lirype", "Tiur", R.drawable.jerpe));
        art.add(new Question("Hvilken art er dette?", "Svartbak","Hettemåke", "Sildemåke", R.drawable.svartbak));
        art.add(new Question("Hvilken art er dette?", "Rådyr","Hjort", "Reinsdyr", R.drawable.raadyr));
        art.add(new Question("Hvilken art er dette?", "Mårhund","Jerv", "Grevling", R.drawable.maarhund));
        art.add(new Question("Hvilken art er dette?", "Havelle","Ærfugl", "Toppand", R.drawable.havelle));
        art.add(new Question("Hvilken art er dette?", "Rugde","Enkeltbekkasin", "Heilo", R.drawable.rugde));
        art.add(new Question("Hvilken art er dette?", "Grågås","Kortnebbgås", "Kanadagås", R.drawable.graagaas));
        art.add(new Question("Hvilken art er dette?", "Kortnebbgås","Grågås", "Kanadagås", R.drawable.kortnebbgaas));
        art.add(new Question("Hvilken art er dette?", "Skjære","Kråke", "Nøttekråke", R.drawable.skjaere));
        art.add(new Question("Hvilken art er dette?", "Enkeltbekkasin","Rugde", "Nøtteskrike", R.drawable.enkeltbekkasin));
        art.add(new Question("Hvilken art er dette?", "Bever","Bisamrotte", "Oter", R.drawable.bever));
        art.add(new Question("Hvilken art er dette?", "Bisamrotte","Bever", "Oter", R.drawable.bisamrotte));
        art.add(new Question("Hvilken art er dette?", "Gråtrost","Skjære", "Rødvingetrost", R.drawable.graatrost));
        art.add(new Question("Hvilken art er dette?", "Brushane","Småspove", "Rugde", R.drawable.brushane));
        art.add(new Question("Hvilken art er dette?", "Orrfugl","Storfugl", "Lirype", R.drawable.orrfugl));
        art.add(new Question("Hvilken art er dette?", "Storfugl","Orrfugl", "Lirype", R.drawable.storfugl));
        art.add(new Question("Hvilken art er dette?", "Grevling","Mårhund", "Jerv", R.drawable.grevling));
        art.add(new Question("Hvilken art er dette?", "Svartand","Mandarinand", "Storskarv", R.drawable.svartand));
        art.add(new Question("Hvilken art er dette?", "Kråke","Ravn", "Skjære", R.drawable.kraake));
        art.add(new Question("Hvilken art er dette?", "Ravn","Kråke", "Skjære", R.drawable.ravn));
        art.add(new Question("Hvilken art er dette?", "Oter","Bisamrotte", "Bever", R.drawable.oter));
        art.add(new Question("Hvilken art er dette?", "Hjort","Rådyr", "Elg", R.drawable.hjort));
        art.add(new Question("Hvilken art er dette?", "Villrein","Rådyr", "Hjort", R.drawable.reinsdyr));
        art.add(new Question("Er dette en elgku eller en elgoks?", "Elgku","Elgokse", "Ingen av delene, dette er en hjort.", R.drawable.elgku));
        art.add(new Question("Er dette en simle eller en bukk?", "Simle","Bukk", "Ingen av delene, dette er en elg.", R.drawable.simle));
        art.add(new Question("Er dette en simle eller en bukk?", "Bukk","Simle", "Ingen av delene, dette er en hjort.", R.drawable.bukk));
        art.add(new Question("Er dette en simle eller en bukk?", "Ingen av delene, dette er en hjort.","Simle", "Bukk", R.drawable.hjort));
        art.add(new Question("Hvilken fugl er dette?", "Orrhøne","Storfugl", "Lirype", R.drawable.orrhoene));
        art.add(new Question("Hvilken art er dette?", "Lirype","Orrhøne", "Røy", R.drawable.lirype));
        art.add(new Question("Hvilken art er dette?", "Knoppand/moskusand","Mandarinand", "Grågås", R.drawable.moskusand));
        art.add(new Question("Hvilken art er dette?", "Villsvin","Grevling", "Gris", R.drawable.villsvin));
        art.add(new Question("Hvilken art er dette?", "Heilo","Enkeltbekkasin", "Rugde", R.drawable.heilo));
        art.add(new Question("Hvilken art er dette?", "Laksand","Kvinand", "Toppand", R.drawable.laksand));
        art.add(new Question("Hvilken art er dette?", "Kvinand","Stokkand", "Toppand", R.drawable.kvinand));
        art.add(new Question("Hvilken art er dette?", "Stokkand","Ærfugl", "Toppand", R.drawable.stokkand));
        art.add(new Question("Hvilken art er dette?", "Ærfugl","Laksand", "Mandarinand", R.drawable.aerfugl));
        art.add(new Question("Hvilken art er dette?", "Dåhjort","Hjort", "Rådyr", R.drawable.daahjort));
        art.add(new Question("Hvilken art er dette?", "Elg","Villrein", "Hjort", R.drawable.elg));
        art.add(new Question("Hvilken art er dette?", "Myrsnipe","Heilo", "Rugde", R.drawable.myrsnipe));
        art.add(new Question("Hvilken art er dette?", "Brunnakke","Ærfugl", "Mandarinand", R.drawable.brunnakke));
        art.add(new Question("Hvilken art er dette?", "Mink","Oter", "Mår", R.drawable.mink));
        art.add(new Question("Hvilken art er dette?", "Mår","Oter", "Mink", R.drawable.maar));
        art.add(new Question("Hvilken art er dette?", "Mandarinand","Toppand", "Krikkand", R.drawable.mandarinand));
        art.add(new Question("Hvilken art er dette?", "Stripegås","Kanadagås", "Hvitkinnkås", R.drawable.stripegaas));
        art.add(new Question("Hvilken art er dette?", "Rødrev","Fjellrev", "Mårhund", R.drawable.roedrev));
        art.add(new Question("Hvilken art er dette?", "Fjellrev","Rødrev", "Mårhund", R.drawable.fjellrev));
        art.add(new Question("Hvilken art er dette?", "Hare","Kanin", "Mårhund", R.drawable.hare));
        art.add(new Question("Hvilken fugl er dette?", "Tiur","Røy", "Orrhøne", R.drawable.tiur));
        art.add(new Question("Hvilken fugl er dette?", "Orrhane","Tiur", "Orrhøne", R.drawable.orrhane));
        art.add(new Question("Hareungene fødes i et bol som moren lager?", "Nei, de fødes rett i vegetasjonen.","Ja, det er riktig.", "Nei, de fødes i reir."));
        art.add(new Question("Hoppet haren mot høyre?", "Nei, mot venstre","Ja.", "Nei, den satt stille.",R.drawable.harespor));
        art.add(new Question("Når er elgen i sin beste kalveproduserende alder?", "5-10 år.","1-3 år.", "12-15 år."));
        art.add(new Question("Hvilken hunderase er dette?", "Dunker","Finsk støver", "Dachshund",R.drawable.dunker));
        art.add(new Question("Hvilken hunderase er dette?", "Engelsk setter","Pointer", "Vorstehhund",R.drawable.engelsksetter));
        art.add(new Question("Hvilken hunderase er dette?", "Hamiltonstøver","Finsk støver", "Dachshund",R.drawable.hamiltonstoever));
        art.add(new Question("Hvilken hunderase er dette?", "Vorstehhund","Pointer", "Engelsk setter",R.drawable.vorstehhund));
        art.add(new Question("Hvilken hunderase er dette?", "Spaniel","Labrador retriever", "Engelsk setter",R.drawable.spaniel));
        art.add(new Question("Hva er den mest brukte stående fuglehundrasen i Norge?", "Engelsk setter","Pointer", "Vorstehhund"));
        art.add(new Question("Hvilken av følgende hunderaser brukes som halsende hunder?", "Drever og dachshund","Pointer og engelsk setter", "Retriever og gordonsetter"));
        art.add(new Question("Hva brukes som oftest en ledhund (båndhund) til?", "Elgjakt","Villreinjakt", "Drivjakt"));
        art.add(new Question("Hvilken hunderase er dette?", "Finsk støver","Pointer", "Hamiltonstøver",R.drawable.finskstoever));

        if(!isArtQuestion){
            for (int i = 0; i<this.numQuestions;i++) {
                if (rand.nextInt(4) == 0){
                    this.question.add(art.get(a[i]));
                }
                else {
                    this.question.add(q.get(n[i]));
                }
            }
        }
        else {
            for (int i = 0; i<this.numQuestions;i++) {
                this.question.add(art.get(a[i]));
            }
        }

    }

    public boolean hasPicture(){
        if (question.get(askedQuestions).getDrawable() == 0){
            return false;
        }
        else{
            return true;
        }
    }

    public int getRightAnswered() {
        return rightAnswered;
    }

    public void rightAnswered(){
        rightAnswered++;
    }

    public int getNumQuestions() {
        return numQuestions;
    }

    public int getPictureId(){
        return question.get(askedQuestions).getDrawable();
    }

    public String setQuestion(){
        return question.get(askedQuestions).getQuestion();
    }
    public String setRightAns(){
        return question.get(askedQuestions).getCorrectAnswer();
    }
    public String setWrongAns1(){
        return question.get(askedQuestions).getWrongAnswer1();
    }
    public String setWrongAns2(){
        return question.get(askedQuestions).getWrongAnswer2();
    }
    public void nextQuestion(){
        askedQuestions++;
    }

    public int getAskedQuestions() {
        return askedQuestions;
    }

}
