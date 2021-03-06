//
//  Questions.swift
//  jeger123
//
//  Created by Matias Gjestvang Greaker on 23.09.2016.
//  Copyright © 2016 Greaker. All rights reserved.
//

import Foundation
import UIKit

class Questions{
    var numberQuestions: Int
    var questions: [Question] = []
    var ArtQuestions: [Question] = []
    var askedQuestions = 0
    var isArtQuestions: Bool
    
    init(numberQuestions: Int, isArtQuestions: Bool){
        self.isArtQuestions = isArtQuestions
        self.numberQuestions = numberQuestions
        setUpQuestions()
    }
    
    func setUpQuestions(){
        
        /////////////Questions with picture//////////////
     
        
        if !isArtQuestions{
            
            
        //New questions
        
     
            
            
        ////////////////
        //Questions with picture////
        
        questions.append(Question(spm: "Er dette lovlig på andejakt?", answer: "Ja.", wrongAnswer1: "Nei, det er ulovlig å være to personer i båten under jakt.", wrongAnswer2: "Nei, jakt fra båt er ikke tillatt.", picture: "andejakt.jpg"))
        questions.append(Question(spm: "Du skal passere et gjerde med våpen når du er ute på jakt. Skjer passeringen på en god og sikker måte?", answer: "Ja, dersom våpenet er tomt for ammunisjon.", wrongAnswer1: "Nei.", wrongAnswer2: "Nei, du skal løfte våpenet over gjerdet først.",picture: "jeger.gjerde.jpg"))
        questions.append(Question(spm: "Elgjegeren sitter på post. Han kan skyte valgfritt dyr. Avstanden er ca. 70 meter. Kan han skyte?", answer: "Nei, skadeskyting kan bli resultatet.", wrongAnswer1: "Ja, kua.", wrongAnswer2: "Ja, oksen.", picture: "elger.flokk.jpg"))
        questions.append(Question(spm: "Disse jegerne er på sjøfuglejakt 3 km fra nærmeste land, holme eller skjær. Er det tillatt å benytte motorbåt til slik jakt?", answer: "Ja.", wrongAnswer1: "Ja, men båten kan ikke gjøre større fart enn fem knop.", wrongAnswer2: "Nei.", picture: "sjofugl.jakt.jpg"))
        questions.append(Question(spm: "Er jakt som vist på dette bildet lovlig i følge viltloven?", answer: "Nei.", wrongAnswer1: "Ja, dersom det benyttes rifle.", wrongAnswer2: "Ja.", picture: "moped.jpg"))
        questions.append(Question(spm: "Denne reven springer vekk fra jegeren, avstanden er 40 meter. Er det jaktetisk forsvarlig å skyte?", answer: "Nei.", wrongAnswer1: "Ja.", wrongAnswer2: "Ja, men bare dersom det brukes hagl nr. 4", picture: "reven.rasker.jpg"))
        questions.append(Question(spm: "Er det lovlig for denne jegeren å skyte haren?", answer: "Nei.", wrongAnswer1: "Ja, men da må motoren være i gang.", wrongAnswer2: "Ja.", picture: "moped.jeger.jpg"))
        questions.append(Question(spm: "Tegningen viser en elgjeger som legger rifla mot et tre for å få støtte. Er dette tillatt?", answer: "Ja.", wrongAnswer1: "Nei.", wrongAnswer2: "Ja, men bare om elgen løper.", picture: "stotte.jeger.jpg"))
        questions.append(Question(spm: "Har disse jegeren stilt seg opp for forsvarlig skyting når hunden jager opp fuglene?", answer: "Nei.", wrongAnswer1: "Ja.", wrongAnswer2: "Ja, men bare den ene kan skyte.", picture: "forsvalig.jpg"))
        questions.append(Question(spm: "Tre jegere går på støkkjakt etter rype. Er det forsvarlig for noen av de tre jegerne å skyte?", answer: "Ja, den jegeren som står nærmest kan skyte.", wrongAnswer1: "Nei.", wrongAnswer2: "Ja, alle tre kan skyte.", picture: "tre.jegere.jpg"))
        questions.append(Question(spm: "Karene er på harejakt. Haren støkkes ut. Hvem av disse kan skyte?", answer: "Ingen kan skyte.", wrongAnswer1: "Han som står lengst unna.", wrongAnswer2: "Han som står lengst til høyre nærmest.", picture: "haarejakt.jpg"))
        questions.append(Question(spm: "Du er på villreinjakt og kommer over en flokk med dyr. Kan du skyte i denne situasjonen?", answer: "Nei.", wrongAnswer1: "Ja.", wrongAnswer2: "Ja, men kun dersom de står stille.", picture: "rein.jpg"))
        questions.append(Question(spm: "Du er på elgjakt og kan felle en voksen okse. Plutselig 70 meter foran deg står en elgokse. Er det forsvarlig å skyte?", answer: "Nei.", wrongAnswer1: "Ja.", wrongAnswer2: "Ja, men skuddet må plasseres i hodet.", picture: "elgjaks.jpg"))
        questions.append(Question(spm: "Er dette en sikkerhetsmessig forsvarlig måte å avlive skadet vilt på?", answer: "Nei.", wrongAnswer1: "Ja, men patronene må være tatt ut.", wrongAnswer2: "Ja.", picture: "galskap.jpg"))
        questions.append(Question(spm: "Er det lov å skyte rådyr fra bilvinduet?", answer: "Nei.", wrongAnswer1: "Ja, dersom bilen er slått av.", wrongAnswer2: "Ja.", picture: "driveby.jpg"))
        questions.append(Question(spm: "Er dette lovlig måte å jakte på?", answer: "Nei.", wrongAnswer1: "Ja, dersom veien er privat.", wrongAnswer2: "Ja", picture: "lysjakt.jpg"))
        questions.append(Question(spm: "Du er ute på fuglejakt og møter en bærplukker. Holder du våpenet forsvarlig?", answer: "Ja, hvis ammunisjonen er tatt ut.", wrongAnswer1: "Nei.", wrongAnswer2: "Ja, våpenet kan henge på skuldra selv om det er ladd.", picture: "heihei.jpg"))
        questions.append(Question(spm: "Plutselig 70 meter foran deg står en fin elgokse. Er det forsvarlig å skyte?", answer: "Nei, bakgrunnen er ikke sikker.", wrongAnswer1: "Ja.", wrongAnswer2: "Ja, men skuddet må plasseres i hodet.", picture: "elgjakt2.jpg"))
        questions.append(Question(spm: "Plutselig 70 meter foran deg står en elgokse. Er det forsvarlig å skyte?", answer: "Nei.", wrongAnswer1: "Ja.", wrongAnswer2: "Ja, men skuddet må plasseres i hodet.", picture: "elgjakt3.jpg"))
        questions.append(Question(spm: "Du er på villreinjakt og kan skyte ett valgfritt dyr. Hvordan ville du ha opptrådt i denne situasjonen?", answer: "Latt være å skyte pga. risikoen for skadeskytning er for stor.", wrongAnswer1: "Skutt reinen bakerst (til høyre)", wrongAnswer2: "Skutt reinen som står forrest (til venstre)", picture: "villrein.jpg"))
        
        /////////////Questions without picture//////////////
        questions.append(Question(spm: "Kravene til jegeropplæring fastsettes av Miljødirektoratet.", answer: "Riktig.", wrongAnswer1: "Galt.", wrongAnswer2: "Galt, kravene fastsettes av politiet."))
        questions.append(Question(spm: "Hvem har ansvaret for sikkerheten når det skytes fra et jakttårn?", answer: "Skytteren.", wrongAnswer1: "Grunneieren.", wrongAnswer2: "Jaktleder."))
        questions.append(Question(spm: "Det er alltid forbundet med fare for skadeskyting dersom du løsner et skudd med urent skuddfelt.", answer: "Riktig.", wrongAnswer1: "Galt.", wrongAnswer2: "Riktig, men med untak av hagleskudd."))
        questions.append(Question(spm: "Du kan forlate et våpen i bilen dersom...", answer: "...bilen er låst, en vital del er fjernet og våpenet skjult.", wrongAnswer1: "...bilen er låst og det ikke ligger ammunisjon til våpenet i bilen.", wrongAnswer2: "...bilen er låst."))
        questions.append(Question(spm: "Finnes der gevær med både rifle og hagleløp?", answer: "Ja.", wrongAnswer1: "Nei.", wrongAnswer2: "Ja, de blir laget etter spesialbestilling."))
        questions.append(Question(spm: "Må kommunen gi fellingstillatelse på elg og hjort før jakt er tillat?", answer: "Ja.", wrongAnswer1: "Nei, fellingstillatelsen utstedes av Fylkesmannen.", wrongAnswer2: "Nei, grunneier kan bare jakte."))
        questions.append(Question(spm: "Hvilken storviltarter kan lovlig felles med hagle?", answer: "Rådyr, gaupe, villsvin og jerv.", wrongAnswer1: "Rådyr og ulv.", wrongAnswer2: "Rådyr og hjort."))
        questions.append(Question(spm: "Hvor lenge varer forfølgningsretten under storviltjakt?", answer: "Ut den dagen såret storvilt kom inn på en annens grunn.", wrongAnswer1: "Ut jakttiden.", wrongAnswer2: "Ut den dagen det ble påskutt."))
        questions.append(Question(spm: "Kan du jakte med kunstig lys?", answer: "Nei, med unntak av åtejakt på rev når lyskilden er fast anbrakt på husvegg.", wrongAnswer1: "Ja, men det må bare benyttes lommelykt.", wrongAnswer2: "Nei, det er totalforbud mot bruk av kunstig lys til jakt."))
        questions.append(Question(spm: "Hvilke faktorer er viktigst for å forebygge skade skyting?", answer: "Skytetrening, avstandsbedømmelse, vurdering av skuddvinkel og viltets bevegelse.", wrongAnswer1: "Valg av haglmateriale og hurtig anlegg og avtrekk.", wrongAnswer2: "Kalibervalg, kamuflasje og artkunnskap."))
        questions.append(Question(spm: "Må en 18 åring som har avlagt jegerprøven søke politiet for å få kjøpe haglgevær?", answer: "Ja.", wrongAnswer1: "Nei.", wrongAnswer2: "Bare hvis de foresatte nekter."))
        questions.append(Question(spm: "Er det tillatt å fange hare i snare?", answer: "Nei.", wrongAnswer1: "Ja, men bare i utvalgte kommuner.", wrongAnswer2: "Ja, men bare dersom det er vinter."))
        questions.append(Question(spm: "Ta stilling til følgende utsagn: Til jakt er det tillatt å bruke helautomatisk rifle, men ikke for mer enn to skudd.", answer: "Nei, helautomatisk rifle er ikke tillatt til jakt.", wrongAnswer1: "Ja, det er riktig.", wrongAnswer2: "Ja, men dette gjelder ikke gaupejakt."))
        questions.append(Question(spm: "Er det tillatt å oppbevare haglepatroner i en ubebodd hytte?", answer: "Nei.", wrongAnswer1: "Ja.", wrongAnswer2: "Ja, men må være forsvarlig nedlåst."))
        questions.append(Question(spm: "Du jakter hjortevilt med rifle, hvor skal du plassere skuddet?", answer: "Sentralt i hjerte - lungeregionen.", wrongAnswer1: "I hodet.", wrongAnswer2: "Så langt ned i brystet som mulig."))
        questions.append(Question(spm: "Hvilken av følgende regler er det viktig å følge for at våpenhåndteringen skal være sikker?", answer: "Du skal alltid behandle våpenet ditt som om det er ladd.", wrongAnswer1: "Du skal aldri låne bort våpenet ditt.", wrongAnswer2: "Du skal bære våpenet ditt i rem over skulderen."))
        questions.append(Question(spm: "Hvordan skal du alltid behandle et våpen?", answer: "Som om det alltid er ladd.", wrongAnswer1: "Med forsiktighet, det kan være usikret.", wrongAnswer2: "Det er ikke noen regler for dette."))
        questions.append(Question(spm: "Er ei ladd og sikret hagle farlig?", answer: "Ja, alltid.", wrongAnswer1: "Nei, bare hvis den er støttet til en bil.", wrongAnswer2: "Nei."))
        questions.append(Question(spm: "Finnes det noe i våre lover som stiller krav til jegeren om at jakten skal utøves så forsvarlig og humant som mulig?", answer: "Ja, narurmangfoldsloven, viltloven og dyrevelferdsloven har bestemmelser om det.", wrongAnswer1: "Ja, i grunnloven.", wrongAnswer2: "Nei, det er en uskreven regel jegere i mellom."))
        questions.append(Question(spm: "Hva skal en god jeger alltid etterstrebe?", answer: "Forbedre sine kunnskaper om viltarter og jakt generelt.", wrongAnswer1: "Kunne fremvise så mange trofeer som mulig.", wrongAnswer2: "Skaffe seg muligheter til å skyte så mye vilt som mulig."))
        questions.append(Question(spm: "Stilles det krav om haglestørrelse ved bruk av hagle til jakt?", answer: "Nei, det er opp til den enkelte jeger å vurdere behov for haglestørrelse ut fra hvilke viltarter vedkommende skal jakte på.", wrongAnswer1: "Ja, men kun for enkelte arter.", wrongAnswer2: "Ja."))
        questions.append(Question(spm: "Hvilke arter kreves det fellingstillatelse på før jakt er tillatt?", answer: "Elg, hjort, villrein og bever.", wrongAnswer1: "Elg, hjort og gaupe.", wrongAnswer2: "Elg, hjort, villrein, bever og rødrev."))
        questions.append(Question(spm: "For enkelte viltarter er det ikke åpnet for fri jakt innenfor gitte jakttider. Disse artene forvaltes gjennom såkalt lisensjakt og kvotejakt. Hvilken av disse viltartene gjelder dette?", answer: "Gaupe, jerv og steinkobbe", wrongAnswer1: "Grevling og oter", wrongAnswer2: "Dverggås, sangsvane og dobbeltbekkasin"))
        questions.append(Question(spm: "Du skal jakte vinterrype med rifle. Er det tillatt å bruke en rifle i kaliber 22?", answer: "Ja, dersom kaliberet er 22 LR (kule med hullspiss) eller kraftigere.", wrongAnswer1: "Nei.", wrongAnswer2: "Ja, alle rifler med kaliber 22 er tillatt for dyr opp til rådyrsstørrelse."))
        questions.append(Question(spm: "Storvilt, ryper og skogsfugl skal henges til modning. Hvor lenge bør slikt vilt henge?", answer: "40 døgngrader.", wrongAnswer1: "30 døgngrader.", wrongAnswer2: "20 døgngrader."))
        questions.append(Question(spm: "Hva er randhagl?", answer: "Deformerte hagl i haglsvermens ytterkant.", wrongAnswer1: "Harde hagl som gir renner i løpet.", wrongAnswer2: "Runde hagl som danner haglsvermens sentrum."))
        questions.append(Question(spm: "Hvilken av disse kravene må en stille til fangstfeller som skal avlive dyr?", answer: "At dyret blir drept momentant.", wrongAnswer1: "At dyret blir slått i svime.", wrongAnswer2: "At dyret dør senest etter 5 - 10 minutter."))
        questions.append(Question(spm: "Hvilken av disse dyregruppene er ikke jaktbar?", answer: "Ugler", wrongAnswer1: "Hjortevilt", wrongAnswer2: "Gnagere"))
        questions.append(Question(spm: "Hva er absolutt lengste anbefalte skuddavstand når man jakter elg og elgen står i ro?", answer: "150 meter", wrongAnswer1: "200 meter", wrongAnswer2: "80 meter"))
        questions.append(Question(spm: "Hvor ofte skal du ved fangst av villmink, jerv og gaupe føre tilsyn med fangstredskapet?", answer: "Minst hver morgen og kveld.", wrongAnswer1: "Minst en gang hvert døgn.", wrongAnswer2: "Minst annen hver dag."))
        questions.append(Question(spm: "En hjort blir skadeskutt nær grensen til naboeiendommen hvor du ikke har jaktrett. Kan du følge etter hjorten og avlive denne på naboeiendommen?", answer: "Ja, dette kan du uten videre gjøre innen utgangen av samme dag.", wrongAnswer1: "Nei.", wrongAnswer2: "Nei, du må først varsle kommune og grunneier."))
        questions.append(Question(spm: "Bruker av fangstredskaper som avliver viltet, plikter å føre tilsyn med fangstredskaper?", answer: "Minst en gang hver uke.", wrongAnswer1: "Når det passer, viltet er jo dødt.", wrongAnswer2: "Minst en gang hver tredje dag."))
        questions.append(Question(spm: "Du setter deg i bilen for å holde varmen. Da kommer haren. Kan du skyte gjennom bilvinduet?", answer: "Nei.", wrongAnswer1: "Ja, dersom bilen står på privat grunn.", wrongAnswer2: "Ja, men haren kan ikke befinne seg på veien."))
        questions.append(Question(spm: "Hva er forsvarlig sikkerhetsavstand for haglegevær med hagl nr. 4?", answer: "Minimum 300 meter.", wrongAnswer1: "Minimum 100 meter.", wrongAnswer2: "Minimum 200 meter."))
        questions.append(Question(spm: "Hva er god plassering av en jeger på post?", answer: "I kanten av myrer, hogstflater, kraftlinjer og lignende.", wrongAnswer1: "Nede i dalsøkk.", wrongAnswer2: "Inne i tett skog."))
        questions.append(Question(spm: "Hva er en choke på ei hagle?", answer: "En innsnevring i hagleløpet som bestemmer haglesvermets størrelse.", wrongAnswer1: "Det er der du lader hagla.", wrongAnswer2: "Det er en metode for å ta av forskjeftet."))
        questions.append(Question(spm: "Er det lov å bruke både hagle og rifle til rådyrjakt?", answer: "Ja, i den ordinære rådyrjakten er begge våpentyper tillatt.", wrongAnswer1: "Nei, det er foreløpig ikke lov å benytte rifle.", wrongAnswer2: "Nei, det er ikke tillatt å bruke hagle til rådyrjakt."))
        questions.append(Question(spm: "En jeger har bestått skyteprøven for villreinjakt. Kan han under jakten benytte et hvilket som helst våpen?", answer: "Nei, bare det, eller de våpen jegeren har avlagt skyteprøve med.", wrongAnswer1: "Ja.", wrongAnswer2: "Ja, men bare våpen som kan benyttes til storviltjakt."))
        questions.append(Question(spm: "Er det viktig å ta ut innvollene av hjortevilt så fort som mulig?", answer: "Ja.", wrongAnswer1: "Nei.", wrongAnswer2: "Helt uvesentlig. Dyret er tross alt dødt."))
        questions.append(Question(spm: "Du skal drive fangst av bever med slagfelle. Hvordan må fellen plasseres?", answer: "Fellen må alltid plasseres under vann.", wrongAnswer1: "I nærheten av vannkanten.", wrongAnswer2: "Fellen kan plasseres slik du finner mest hensiktmessig."))
        questions.append(Question(spm: "Hvorfor er det viktig med sikker bakgrunn når du skyter med rifle?", answer: "Rifleprosjektilet har lang rekkevidde og det er en risiko for at du treffer noe annet enn det du sikter på.", wrongAnswer1: "Dersom du treffer trær kan disse dø.", wrongAnswer2: "Et blyprosjektil kan ekspandere."))
        questions.append(Question(spm: "Forfølgninsretten på hjortevilt og gaupe. Hva innebærer det?", answer: "At den som på lovlig grunn skadeskyter hjortevilt eller gaupe, har rett til å forfølge og tilegne seg dyret på den grunnen der annen jeger har jaktrett.", wrongAnswer1: "At skadeskutt hjortevilt og gaupe kan forfølges og jaktes ved hjelp av alle tilgjengelige midler. (Bruk av kunstig lys, motoriserte kjøretør etc)", wrongAnswer2: "At regler for våpen og ammunisjon ikke gjelder."))
        questions.append(Question(spm: "Hva er avgjørende for hvor mange fellingstillatelser en grunneier / rettighetshaver får tildelt?", answer: "Størrelsen på hans eiendom.", wrongAnswer1: "Hvor flink han er som jeger.", wrongAnswer2: "Hvor mange dyr han har skutt de siste fem år."))
        questions.append(Question(spm: "Når vi jakter med rifle må vi alltid regne med at prosjektilet kan forandre retning. Faren er størst om du treffer:", answer: "Vann, eller stein.", wrongAnswer1: "Skogsbunn.", wrongAnswer2: "Løs snø."))
        questions.append(Question(spm: "I et dobbeltløpet haglegevær har de to løpene ofte forskjellig trangboring. Hva betyr det?", answer: "At løpene sprer haglene ulikt.", wrongAnswer1: "At en må bruke patroner med ulik lengde i de to løpene.", wrongAnswer2: "At løpene har ulikt kaliber."))
        questions.append(Question(spm: "Et halvmantlet prosjektil skal når det treffer dyret:", answer: "Ekspandere til omentrent det dobbelte av sin opprinnelige diameter.", wrongAnswer1: "For forandre retning.", wrongAnswer2: "Beholde sin opprinnelige form, for å bedre trenge gjennom dyrekroppen."))
        questions.append(Question(spm: "Hvor lenge er det vanlig at kjøtt av hjortevilt henger til modning?", answer: "40 døgngrader.", wrongAnswer1: "2 uker.", wrongAnswer2: "70 døgngrader."))
        questions.append(Question(spm: "Hvilken dager er det ikke tillatt å jakte?", answer: "Fra og med 24.12 til og med 31.12 og langfredag, påskeaften og første påskedag", wrongAnswer1: "Fra og med 24.12 til og med 31.12 og hele påsken", wrongAnswer2: "Fra og med 21.12 til og med 31.12"))
        questions.append(Question(spm: "Kan en grunneier fastsette andre jakttider for sin eiendom enn det Direktoratet for naturforvaltning (DN) har fastsatt?", answer: "Ja, men da må det være innenfor de jakttider som DN har fastsatt.", wrongAnswer1: "Nei.", wrongAnswer2: "Ja, men bare for hjortejakt."))
        questions.append(Question(spm: "Må du avlegge skyteprøven for å jakte rådyr med hagle?", answer: "Nei, skyteprøven er pålagt kun når du jakter rådyr med rifle.", wrongAnswer1: "Ja, alle som skal jakte rådyr må avlegge skyteprøven.", wrongAnswer2: "Ja, dersom du ikke er aktiv lerdueskytter."))
        questions.append(Question(spm: "Hva er regnet som jaktetisk forsvarlig maksimalt skuddhold når man bruker en vanlig hagle til småviltjakt?", answer: "30 meter.", wrongAnswer1: "45 meter.", wrongAnswer2: "40 meter."))
        questions.append(Question(spm: "Er det tillat å bruke fyllingskule til jakt i Norge?", answer: "Ja, men kun til jakt på villsvin og rådyr.", wrongAnswer1: "Ja.", wrongAnswer2: "Nei."))
        questions.append(Question(spm: "Du er på bukkejakt på rådyr i august. Har du anledning til å benytte kombivåpen?", answer: "Ja, men du kan kun benytte rifleløpet.", wrongAnswer1: "Nei, det er kun tillatt å benytte rifle.", wrongAnswer2: "Ja, og alle løp kan benyttes."))
        questions.append(Question(spm: "Kan du trene fuglehund på fjellet?", answer: "Ja, hvis du har grunneiers tillatelse og det ikke er båndtvang.", wrongAnswer1: "Nei.", wrongAnswer2: "Ja."))
        questions.append(Question(spm: "Er det lov å benytte hagle til bukkjakt på rådyr etter 25. september?", answer: "Ja.", wrongAnswer1: "Nei.", wrongAnswer2: "Ja, men kun ved bruk av fyllingskule."))
        questions.append(Question(spm: "Må jakttiden for en viltart være den samme over hele landet?", answer: "Nei.", wrongAnswer1: "Ja.", wrongAnswer2: "Ja, men bare på rovdyr."))
        questions.append(Question(spm: "Er det en fordel å beskatte en elgstamme ved jakt om høsten slik at konkurransen om vinterføden blir mindre?", answer: "Ja.", wrongAnswer1: "Nei, jakt bør ikke drives da dette medfører mindre vilt.", wrongAnswer2: "Nei, antall elg har ingen betydning for vinterføden."))
        questions.append(Question(spm: "Kan du trene din fuglehund på fjellet?", answer: "Ja, hvis du har grunneiers tillatelse og det ikke er båndtvang.", wrongAnswer1: "Ja.", wrongAnswer2: "Nei."))
        questions.append(Question(spm: "Hvorfor er det krav om ekspanderende prosjektil til jakt på hjortevilt?", answer: "Prosjektilet utvides og påfører dyret store skader og en rask død.", wrongAnswer1: "Billig i innkjøp.", wrongAnswer2: "Har høy hastighet og lang rekkevidde."))
        questions.append(Question(spm: "Du har tatt jegerprøven og er klar til å dra på småviltjakt. Hva kreves før du kan gå i gang med jakta?", answer: "Du må ha betalt jegeravgiften og fått tillatelse fra grunneier dersom du ikke jakter på egen eiendom.", wrongAnswer1: "Du må ha med egnende klær og utstyr.", wrongAnswer2: "Du må ha betalt jegeravgiften og bestått skyteprøven."))
        questions.append(Question(spm: "Er det alltid nødvendig å stikke et felt hjortevilt?", answer: "Nei, ikke hvis blodet har rent ut brysthulen, hjerte / lungetreff.", wrongAnswer1: "Ja, hvis ikke surner kjøttet.", wrongAnswer2: "Nei, det er aldri nødvendig.Stikking er et gammelt rituale."))
        questions.append(Question(spm: "Kan en grunneier bestemme at jakt med fuglehund ikke skal være tillatt på hans eiendom?", answer: "Ja.", wrongAnswer1: "Nei.", wrongAnswer2: "Ja, men det må godkjennes av Direktoratet for naturforvaltning (DA)"))
        questions.append(Question(spm: "Hva menes med ribbing og flåing av fuglevilt?", answer: "Ribbing er å trekke fjærene av uten å ødelegge skinnet, men flåing er å dra av skinn og fjær.", wrongAnswer1: "Ribbing og flåing er det samme.", wrongAnswer2: "Ribbing betyr å brenne fjærene av, mens flåing er å trekke fjærene av enkeltvis."))
        questions.append(Question(spm: "Kan kano benyttes under jakt på ender?", answer: "Ja, alle båttyper uten motor er tillatt under andejakt.", wrongAnswer1: "Ja, men bare på store innsjøer.", wrongAnswer2: "Nei, den kan velte på grunn av rekylen."))
        questions.append(Question(spm: "Hva defineres som vital del av våpen?", answer: "Forskjefte eller sluttstykke.", wrongAnswer1: "Magasin.", wrongAnswer2: "Kikkertsikte."))
        questions.append(Question(spm: "Må en grunneier som bare jakter på egen eiendom betale jegeravgift?", answer: "Ja.", wrongAnswer1: "Nei.", wrongAnswer2: "Ja, men bare hvis han jakter elg."))
        questions.append(Question(spm: "Det er tidlig morgen og du skal på jakt. Det første stykket går du langs en offentlig vei. Plutselig får du se ei røy som sitter i veien, bryter du viltloven om du skyter?", answer: "Ja, det er ikke tillatt å skyte på vilt fra offentlig vei.", wrongAnswer1: "Nei, det er om å gjøre og skyte så mye vilt som mulig.", wrongAnswer2: "Ja, men bare om det kommer en bil."))
        questions.append(Question(spm: "Hva er sikkerhetsavstanden for haglegevær med hagl nr 6?", answer: "Minimum 250 meter.", wrongAnswer1: "Minimum 100 meter.", wrongAnswer2: "Minimum 200 meter"))
        questions.append(Question(spm: "Hva er maksimal boghøyde for en drivende hund på rådyrjakt?", answer: "41 cm.", wrongAnswer1: "42 cm.", wrongAnswer2: "52 cm."))
        questions.append(Question(spm: "Er det humant forsvarlig å skyte på ei rype midt i et rypekull?", answer: "Nei.", wrongAnswer1: "Ja, hvis du bruker hagl nr. 6", wrongAnswer2: "Ja, da kan du få flere ryper med et skudd."))
        questions.append(Question(spm: "Er åte sammen med utlagt selvskudd en akseptabel og effektiv måte å felle gaupe på?", answer: "Nei, selvskudd er ikke tillatt i Norge.", wrongAnswer1: "Ja, men dette er ikke lengre en vanlig fangstmetode.", wrongAnswer2: "Ja og spesielt tidlig i jaktperioden."))
        questions.append(Question(spm: "Du sitter på hjortepost i det du ser noe som er på vei mot deg i horisonten. Hva bør du gjøre?", answer: "Bruke håndkikkerten for å forsikre deg om hva det er.", wrongAnswer1: "Reise deg opp for å se hva det er.", wrongAnswer2: "Skyte i tlfellet det er en hjort."))
        questions.append(Question(spm: "Hva ligger i begrepet human jakt?", answer: "At viltet ikke skal utsettes for unødige lidelser.", wrongAnswer1: "At fuglene ikke skal skytes på bakken.", wrongAnswer2: "At viltet bør få en sjanse til å slippe vekk før det skytes."))
        questions.append(Question(spm: "Hvilke dager har jaktforbud i Norge?", answer: "24.12 - 31.12 og langfredag, påskeaften og første påskedag.", wrongAnswer1: "24.12 - 31.12 og hele påsken.", wrongAnswer2: "24.12 - 31.12 i julehelgen."))
        questions.append(Question(spm: "Kan en fangstmann bruke fotsaks som fangstredskap?", answer: "Nei, det er forbudt.", wrongAnswer1: "Ja, men bare om rev skal fanges.", wrongAnswer2: "Ja, dersom fotsaksa er merket og kommunen er varslet."))
        questions.append(Question(spm: "Bør en jeger trene ofte med våpenet sitt?", answer: "Ja, det er meget viktig for å bedre sine ferdigheter og lære å kjenne sine begrensninger.", wrongAnswer1: "Nei, det er nok å prøveskyte årlig slik at man vet våpenet er innskutt.", wrongAnswer2: "Nei, trening medfører økt skadeskytning fordi det blir flere dårlige treff, men færre rene bomskudd."))
        questions.append(Question(spm: "For hvilke storviltarter har myndighetene fastsatt ulik jakttid for hanndyr og hunndyr?", answer: "Rådyr.", wrongAnswer1: "Elg og hjort.", wrongAnswer2: "Gaupe, jerv og villsvin."))
        questions.append(Question(spm: "Hva er en viktig grunn for å ikke la en drivende hund fortsette jakten når et hjortevilt er skadeskutt?", answer: "Hunden forhindrer at dyret går i sårleie og vanskeliggjør dermed et ettersøk.", wrongAnswer1: "Hunden kan ikke følge det skadde dyret ettersom det stikker seg bort og ikke avgir lukt.", wrongAnswer2: "Hunden bytter så godt som alltid til et annet dyr og kan derfor ikke brukes til sporhund lengre."))
        questions.append(Question(spm: "Du har jaktrett på begge sider av en offentlig vei. Kan du felle vilt på veien?", answer: "Nei.", wrongAnswer1: "Ja, men det gjelder bare småvilt.", wrongAnswer2: "Ja, men  bare dersom du kjører bil."))
        questions.append(Question(spm: "Hva menes med fredningsprinnsippet i viltloven?", answer: "At alle landpattedyr, fugler, amfibier og krypdyr samt deres egg, reir og bo er fredet med mindre annet er bestemt.", wrongAnswer1: "At alt av dyreliv er fredet.", wrongAnswer2: "At alle pattedyr og fugler er fredet."))
        questions.append(Question(spm: "Hva er det første du må gjøre når du har felt dukkender, fiskender, vadefugler, skarver, eller måker?", answer: "Ta ut innvollene.", wrongAnswer1: "Legge dem til tørk, fordi de ofte er våte.", wrongAnswer2: "Flå av skinnet og legge det i en plastpose."))
        questions.append(Question(spm: "Gjelder viltloven bare de jaktbare viltartene?", answer: "Nei, med vilt i viltloven menes alle viltlevende landpattedyr og fugler, amfibier og krypdyr.", wrongAnswer1: "Ja.", wrongAnswer2: "Nei, den gjelder både de jaktbare artene og rovdyr."))
        questions.append(Question(spm: "Er det tillatt å jakte vilt ut fra en annens jaktområde?", answer: "Ja, det er helt vanlig.", wrongAnswer1: "Nei.", wrongAnswer2: "Ja, men det krever godkjenning fra Direktoratet for naturforvaltning."))
        questions.append(Question(spm: "Hva er lovlig ferdsel med våpen i utmark der en annen har jaktrett?", answer: "Ferdsel som er nødvendig for å komme til eget jaktterreng.", wrongAnswer1: "Prøveskyting av våpenet.", wrongAnswer2: "Jakt på rovdyr."))
        questions.append(Question(spm: "Hva menes med vilt i viltloven?", answer: "Alle viltlevende landpattedyr, fugler, amfibier og krypdyr.", wrongAnswer1: "Alle landlevende landpattedyr og fugler.", wrongAnswer2: "Alle viltlevende dyr, fugler og planter."))
        questions.append(Question(spm: "Viltbegrepet i viltloven omfatter viltlevende landpattedyr, fugler, krypdyr og ei gruppe til:", answer: "Amfibier.", wrongAnswer1: "Sel og hval.", wrongAnswer2: "Svaldbards fauna."))
        questions.append(Question(spm: "Hvem plikter en jeger å forevise jegeravgiftskort til?", answer: "Grunneieren, noen som opptrer på deres vegne eller jaktoppsynet.", wrongAnswer1: "Bare politiet.", wrongAnswer2: "Alle som ber om det."))
        questions.append(Question(spm: "Når kan du tenne bål i skogen?", answer: "Hele året unntatt perioden mellom 15.april og 15.september da er det forbudt.", wrongAnswer1: "Hele året.", wrongAnswer2: "Bare når du jakter."))
        questions.append(Question(spm: "Når du jakter stilles det krav om human jakt. Hva betyr det?", answer: "At vilt ikke utsettes for unødige lidelser.", wrongAnswer1: "At viltet skal få en sjanse til å slippe vekk.", wrongAnswer2: "At viltet skal skytes når det beveger seg fort."))
        questions.append(Question(spm: "Hva er spesielt viktig for anslagseffekten til ei geværkule?", answer: "Farten og vekta på kula.", wrongAnswer1: "Farten på kula og høyden på kulebanen.", wrongAnswer2: "Diameteren på kula."))
        questions.append(Question(spm: "Du er på hjortejakt og har skadeskutt en hind/kolle. Ved omplassering av postene får du se en kronhjort som dere også har rett til å skyte. Hva gjør du?", answer: "Lar den gå. Dere har et pliktig ettersøk.", wrongAnswer1: "Skyter. Dere har kronhjort på kvoten.", wrongAnswer2: "Skyter. Det er siste jaktdagen."))
        questions.append(Question(spm: "Er det tillatt å bruke halvatomatisk rifle til hjortejakt?", answer: "Ja, men bare dersom det er maksimalt tre patroner i magasinet og en i kammeret. Totalt fire patroner.", wrongAnswer1: "Ja, men bare dersom det er maksimalt to patroner, en i kammeret og en i magasinet.", wrongAnswer2: "Nei."))
        questions.append(Question(spm: "Er det tillatt å bruke helmantlet prosjektil til rådyrjakt?", answer: "Nei.", wrongAnswer1: "Ja det er en fordel. Ødelegger lite kjøtt.", wrongAnswer2: "Ja, det er bedre presisjon i helmantlet kuler."))
        questions.append(Question(spm: "Når bør er haglgevær avsikres?", answer: "I sammenheng med av våpenet løftes i anleggstilling.", wrongAnswer1: "Når jakten starter.", wrongAnswer2: "Når fuglen har fløyet 20 meter."))
        questions.append(Question(spm: "Du skal forsere et høyt gjerde. Hva gjør du med våpenet?", answer: "Tar ammunisjonen ut av kammeret.", wrongAnswer1: "Sikrer våpenet, men er klar til å skyte hvis det kommer vilt.", wrongAnswer2: "Bruker våpenet som stokk for å komme over gjerdet."))
        questions.append(Question(spm: "Du sitter på elgpost i det en elgku og kalv kommer på fint skuddhold. Jaktlaget har fellingstillatelse på begge. Hva gjør du?", answer: "Skyter kalven først.", wrongAnswer1: "Skyter kua.", wrongAnswer2: "Skyter kua først og kalven etterpå."))
        questions.append(Question(spm: "Du har klart skyteprøven for storvilt. Kan du under storviltjakta bruke en annen rifle enn den du brukte under oppskytningen?", answer: "Nei, du kan ikke bruke en annen rifle under storviltjakten enn den du brukte på skyteprøven.", wrongAnswer1: "Ja, hvis du bruker samme type ammunisjon som under skyteprøven.", wrongAnswer2: "Ja, det har ingen betydning hvilket gevær du skyter opp med."))
        questions.append(Question(spm: "Du er på rypejakt med hagle i et åpent fjellandskap. Foran deg ser du noen ryper som sitter på bakken om lag 50 meter unna. Hva bør du gjøre i en slik situasjon?", answer: "Smyger deg innpå rypene og skyte mot en enkeltsittende rype når avstanden er 20-25 meter.", wrongAnswer1: "Skyter med en gang for å være sikker på at rypene ikke flykter.", wrongAnswer2: "Smyge deg innpå rypene til du er på forsvarlig skuddhold, og vente med å skyte til rypene letter for å gi dem en fair sjanse."))
        questions.append(Question(spm: "Kan du skyte på svømmende hjortevilt?", answer: "Ja, men kun dersom det forfølges som såret.", wrongAnswer1: "Nei.", wrongAnswer2: "Ja."))
        questions.append(Question(spm: "Datoen er 1. september og du skal ut å trene jakthunden. Kan du slippe den løs hvor som helst?", answer: "Ja, men du må ha grunneierens tillatelse", wrongAnswer1: "Ja, du kan trene hvor som helst.", wrongAnswer2: "Nei, det er fortsatt båndtvang."))
        questions.append(Question(spm: "Hvor lenge skal en skutt hare henge før innvollene tas ut?", answer: "Innvollene tas ut med det samme den er skutt.", wrongAnswer1: "To, til tre dager.", wrongAnswer2: "Minst en uke."))
        questions.append(Question(spm: "Under jakt på hvilke arter er det tillatt å bruke løs på drevet halsende hund?", answer: "Hjort, rådyr, gaupe, rødrev og hare.", wrongAnswer1: "Elg, hjort og rådyr.", wrongAnswer2: "Gaupe, rødrev, hare, villmink og grevling."))
        questions.append(Question(spm: "Hvorfor er det viktig at jaktriflen er innskutt med samme ammunisjonstype som skal benyttes under jakt?", answer: "Fordi ulike patrontyper ofte gir forskjellig treffbilde.", wrongAnswer1: "For å venne seg til rekylen.", wrongAnswer2: "For at jegeren skal bli vant med smellet."))
        questions.append(Question(spm: "Hva skjer med prosjektilet når avstanden fra riflen øker?", answer: "Prosjektilet daler mot bakken.", wrongAnswer1: "Prosjektilet går oppvoer i lufta.", wrongAnswer2: "Prosjektilet ekspanderer når den har kommet på 400 meter."))
        questions.append(Question(spm: "I et jaktområde er det jakttid på ryper ut februar måned. Etter en lang og stille juleferie ønsker du å ta en jakttur etter rypene første nyttårsdag. Kan du det?", answer: "Ja, jaktforbudet gjelder fra og med 24. til og med 31. desember. 1. januar er jakt tillatt.", wrongAnswer1: "Nei, det er jaktforbud fra og med 24. desember til og med 2. januar.", wrongAnswer2: "Nei, det er forbudt med jakt på alle helligdager."))
        questions.append(Question(spm: "Følger du loven dersom du jakter rype med salongrifle (cal. 22 LR) ?", answer: "Ja, 22 LR med hullspiss er tillat for jakt på rype.", wrongAnswer1: "Nei. Du kan skyte trost og kråke, men ikke rype.", wrongAnswer2: "Nei, du må bruke hagle."))
        questions.append(Question(spm: "Kan jakttiden være forskjellig for hann- og hunndyr av samme art?", answer: "Ja.", wrongAnswer1: "Ja, men bare dersom det er snakk om fugler.", wrongAnswer2: "Nei."))
        questions.append(Question(spm: "Du kommer kjørende langs en privat vei idet du får se en elg som halter etter påkjørsel. Datoen er 15. februar. Hva gjør du?", answer: "Varsler kommunen eller politiet umiddelbart slik at de kan sørge for avlivning dersom elgen ikke kan bli frisk.", wrongAnswer1: "Ringer til en jaktkamerat som bor i nærheten slik at han kan komme og avlive elgen.", wrongAnswer2: "Kjører videre for å ikke uroe elgen."))
        questions.append(Question(spm: "Hva kreves for å oppbevare registreringspliktig våpen hjemme?", answer: "Våpenet, eller vital del av våpenet må oppbevares i FG-godkjent sikkerhetsskap.", wrongAnswer1: "Våpenet skal være nedlåst og adskilt fra ammunisjon.", wrongAnswer2: "Du må være over 18 år."))
        questions.append(Question(spm: "Hvor lenge skal en hare henge før innvollene tas ut?", answer: "Innvollene tas ut med det samme den er skutt.", wrongAnswer1: "Minst en uke.", wrongAnswer2: "To til tre dager."))
        questions.append(Question(spm: "Kan en 16 åring som har avlagt jegerprøven, kjøpet et våpen?", answer: "Nei, nederste grensen for kjøp av våpen er 18 år.", wrongAnswer1: "Nei, nederste grensen for kjøp av våpen er 21 år.", wrongAnswer2: "Ja, men bare dersom han skal skyte på blink."))
        questions.append(Question(spm: "Hva innebærer forfølgningsretten på hjortevilt?", answer: "At den som på lovlig grunn sårer hjortevilt har rett til å forfølge og tilegne seg dyret på grunn der en annen enn jegeren har jaktrett.", wrongAnswer1: "At regler for våpen og ammunisjon ikke gjelder.", wrongAnswer2: "Før en starter å forfølge skadet hjortevilt må grunneieren ha gitt tillatelse."))
        questions.append(Question(spm: "Hvorfor bør du ikke skyte på løpende hjortevilt?", answer: "Fare for å skadeskyte dyret er stor.", wrongAnswer1: "Det kan løpe ut av jaktområdet.", wrongAnswer2: "Det kan være vanskelig å vurdere avstanden."))
        questions.append(Question(spm: "Kan det fastsettes forskjellige jakttider på hann og hunndyr innen samme viltart?", answer: "Ja.", wrongAnswer1: "Nei.", wrongAnswer2: "Ja, men bare for fugler."))
        questions.append(Question(spm: "Kan du gå på rypejakt den 28. desember dersom du har sesongkort på småviltjakt?", answer: "Nei.", wrongAnswer1: "Ja, rypejakten varer ut februar.", wrongAnswer2: "Ja, men uten bruk av hund."))
        questions.append(Question(spm: "Du har tillatelse til å jakte ender ved og på en innsjø. Kan du bruke båt med påhengsmotor under jakten?", answer: "Nei.", wrongAnswer1: "Ja, men motorstørrelsen må være under 2 hk.", wrongAnswer2: "Ja."))
        questions.append(Question(spm: "Villmink har jakktid fra 15.07 til 15.04. I påskeferien er du på hytta og ser at det er mye mink rundt vannet som hytta ligger ved. Kan du sette opp feller for å fange noen, dersom det er innenfor jakttida for mink og du på forhånd har grunneiers tillatelse?", answer: "Ja, men ikke langfredag, påskeaften og første påskedag for da er det jakt- og fangstforbud.", wrongAnswer1: "Ja, de kan stå ute hele påskeferien.", wrongAnswer2: "Nei, det er jakt og fangstforbud fra palmesøndag til og med andre påskedag."))
        questions.append(Question(spm: "Kan hvem som helst fange en hund som løper løs i ordinær bandtvangstid?", answer: "Ja.", wrongAnswer1: "Nei, bare grunneier eller politiet.", wrongAnswer2: "Ja, hvis hunden gjør noe galt, for eksempel jager fredet vilt."))
        questions.append(Question(spm: "Kan skyteprøven for storviltjakt avlegges med valgfri ammunisjon?", answer: "Nei, den kan bare avlegges med ammunisjon godkjent for storviltjakt.", wrongAnswer1: "Ja.", wrongAnswer2: "Nei, den skal avlegges med helmantlet ammunisjon."))
        questions.append(Question(spm: "Hva er det første du bør gjøre når du har felt et rådyr?", answer: "Ta ut innmaten.", wrongAnswer1: "Flå av skinnet.", wrongAnswer2: "Skjære av hodet."))
        questions.append(Question(spm: "Stilles det krav om haglstørrelse ved bruk av hagle til jakt?", answer: "Nei, det er opp til den enkelte jeger å vurdere dette ut fra hvilke viltarter vedkommende skal jakte på.", wrongAnswer1: "Ja.", wrongAnswer2: "Ja, men kun for enkelte arter."))
        questions.append(Question(spm: "Du har bare ett registreringspliktig våpen. Hvilket krav stilles det til sikring når våpenet er oppbevart i heimen din?", answer: "Våpenet, eller en vital del av våpenet må være forsvarlig nedlåst.", wrongAnswer1: "Våpenet og ammo skal oppbevares i samme rom.", wrongAnswer2: "Det er tilstrekkelig at boligen er skikkelig avlåst."))
        questions.append(Question(spm: "Under jakt med pumphagle. Hvor mange skudd er det lov å lade med?", answer: "Til jakt er bruk av hagle for mer enn to skudd forbudt.", wrongAnswer1: "Til jakt er bruk av hagle for mer enn fire skudd forbudt.", wrongAnswer2: "Til jakt er bruk av hagle for mer enn fem skudd forbudt."))
        questions.append(Question(spm: "Når er den generelle båndtvangen?", answer: "Fra og med 1.april til og med 20.august.", wrongAnswer1: "Hele året.", wrongAnswer2: "Fra og med 1.mai til og med 31.august."))
        questions.append(Question(spm: "Kan hunder springe løs uten å bli fulgt av eieren eller andre utenom den ordinære båndtvangen?", answer: "Nei, i områder som er åpne for fri ferdsel, kan hunden springe løs dersom den er forsvarlig passet på.", wrongAnswer1: "Ja, men bare voksne hunder.", wrongAnswer2: "Ja."))
        questions.append(Question(spm: "Er det tillatt å skyte hare med salongrifle, cal. 22 LR?", answer: "Nei.", wrongAnswer1: "Ja, men bare med ekspanderende prosjektil.", wrongAnswer2: "Ja."))
        questions.append(Question(spm: "Kan du fjerne en beverdam på din egen eiendom?", answer: "Nei.", wrongAnswer1: "Ja.", wrongAnswer2: "Ja, men bare dersom dammen gjør skade."))
        questions.append(Question(spm: "For hvilken arter kreves det ekspanderende prosjektil når jakten utøves med rifle?", answer: "Alle storviltarter og bever.", wrongAnswer1: "Elg, hjort og villrein.", wrongAnswer2: "Elg, hjort, villrein, gaupe og rådyr."))
        questions.append(Question(spm: "Hvordan skal ryper og skogsfugl oppbevares under modning?", answer: "Henges etter hodet og skjermes for fluer.", wrongAnswer1: "Ta ut innvollene og fryses så raskt som mulig.", wrongAnswer2: "Pakke de ned i plastposer."))
        questions.append(Question(spm: "Hvorfor er det viktig å avlive viltet så fort som mulig?", answer: "For at viltet ikke skal lide unødvendig.", wrongAnswer1: "For å få kjøttet så fort som mulig ned i fryseeren.", wrongAnswer2: "For å få flere skuddsjanser på flere dyr."))
        questions.append(Question(spm: "Bør en hare flås samme dag som den er skutt?", answer: "Nei, vanligvis henges den noen dager til modning med skinnet på.", wrongAnswer1: "Ja.", wrongAnswer2: "Nei, den kan puttes i fryseren med skinnet på om kvelden."))
        questions.append(Question(spm: "Villmink har jakttid hele året. Det er julaften og du har endelig fri og tid til å drive med fellefangst. Du har grunneiers tillatelse til å drive med fellefangst i det aktuelle området og du har betalt jegeravgiften. Kan du sette opp fellene?", answer: "Nei, jakt og fangst er ikke tillatt i tiden fra og med 24. desember til 31. desember.", wrongAnswer1: "Ja, fellene kan benyttes i hele juleferien.", wrongAnswer2: "Ja, men fellene kan ikke benyttes på julaften og nyttårsaften."))
        questions.append(Question(spm: "Hva kalles normalt et våpen som har ett hagleløp og ett rifleløp sammenbygd?", answer: "Kombinasjonsvåpen.", wrongAnswer1: "Konkurransevåpen", wrongAnswer2: "Haglerifle."))
        questions.append(Question(spm: "Du har kjøpt deg småviltjaktkort for et område. Kan du da skyte rådyr?", answer: "Nei, rådyr blir forvaltet som storvilt.", wrongAnswer1: "Ja, men rådyr må skytes med rifle.", wrongAnswer2: "Ja, rådyr er å betrakte som småvilt."))
        questions.append(Question(spm: "Beveren har bygd en beverbolig på din eiendom og du frykter at det skal oppstå en situasjon med oversvømmelse av store områder. Kan du rive beverboligen?", answer: "En beverbolig kan kun rives dersom det foreligger tillatelse fra kommunen.", wrongAnswer1: "Nei, en beverbolig kan ikke fjernes.", wrongAnswer2: "Ja, en beverbolig som kan volde skade kan uten videre rives."))
        questions.append(Question(spm: "Er det tillat å bruke luftgevær til jakt?", answer: "Nei.", wrongAnswer1: "Ja, men kun på de minste artene.", wrongAnswer2: "Ja, men bare dersom du jakter på egen eiendom."))
        questions.append(Question(spm: "Hvilket krav stiller viltloven til våpen som skal brukes til jakt?", answer: "Til felling av vilt er det kun tillatt å bruke skytevåpen som lades med krutt.", wrongAnswer1: "Alle typer skytevåpen kan brukes, til og med pil og bue.", wrongAnswer2: "Viltloven stiller ingen krav til skytevåpen som skal brukes til jakt."))
        questions.append(Question(spm: "Hva er aldersgrensen for å drive selvstendig storviltjakt?", answer: "18 år", wrongAnswer1: "20 år", wrongAnswer2: "16 år"))
        questions.append(Question(spm: "Er det lov å bruke gift ved avlivning av viltet?", answer: "Nei.", wrongAnswer1: "Ja, men bare ved avlining av kråke og rev.", wrongAnswer2: "Ja."))
        questions.append(Question(spm: "Under jakt på hvilke arter egner det seg å bruke ledhund (båndhund)?", answer: "Elg og hjort.", wrongAnswer1: "Rype og storfugl.", wrongAnswer2: "Rev og mår."))
        questions.append(Question(spm: "Hvor lenge bør rypene henges til mørning før de fryses ned?", answer: "40 døgngrader.", wrongAnswer1: "De bør fryses ned så fort som mulig.", wrongAnswer2: "Bare natta over."))
        questions.append(Question(spm: "Hvilken hovedregel gjelder for fredning i viltloven?", answer: "At alle viltarter er fredet med mindre noe annet er bestemt.", wrongAnswer1: "At alt vilt er jaktbart, men det må tas hensyn til fredningsbestemmelsene.", wrongAnswer2: "At alle jakttidene tar hensyn til yngletida."))
        questions.append(Question(spm: "Hva er et revir?", answer: "Et område der enkeltindivider, par/familier bor og som forsvares mot inntrengere av samme art.", wrongAnswer1: "Et område der mårdyr kan stikke seg bort.", wrongAnswer2: "Et oppholdssted for revefamilier."))
        questions.append(Question(spm: "Hvilken del av et haglegevær har størst betydning for at du skal treffe godt?", answer: "Kolben.", wrongAnswer1: "Løpet.", wrongAnswer2: "Sikteskinnen."))
        questions.append(Question(spm: "Fines det bestemmelser om hvilke raser som kan godkjennes som ettersøkshunder?", answer: "Rase har ingen betydning.", wrongAnswer1: "Det må være sporhunder.", wrongAnswer2: "Det må være jakthunder."))
        questions.append(Question(spm: "Hvilke av disse våpen er tillatt som jaktvåpen i Norge?", answer: "Kombinasjonsvåpen.", wrongAnswer1: "Helautomatiske våpen.", wrongAnswer2: "Halvautomatiske våpen av militær karakter."))
        questions.append(Question(spm: "Hvem er det som generelt har enerett til jakt og fangst på privat grunn i Norge?", answer: "Grunneieren.", wrongAnswer1: "Alle som bor i kommunen.", wrongAnswer2: "De som har jakt og fangst som næring."))
        questions.append(Question(spm: "Hva er en viktig grunnregel ved all skyting mot et bevegelig mål (vilt,leirdue)?", answer: "Geværet skal være i bevegelse også i skuddøyeblikket.", wrongAnswer1: "Avtrekket skal være langsomt.", wrongAnswer2: "Skytteren skal stå med føttene samlet."))
        questions.append(Question(spm: "Hva er forsvarlig sikkerhetsavstand for hagl med hagldiameter 3,5 mm?", answer: "350 m", wrongAnswer1: "300 m", wrongAnswer2: "250 m"))
        questions.append(Question(spm: "Kan hvem som helst ferdes med skytevåpen på annens grunn?", answer: "Nei, kun dersom det er lovlig ærend og våpenet er uladd.", wrongAnswer1: "Ja, det er en gammel hevd.", wrongAnswer2: "Ja, men bare med uladd våpen."))
        questions.append(Question(spm: "Er det tillatt å bruke selvskudd til jakt på gaupe og rødrev i forbindelse med åtejakt på eget gårdstun?", answer: "Nei.", wrongAnswer1: "Ja.", wrongAnswer2: "Ja, men bare hvis du har en lyskilde festet til veggen."))
        questions.append(Question(spm: "Hva er henholdsvis ribbing og flåing av fuglevilt?", answer: "Ribbing er å trekke fjærene av uten å ødelegge skinnet, mens flåing er å trekke av skinnet med fjærene på.", wrongAnswer1: "Ribbing betyr å brenne fjærene av, mens flåing er å trekke fjærene av enkeltvis.", wrongAnswer2: "Ribbing og flåing er det samme."))
        questions.append(Question(spm: "Hvilken maksimal skyteavstand er regnet som jaktetisk forsvarlig skuddhold når man bruker en vanlig hagle på småviltjakt?", answer: "30 meter.", wrongAnswer1: "50 meter.", wrongAnswer2: "60 meter."))
        questions.append(Question(spm: "Er det tillatt å bruke både halge og rifle til rådyrjakt?", answer: "Ja, men under den tidlige bukkejakta er det bare tillatt å benytte rifle.", wrongAnswer1: "Nei, bare rifle er tillatt.", wrongAnswer2: "Nei, bare hagle er tillatt."))
        questions.append(Question(spm: "Hvem er det som har enerett til jakt og fangst på privat grunn i Norge?", answer: "Grunneieren.", wrongAnswer1: "Alle som bor i kommunen.", wrongAnswer2: "De som har jakt og fangst som næring."))
        questions.append(Question(spm: "Er det tillatt med snarefangst av rype?", answer: "Ja, i de kommuner som har særskilt tillatelse.", wrongAnswer1: "Ja, men bare i Nordland, Troms og Finnmark.", wrongAnswer2: "Nei."))
        questions.append(Question(spm: "Ryper som vi skyter første jaktuka må vi oppbevare ved jakthytta til vi drar hjem. Da bør de:", answer: "Henges opp på en fluesikker og luftig plass utendørs.", wrongAnswer1: "Plasseres som de er, helst på en hylle inne i hytta.", wrongAnswer2: "Legges i plastposer på hyttekjøkkenet."))
        questions.append(Question(spm: "Kan hvem som helst fange en hund som løper løs i båndtvangstiden?", answer: "Ja.", wrongAnswer1: "Nei, bare grunneier eller politi.", wrongAnswer2: "Nei, først må hunden ha gjort noe galt, for eksempel jaget fredet vilt."))
        questions.append(Question(spm: "Er gråspurv vilt i henhold til viltloven?", answer: "Ja.", wrongAnswer1: "Ja, men bare dersom den oppholder seg i skogen.", wrongAnswer2: "Nei."))
        questions.append(Question(spm: "Du er på jakt og har felt en av våre fiskeandarter. Hva bør du gjøre?", answer: "Ta ut innvollene og flå fuglen.", wrongAnswer1: "Legge den til tørk", wrongAnswer2: "Legge den i en plastpose."))
        questions.append(Question(spm: "Må man ha avtale om tilgang til godkjent ettersøkshund når man jakter rådyr?", answer: "Ja.", wrongAnswer1: "Nei, man må kun ha avtale med godkjent ettersøkshund under jakt på elg og hjort.", wrongAnswer2: "Ja, men ikke hvis du jakter på egen eiendom."))
        questions.append(Question(spm: "Hvor lenge gjelder forfølgningsretten til skadeskutt hjortevilt som går over på jaktterrenget til en annen?", answer: "Ut den dagen da det skadeskutte dyret gikk over på jaktterrenget til en annen.", wrongAnswer1: "Inntil det skadeskutte dyret finnes.", wrongAnswer2: "Ut den dagen da dyret ble skadeskutt."))
        questions.append(Question(spm: "Hvilke typer vilt er det nødvendig å henge til modning i 40 døgngrader?", answer: "Storvilt, hønsefugler og hare.", wrongAnswer1: "Sjøfugler som storskarv, toppskarv og havelle.", wrongAnswer2: "Selarter som steinkobbe og havert."))
        questions.append(Question(spm: "Du har en automathagle som kan lades med fem patroner. Hva må du gjøre for å benytte denne på jakt?", answer: "Du må sette i en plombe slik at du får en patron i kammer og en i magasin.", wrongAnswer1: "Du behøver ikke gjøre noe.", wrongAnswer2: "Du kan ha en patron i kammer og to i magasinet."))
        questions.append(Question(spm: "Er det tillatt å bruke både rifle og hagle under rådyrjakt?", answer: "Ja, men under den tidlige bukkejakta er det bare tillatt å benytte rifle.", wrongAnswer1: "Nei, bare hagle er  tillatt", wrongAnswer2: "Nei, bare rifle er tillatt"))
        questions.append(Question(spm: "Må alle som skal jakte i Norge betale jegeravgift?", answer: "Ja.", wrongAnswer1: "Nei, ikke de som jakter på egen eiendom.", wrongAnswer2: "Nei, bare de som jakter på statsgrunn."))
        questions.append(Question(spm: "Hvilken skuddvinkel er mest forsvarlig mot hjortevilt?", answer: "Rene sideskudd.", wrongAnswer1: "Motskudd på skrå.", wrongAnswer2: "Rett forfra."))
        questions.append(Question(spm: "En 17 år gammel gutt sitter alene på post under rådyrjakt med hagle. Politiet har gitt gutten tillatelse til å erverve medbrakt hagle, og han har avlagt jegerprøven. Faren til gutten kan hele tiden kommunisere med sønnen gjennom jaktradio og mobiltelefon. Er dette lovlig opplæringsjakt?", answer: "Nei. Faren må være i fysisk nærhet av sønnen under opplæring.", wrongAnswer1: "Ja.", wrongAnswer2: "Ja, men bare dersom sønnen venter med å skyte til faren sier at det er greit."))
        questions.append(Question(spm: "Mor og sønn sitter på elgpost. Mora har jaktet i mange år. Sønnen er fylt 17 år og har avlagt jegerprøven og skyteprøven. Dersom det kommer en elg som de har fellingstillatelse for, kan sønnen da skyte?", answer: "Ja.", wrongAnswer1: "Nei, aldersgrensen for å skyte storvilt er 20 år.", wrongAnswer2: "Nei, aldersgrensen for å skyte storvilt er 18 år."))
        questions.append(Question(spm: "Datoen er 1. oktober og jegerne er på lovlig rådyrjakt. Kan han skyte denne rådyrbukken med hagle, når avstanden er 20 meter?", answer: "Ja.", wrongAnswer1: "Nei, det er forbudt å skyte rådyr med hagle.", wrongAnswer2: "Nei, rådyrbukken kan bare skytes med rifle."))
        questions.append(Question(spm: "En gutt på 15 år er på rypejakt sammen med faren, som er en gammel jeger. Gutten har ikke avlagt jegerprøven. Kan han bruke hagle?", answer: "Ja, slik opplæringsjakt er lovlig for en 15-åring.", wrongAnswer1: "Nei, jakt med hagle betinger at gutten er fylt 16 år.", wrongAnswer2: "Nei, i følge våpenloven må alle som bruker skytevåpen være 18 år."))
        questions.append(Question(spm: "En mor og hans 15 år gamle sønn er på rypejakt. Sønnen har ikke avlagt jegerprøven. Kan han bruke haglegevær?", answer: "Ja, slik opplæringsjakt er tillatt for en femten åring.", wrongAnswer1: "Nei, han må være 16 år for å bære våpen.", wrongAnswer2: "Nei, han har ikke avlagt jegerprøven."))
        }
        
        ///////////////////////
        
        
        setArtQuestions()
        pickQuestions()
        
    }
    
    func setArtQuestions(){
        ArtQuestions.append(Question(spm: "Hvilken fugl er dette?", answer: "Nøtteskrike", wrongAnswer1: "Nøttekråke", wrongAnswer2: "Gråtrost", picture: "nottesrkike2.jpg"))
        ArtQuestions.append(Question(spm: "Hvilken art er dette?", answer: "Krikkand", wrongAnswer1: "Toppand", wrongAnswer2: "Ærfugl", picture: "krikkand.jpg"))
        ArtQuestions.append(Question(spm: "Hvilken art er dette?", answer: "Toppand", wrongAnswer1: "Stokkand", wrongAnswer2: "Krikkand", picture: "toppand.jpg"))
        ArtQuestions.append(Question(spm: "Hvilken art er dette?", answer: "Fjellrype", wrongAnswer1: "Lirype", wrongAnswer2: "Jerpe", picture: "fjellrype.jpg"))
        ArtQuestions.append(Question(spm: "Hvilken art er dette?", answer: "Ringdue", wrongAnswer1: "Rugde", wrongAnswer2: "Skogdue", picture: "ringdue.jpg"))
        ArtQuestions.append(Question(spm: "Hvilken art er dette?", answer: "Kanadagås", wrongAnswer1: "Hvitkinngås", wrongAnswer2: "Grågås", picture: "kanadagaas.jpg"))
        ArtQuestions.append(Question(spm: "Hvilken art er dette?", answer: "Hvitkinngås", wrongAnswer1: "Kanadagås", wrongAnswer2: "Grågås", picture: "hvitkinngaas.jpg"))
        ArtQuestions.append(Question(spm: "Hvilken art er dette?", answer: "Gaupe", wrongAnswer1: "Mårhund", wrongAnswer2: "Rev", picture: "gaupe.jpg"))
        ArtQuestions.append(Question(spm: "Hvilken art er dette?", answer: "Toppskarv", wrongAnswer1: "Kanadagås", wrongAnswer2: "Storskarv", picture: "toppskarv.jpg"))
        ArtQuestions.append(Question(spm: "Hvilken art er dette?", answer: "Storskarv", wrongAnswer1: "Kanadagås", wrongAnswer2: "Toppskarv", picture: "storskarv.jpg"))
        ArtQuestions.append(Question(spm: "Hvilken art er dette?", answer: "Jerpe", wrongAnswer1: "Lirype", wrongAnswer2: "Tiur", picture: "jerpe.jpg"))
        ArtQuestions.append(Question(spm: "Hvilken art er dette?", answer: "Svartbak", wrongAnswer1: "Hettemåke", wrongAnswer2: "Sildemåke", picture: "svartbak.jpg"))
        ArtQuestions.append(Question(spm: "Hvilken art er dette?", answer: "Rådyr", wrongAnswer1: "Hjort", wrongAnswer2: "Reinsdyr", picture: "raadyr.jpg"))
        ArtQuestions.append(Question(spm: "Hvilken art er dette?", answer: "Mårhund", wrongAnswer1: "Jerv", wrongAnswer2: "Grevling", picture: "maarhund.jpg"))
        ArtQuestions.append(Question(spm: "Hvilken art er dette?", answer: "Havelle", wrongAnswer1: "Ærfugl", wrongAnswer2: "Toppand", picture: "havelle.jpg"))
        ArtQuestions.append(Question(spm: "Hvilken art er dette?", answer: "Rugde", wrongAnswer1: "Enkeltbekkasin", wrongAnswer2: "Heilo", picture: "rugde.jpg"))
        ArtQuestions.append(Question(spm: "Hvilken art er dette?", answer: "Grågås", wrongAnswer1: "Kortnebbgås", wrongAnswer2: "Kanadagås", picture: "graagaas.jpg"))
        ArtQuestions.append(Question(spm: "Hvilken art er dette?", answer: "Kortnebbgås", wrongAnswer1: "Grågås", wrongAnswer2: "Kanadagås", picture: "kortnebbgaas.jpg"))
        ArtQuestions.append(Question(spm: "Hvilken art er dette?", answer: "Skjære", wrongAnswer1: "Kråke", wrongAnswer2: "Nøttekråke", picture: "skjaere.jpg"))
        ArtQuestions.append(Question(spm: "Hvilken art er dette?", answer: "Enkeltbekkasin", wrongAnswer1: "Rugde", wrongAnswer2: "Nøtteskrike", picture: "enkeltbekkasin.jpg"))
        ArtQuestions.append(Question(spm: "Hvilken art er dette?", answer: "Bever", wrongAnswer1: "Bisamrotte", wrongAnswer2: "Oter", picture: "bever.jpg"))
        ArtQuestions.append(Question(spm: "Hvilken art er dette?", answer: "Bisamrotte", wrongAnswer1: "Bever", wrongAnswer2: "Oter", picture: "bisamrotte.jpg"))
        ArtQuestions.append(Question(spm: "Hvilken art er dette?", answer: "Gråtrost", wrongAnswer1: "Skjære", wrongAnswer2: "Rødvingetrost", picture: "graatrost.jpg"))
        ArtQuestions.append(Question(spm: "Hvilken art er dette?", answer: "Brushane", wrongAnswer1: "Småspove", wrongAnswer2: "Rugde", picture: "brushane.jpg"))
        ArtQuestions.append(Question(spm: "Hvilken art er dette?", answer: "Orrfugl", wrongAnswer1: "Storfugl", wrongAnswer2: "Lirype", picture: "orrfugl.jpg"))
        ArtQuestions.append(Question(spm: "Hvilken art er dette?", answer: "Storfugl", wrongAnswer1: "Orrfugl", wrongAnswer2: "Lirype", picture: "storfugl.jpg"))
        ArtQuestions.append(Question(spm: "Hvilken art er dette?", answer: "Grevling", wrongAnswer1: "Mårhund", wrongAnswer2: "Jerv", picture: "grevling.jpg"))
        ArtQuestions.append(Question(spm: "Hvilken art er dette?", answer: "Svartand", wrongAnswer1: "Mandarinand", wrongAnswer2: "Storskarv", picture: "svartand.jpg"))
        ArtQuestions.append(Question(spm: "Hvilken art er dette?", answer: "Kråke", wrongAnswer1: "Ravn", wrongAnswer2: "Skjære", picture: "kraake.jpg"))
        ArtQuestions.append(Question(spm: "Hvilken art er dette?", answer: "Ravn", wrongAnswer1: "Kråke", wrongAnswer2: "Skjære", picture: "ravn.jpg"))
        ArtQuestions.append(Question(spm: "Hvilken art er dette?", answer: "Oter", wrongAnswer1: "Bisamrotte", wrongAnswer2: "Bever", picture: "oter.jpg"))
        ArtQuestions.append(Question(spm: "Hvilken art er dette?", answer: "Hjort", wrongAnswer1: "Rådyr", wrongAnswer2: "Elg", picture: "hjort.jpg"))
        ArtQuestions.append(Question(spm: "Hvilken art er dette?", answer: "Villrein", wrongAnswer1: "Rådyr", wrongAnswer2: "Hjort", picture: "reinsdyr.jpg"))
        ArtQuestions.append(Question(spm: "Er dette en elgku eller en elgoks?", answer: "Elgku", wrongAnswer1: "Elgokse", wrongAnswer2: "Ingen av delene, dette er en hjort.", picture: "elgku.jpg"))
        ArtQuestions.append(Question(spm: "Er dette en simle eller en bukk?", answer: "Simle", wrongAnswer1: "Bukk", wrongAnswer2: "Ingen av delene, dette er en elg.", picture: "simle.jpg"))
        ArtQuestions.append(Question(spm: "Er dette en simle eller en bukk?", answer: "Bukk", wrongAnswer1: "Simle", wrongAnswer2: "Ingen av delene, dette er en hjort.", picture: "bukk.jpg"))
        ArtQuestions.append(Question(spm: "Er dette en simle eller en bukk?", answer: "Ingen av delene, dette er en hjort.", wrongAnswer1: "Simle", wrongAnswer2: "Bukk", picture: "hjort.jpg"))
        ArtQuestions.append(Question(spm: "Hvilken fugl er dette?", answer: "Orrhøne", wrongAnswer1: "Storfugl", wrongAnswer2: "Lirype", picture: "orrhoene.jpg"))
        ArtQuestions.append(Question(spm: "Hvilken art er dette?", answer: "Lirype", wrongAnswer1: "Orrhøne", wrongAnswer2: "Røy", picture: "lirype.jpg"))
        ArtQuestions.append(Question(spm: "Hvilken art er dette?", answer: "Knoppand/moskusand", wrongAnswer1: "Mandarinand", wrongAnswer2: "Grågås", picture: "moskusand.jpg"))
        ArtQuestions.append(Question(spm: "Hvilken art er dette?", answer: "Villsvin", wrongAnswer1: "Grevling", wrongAnswer2: "Gris", picture: "villsvin.jpg"))
        ArtQuestions.append(Question(spm: "Hvilken art er dette?", answer: "Heilo", wrongAnswer1: "Enkeltbekkasin", wrongAnswer2: "Rugde", picture: "heilo.jpg"))
        ArtQuestions.append(Question(spm: "Hvilken art er dette?", answer: "Laksand", wrongAnswer1: "Kvinand", wrongAnswer2: "Toppand", picture: "laksand.jpg"))
        ArtQuestions.append(Question(spm: "Hvilken art er dette?", answer: "Kvinand", wrongAnswer1: "Stokkand", wrongAnswer2: "Toppand", picture: "kvinand.jpg"))
        ArtQuestions.append(Question(spm: "Hvilken art er dette?", answer: "Stokkand", wrongAnswer1: "Ærfugl", wrongAnswer2: "Toppand", picture: "stokkand.jpg"))
        ArtQuestions.append(Question(spm: "Hvilken art er dette?", answer: "Ærfugl", wrongAnswer1: "Laksand", wrongAnswer2: "Mandarinand", picture: "aerfugl.jpg"))
        ArtQuestions.append(Question(spm: "Hvilken art er dette?", answer: "Dåhjort", wrongAnswer1: "Hjort", wrongAnswer2: "Rådyr", picture: "daahjort.jpg"))
        ArtQuestions.append(Question(spm: "Hvilken art er dette?", answer: "Elg", wrongAnswer1: "Villrein", wrongAnswer2: "Hjort", picture: "elg.jpg"))
        ArtQuestions.append(Question(spm: "Hvilken art er dette?", answer: "Myrsnipe", wrongAnswer1: "Heilo", wrongAnswer2: "Rugde", picture: "myrsnipe.jpg"))
        ArtQuestions.append(Question(spm: "Hvilken art er dette?", answer: "Brunnakke", wrongAnswer1: "Ærfugl", wrongAnswer2: "Mandarinand", picture: "brunnakke.jpg"))
        ArtQuestions.append(Question(spm: "Hvilken art er dette?", answer: "Mink", wrongAnswer1: "Oter", wrongAnswer2: "Mår", picture: "mink.jpg"))
        ArtQuestions.append(Question(spm: "Hvilken art er dette?", answer: "Mår", wrongAnswer1: "Oter", wrongAnswer2: "Mink", picture: "maar.jpg"))
        ArtQuestions.append(Question(spm: "Hvilken art er dette?", answer: "Mandarinand", wrongAnswer1: "Toppand", wrongAnswer2: "Krikkand", picture: "mandarinand.jpg"))
        ArtQuestions.append(Question(spm: "Hvilken art er dette?", answer: "Stripegås", wrongAnswer1: "Kanadagås", wrongAnswer2: "Hvitkinnkås", picture: "stripegaas.jpg"))
        ArtQuestions.append(Question(spm: "Hvilken art er dette?", answer: "Rødrev", wrongAnswer1: "Fjellrev", wrongAnswer2: "Mårhund", picture: "roedrev.jpg"))
        ArtQuestions.append(Question(spm: "Hvilken art er dette?", answer: "Fjellrev", wrongAnswer1: "Rødrev", wrongAnswer2: "Mårhund", picture: "fjellrev.jpg"))
        ArtQuestions.append(Question(spm: "Hvilken art er dette?", answer: "Hare", wrongAnswer1: "Kanin", wrongAnswer2: "Mårhund", picture: "hare.jpg"))
        ArtQuestions.append(Question(spm: "Hvilken fugl er dette?", answer: "Tiur", wrongAnswer1: "Røy", wrongAnswer2: "Orrhøne", picture: "tiur.jpg"))
        ArtQuestions.append(Question(spm: "Hvilken fugl er dette?", answer: "Orrhane", wrongAnswer1: "Tiur", wrongAnswer2: "Orrhøne", picture: "orrhane.jpg"))
        ArtQuestions.append(Question(spm: "Hvilken vei hoppet haren?", answer: "Venstre", wrongAnswer1: "Høyre", wrongAnswer2: "Dette er revespor!", picture: "harespor.jpg"))
        ArtQuestions.append(Question(spm: "Hareungene fødes i et bol som moren lager?", answer: "Nei, de fødes rett i vegetasjonen.", wrongAnswer1: "Ja, det er riktig.", wrongAnswer2: "Nei, de fødes i reir."))
        ArtQuestions.append(Question(spm: "Når er elgen i sin beste kalveproduserende alder?", answer: "5-10 år.", wrongAnswer1: "1-3 år.", wrongAnswer2: "12-15 år."))
        ArtQuestions.append(Question(spm: "Hvilken hunderase er dette?", answer: "Engelsk setter", wrongAnswer1: "Pointer", wrongAnswer2: "Vorstehhund", picture: "engelsksetter.jpg"))
        ArtQuestions.append(Question(spm: "Hvilken hunderase er dette?", answer: "Hamiltonstøver", wrongAnswer1: "Finsk støver", wrongAnswer2: "Dachshund", picture: "hamiltonstoever.jpg"))
        ArtQuestions.append(Question(spm: "Hvilken hunderase er dette?", answer: "Vorstehhund", wrongAnswer1: "Pointer", wrongAnswer2: "Engelsk setter", picture: "vorstehhund.jpg"))
        ArtQuestions.append(Question(spm: "Hvilken hunderase er dette?", answer: "Spaniel", wrongAnswer1: "Labrador retriever", wrongAnswer2: "Engelsk setter", picture: "spaniel.jpg"))
        ArtQuestions.append(Question(spm: "Hva er den mest brukte stående fuglehundrasen i Norge?", answer: "Engelsk setter", wrongAnswer1: "Pointer", wrongAnswer2: "Vorstehhund"))
    }
    
    func pickQuestions(){
        ArtQuestions.shuffle()
        if !isArtQuestions{
            var i = 0
            questions.shuffle()
            questions.removeSubrange(Int(Float(numberQuestions)*0.8)...(questions.count-1))
            while questions.count <= numberQuestions{
                questions.insert(ArtQuestions[i], at: Int(arc4random_uniform(UInt32(questions.count))))
                i = i + 1
            }
        }
        else {
            ArtQuestions.removeSubrange(numberQuestions...(ArtQuestions.count-1))
            questions = ArtQuestions
        }
        
    }
    
    func getQuestion() -> String {
        return self.questions[askedQuestions].spm
    }
    
    func getAnswer() -> String{
        return self.questions[askedQuestions].answer
    }
    
    func getWrongAnswer1() -> String{
        return self.questions[askedQuestions].wrongAnswer1
    }
    
    func getWrongAnswer2() -> String {
        return self.questions[askedQuestions].wrongAnswer2
    }
    
    func nextQuestion(){
        askedQuestions += 1
    }
    
    func getImage() -> UIImageView{
        return self.questions[askedQuestions].image!
    }
    
    func hasImage() -> Bool{
        return self.questions[askedQuestions].hasImage()
    }
    func askedQues() -> Int{
        return self.askedQuestions
    }
    
}
