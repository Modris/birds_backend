CREATE DATABASE IF NOT EXISTS putni;
use putni;

CREATE TABLE category(
	id SMALLINT UNSIGNED AUTO_INCREMENT,
    name VARCHAR(100),
	english_name VARCHAR(100),
    latin_name VARCHAR(100),
    PRIMARY KEY (id)
);
CREATE TABLE location(
	id SMALLINT UNSIGNED AUTO_INCREMENT,
    name VARCHAR(100),
    PRIMARY KEY (id)
);

CREATE TABLE birds(
	id INT UNSIGNED AUTO_INCREMENT,
    name VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
	english_name VARCHAR(100),
    latin_name VARCHAR(100),
    category smallint unsigned,
    location smallint unsigned,
    fun_fact VARCHAR(255),
    comment TEXT,
    PRIMARY KEY (id),
	FOREIGN KEY  (category) REFERENCES  category(id),
    FOREIGN KEY  (location) REFERENCES  location(id)
);

CREATE TABLE details(
	id INT UNSIGNED AUTO_INCREMENT,
    name VARCHAR(100),
    birds INT UNSIGNED,
    PRIMARY KEY (id),
    FOREIGN KEY (birds) REFERENCES birds(id)
);

INSERT INTO location VALUES(NULL,"pilsēta"),(NULL,"lauki"),(NULL,"nomale"),(NULL,"meži"),(NULL, "purvs"),(NULL,"nomale"),(NULL, "ūdens");

INSERT INTO category VALUE(NULL,"Zvirbuļveidīgie","Sparrow types","Passeriformes");
INSERT INTO category VALUE(NULL,"Zosveidīgie","Waterfowl","Anseriformes");
INSERT INTO category VALUE(NULL,"Tārtiņveidīgie","Wader", "Charadriiformes");
INSERT INTO category VALUE(NULL,"Pelikānveidīgie","Pelicans","Pelecaniformes");
INSERT INTO category VALUE(NULL,"Dzērvjveidīgie", "Cranes","Gruiformes");
INSERT INTO category VALUE(NULL,"Vanagveidīgie", "Hawks","Accipitriformes");
INSERT INTO category VALUE(NULL,"Dzilnveidīgie", "Woodpeckers","Piciformes");
INSERT INTO category VALUE(NULL,"Baložveidīgie", "Pigeons","Columbiformes");
INSERT INTO category VALUE(NULL,"Svīrveidīgie", "Swifts","Apodiformes");


INSERT INTO birds VALUE(NULL, "Baltā Cielava", "White Wagtail","Motacilla alba",1,2,
"Baltā cielava ir ne tikai Latvijas Ornitoloģijas biedrības simbols, bet arī Latvijas nacionālais putns.",
"Kad jaunie putni sāk ceļot, to galva, vaigi un dažkārt arī kakls mēdz iekrāsoties dzeltenīgi, mulsinot putnu vērotājus.");
                   
INSERT INTO birds VALUE(NULL, "Paugurknābja gulbis", "Mute Swan","Cygnus olor",2,7,
"Paugurknābja gulbis, kas mīt gan ezeros un dīķos, gan jūrā, gan upēs, bet neprot nirt, ir lielākais putns Latvijā",
"Visai agresīvs un dusmīgs putns, kas savu attieksmi izrāda, izplešot spārnus un šņācot.");

INSERT INTO birds VALUE(NULL, "Ziemeļu gulbis", "Whooper Swan","Cygnus cygnus",2,7,
"Ziemeļu gulbis ir skaļākais no Eiropas gulbjiem un agresīvākais, cīnoties par ligzdošanas vietu",
"Ziemeļu gulbis ligzdu būvē no ūdensaugiem un sakneņiem ūdenstilpēs: ierasti uz saliņām zem krūma vai koka vai arī sēklī samērā atklāti.");
                      
INSERT INTO birds VALUE(NULL, "Meža pīle", "Mallard","Anas platyrhynchos platyrhynchos",2,7,
"Vasarās meža pīļu tēviņi ir līdzīgi mātītēm, jo ir zaudējuši izteiksmīgo un košo apspalvojumu.",
"Barojoties gan ar augu lapām un dzinumiem, gan ar vabolītēm, spārēm, gliemjiem, meža pīle parasti nenirst.");
                      
INSERT INTO birds VALUE(NULL, "Ķīvīte", "Northern Lapwing","Vanellus vanellus",3,7,
"Ķīvītes, aizstāvot savu perējumu, mēdz būt izteikti agresīvas. Var uzbrukt pat vārnām.",
"Ķīvītes ir tie gājputni, kas ierodas vieni no pirmajiem un aizlido vieni no pēdējiem.");
                       
INSERT INTO birds VALUE(NULL, "Zivju gārnis", "Grey Heron","Ardea cinerea",4,7,
"Zivju gārņa knābis līdzinās izcili asam duncim, ar kuru putns spēj meistarīgi izmakšķerēt zivi.",
"Zivju gārņi ligzdo kolonijās, ko visbiežāk veido kokos: tur veidotās ligzdās par mazuļiem rūpējas gan mātīte, gan tēviņš.");

INSERT INTO birds VALUE(NULL, "Dzērve", "Common Crane","Grus grus",5,5,
"Dzērve ēd dzērvenes?Jā, ogas tai garšo, taču dzērve ir visēdāja un labprāt mielojas ar kukaiņiem, ūdensaugiem, abiniekiem un citām “uzkodām”.",
"Spārni grezni izplešas, kad dzērves metas dzērvju riesta dejā ar kaismīgiem saucieniem. Dzērvju klaigas ir līdzīgas trompetes skaņām.");

INSERT INTO birds VALUE(NULL, "Sudrabkaija", "(European) Herring Gull","Larus argentatus argentatus",3,1,
"Sudrabkaijas ir lieli un ļoti trokšņaini putni, kuri sastopami pārsvarā piejūras pilsētās un ciemos, kur labprāt ligzdo uz ēku jumtiem",
"Sudrabkaija pieauguša putna spalvu tērpu iegūst trīs gadu vecumā, pakāpeniski no gaiši pelēka jaunā putna pārtopot baltā pieaugušā sudrabkaijā.");
                     
INSERT INTO birds VALUE(NULL, "Lielais ķīris", "Black-headed Gull","Chroicocephalus ridibundus",3,7,
"Lielais ķīris ir sabiedrisks putns, kas ligzdo kolonijā un parasti uzturas baros",
"Lai izpatiktu mātītei, tēviņš tai atrij barību.");

INSERT INTO birds VALUE(NULL, "Peļu klijāns", "Common Buzzard","Buteo buteo",6,4,
"Peļu klijāns ir visbiežāk sastopamais plēsīgais putns Latvijā, kurš lidojot plivinās uz vietas, lai saskatītu medījumu, un planējot tur spārnus lēzena V burta veidā.",
"Lai izpelnītos mātītes apbrīnu, peļu klijānu tēviņš veic akrobātisku lidojumu: uzlido augstu debesīs un tad strauji pikē lejup ligzdas virzienā, griežoties pa spirāli.");

INSERT INTO birds VALUE(NULL, "Vistu vanags", "Northern Goshawk","Accipiter gentilis gentilis",6,4,
"Vanagus viegli atpazīt pēc to lidojuma: plivina spārnus – planē – plivina spārnus – planē.",
"Vistu vanags prot veikli manevrēt starp koku zariem, ēkām un citiem šķēršļiem.");

INSERT INTO birds VALUE(NULL, "Dižraibais dzenis", "Great Spotted Woodpecker","Dendrocopos major",7,4,
"Dzeņa mēle var būt pat trīs reizes garāka par dzeņa knābi. Šāda mēle ir lielisks palīgs, lai varētu veikli noķert kukaiņu kāpurus zem koka mizas.",
"Dižraibais dzenis ir biežāk sastopamā dzeņu suga Latvijā");
                     
INSERT INTO birds VALUE(NULL, "Melnā dzilna", "Black Woodpecker"," Dryocopus martius martius",7,4,
"Melnā dzilna ir lielākais Latvijas dzenis: divreiz lielāka par dižraibo dzeni.",
"Melno dzilnu dēvē par “lietussarga sugu”, jo tās kaltajos dobumos ligzdo vairākas retas un apdraudētas putnu sugas.");

INSERT INTO birds VALUE(NULL, "Lauku balodis", "Common Wood Pigeon","Columba palumbus palumbus",8,4,
"Lauku balodis ir vislielākais balodis Eiropā un visbiežāk sastopamais balodis Latvijā.",
"Šīs sugas nosaukums ir viegli maldinošs, jo lauku balodis tikai barojas uz laukiem, bet dzied un ligzdo mežos un parkos.");
            
INSERT INTO birds VALUE(NULL, "Mājas balodis", "Common Pigeon","Columba livia (domestica)",8,1,
"Mājas balodis ir pieradināta klinšu baloža forma: šis putns ir atkarīgs no cilvēka un tādēļ sastopams vien tur, kur ir cilvēks",
"Lielākā daļa putnu dzer paceļot galvu tā, lai šķidrums notecētu lejā, savukārt baloži ūdeni dzer iemērcot knābi ūdenī un iesūcot to tieši guzā. Guzā veidojas biezi izdalījumi, ko dēvē par putna pienu, ar ko var barot mazuļus.");
            
INSERT INTO birds VALUE(NULL, "Mājas zvirbulis", "House Sparrow","Passer domesticus domesticus",1,1,
"Mājas zvirbulim patīk ne tikai ūdenspeldes, bet arī smilšu peldes. Putns atrod smilšainu vietu, ietupstas iedobē, apbērdams spalvas ar smiltīm. Tas palīdz atbrīvoties no parazītiem.",
"Zvirbuļi ir sabiedriski putni – tiem patīk uzturēties bariņos, un ierasti tie dzīvo cilvēku tuvumā, neatkarīgi no tā, kurā pasaules vietā tie mīt.");

INSERT INTO birds VALUE(NULL, "Lauku zvirbulis", "Eurasian Tree Sparrow","Passer montanus",1,2,
"Viena gada laikā lauku zvirbulis var izperēt un izaudzināt mazuļus trīs reizes.",
"Lauku zvirbulis līdzinās mājas zvirbulim: lauku zvirbulim ir brūngana galvvirsa un melni plankumi uz pelēkbaltajiem vaigiem, bet mājas zvirbulim – galvvirsa un vaigi ir pelēki.");

INSERT INTO birds VALUE(NULL, "Bezdelīga", "Barn Swallow","Hirundo rustica",1,2,
"Bezdelīga spēj barot mazuļus lidojumā.",
"Bezdelīgas gadu no gada mēdz atgriezties savā vecajā no dubļiem būvētajā ligzdā un atjaunot to. Ligzdo lielākoties telpās.");
                            
INSERT INTO birds VALUE(NULL, "Mājas čurkste", "Common House Martin","Delichon urbicum",1,2,
"Ligzdu mājas čurkste būvē no dubļiem un māla, bet tās iekšpusi izklāj ar spalvām un mīkstiem dabas “būvmateriāliem”.",
"Mājas čurkstes ligzda ir slēgta: ar mazu, šauru ieeju pie ligzdas augšmalas, savukārt bezdelīgas ligzdai, kas arī top no dubļiem, ir vaļēja augšmala.");

INSERT INTO birds VALUE(NULL, "Svīre", "Common Swift","Apus apus",9,1,
"Svīre ir labākā lidotāja pasaulē, jo gandrīz visu mūžu pavada lidojumā – tā gan ēd, gan dzer, gan vāc materiālus ligzdai, gan guļ lidojumā. Un lidojumā arī pārojas.",
"Ja svīre nosēžas zemē un vairs nevar pacelties spārnos, tā ir jāpamet gaisā, lai palīdzētu tai atsāktu lidojumu.");

INSERT INTO birds VALUE(NULL, "Melnais mežastrazds", "Common Blackbird","Turdus merula",1,1,
"Melnais mežastrazds mīt ne tikai mežos, bet arī dārzos. Tas ir ļoti mīlēts putns izcili skaistās un bagātīgās dziesmas – melodiskas svilpošanas – dēļ, īpaši pavasaros.",
"Neligzdo būrīšos, bet pats būvē ligzdu parasti ļoti zemu, piemēram, uz celma, nolūzuša koka stumbra, arī nelielā eglītē vai paegļu krūmā.");

INSERT INTO birds VALUE(NULL, "Sarkanrīklīte", "European Robin","Erithacus rubecula",1,4,
"Pa ziemu dzied un savu teritoriju aizsargā arī sarkanrīklīšu mātītes. Nelielā skaitā sarkanrīklītes ziemo arī Latvijā.",
"Sarkanrīklīte ligzdo zemu: celmu spraugās, zem saknēm, grāvmalās, reizēm pat kādā vecā puķupodā vai vasarnīcā atstātā zābakā.");		
  
  INSERT INTO birds VALUE(NULL, "Svilpis", "Eurasian Bullfinch","Pyrrhula pyrrhula",1,4,
"Svilpi mēdz saukt arī par sarkankrūtīti.",
"Neligzdo būrīšos, bet pats būvē ligzdu parasti ļoti zemu, piemēram, uz celma, nolūzuša koka stumbra, arī nelielā eglītē vai paegļu krūmā.");	

  INSERT INTO birds VALUE(NULL, "Paceplītis", "Eurasian Wren","Troglodytes troglodytes",1,4,
"Vienam no mazākajiem Latvijas putniem – paceplītim - ir pārsteidzoši skaļa un melodiska dziesma, pēc kuras visvieglāk šo putnu atpazīt.",
"Pavasarī tēviņš būvē vairākas lodveida ligzdas, nereti izgāztu koku saknēs, lai mātīte varētu izvēlēties sev tīkamāko vietu ģimenes ligzdiņai.");	

  INSERT INTO birds VALUE(NULL, "Zeltgalvītis", "Common Goldcrest","Regulus regulus",1,4,
"Zeltgalvītis ir mazākais putns Latvijā (tikai 9 cm), savukārt ziemā, lai nenosaltu, putnam teju visu laiku jābarojas.",
"Migrācijas pārlidojumu veic nakts laikā. Zeltgalvītis nedēļas laikā nolido apmēram 1000 km.");	
                            
INSERT INTO birds VALUE(NULL, "Zilzīlīte", "Eurasian Blue Tit", "Cyanistes caeruleus",1,1,
"Zilzīlīte ir ļoti spēcīgs putns, kas spēj izdzīvot pat skarbos apstākļos.",
"Jaunajiem putniem, kurus zilzīlīte baro ar kāpuriem, galvas virsa ir pelēcīga, nevis zila, bet vaigi – dzelteni.");	

INSERT INTO birds VALUE(NULL, "Lielā zīlīte", "Great Tit", "Parus major",1,4,
"Lielā zīlīte ir visai agresīva: ziemā tā no putnu barotavām spēj aizgaiņāt sīkākus putnus.",
"Lielā zīlīte ir vislielākā zīlīte Eiropā un visbiežāk sastopamais viesis cilvēku veidotās putnu barotavās.");	

INSERT INTO birds VALUE(NULL, "Erickiņš", "Common Redstart", "Phoenicurus phoenicurus",1,4,
"Erickiņš bieži tricinot kustina savu rudo, uzkrītošo astīti.",
"Erickiņš bieži sastopams pie mūra celtnēm un tas ligzdo koku dobumos, akmeņu krāvumos, celmos, ēku konstrukciju iedobēs, pažobelēs, arī putnu būrīšos, upju krastos, zem koku saknēm.");
    
                            
INSERT INTO birds VALUE(NULL, "Melnais mušķērājs", "European Pied Flycatcher", "Ficedula hypoleuca",1,4,
"Pēc spalvu maiņas vasaras vidū melnā mušķērāja tēviņi kļūst līdzīgi mātītēm, zaudējot melnbalto tērpu.",
"Melnais mušķērājs ir biežākais mazo būrīšu apdzīvotājs mežā, kurš parasti ķer kukaiņus gaisā vai uz zemes, turklāt neatgriežoties iepriekšējā vietā pēc laupījuma saķeršanas tā, kā to dara pelēkais mušķērājs.");

INSERT INTO birds VALUE(NULL, "Dzilnītis", "Eurasian Nuthatch", "Sitta europaea",1,4,
"Dzilnītis ir meža putns ar spēcīgu knābi un lielisku prasmi kāpelēt pa koku stumbriem: šis putns pa koka stumbru spēj iet ar galvu uz leju.",
"Ja dzilnīša nolūkotā koka dobuma vai būra skreja ir par lielu, dzilnīša mātīte to aizķepina ar māliem līdz vēlamajam lielumam.");

 INSERT INTO birds VALUE(NULL, "Mājas strazds", "Common Starling", "Sturnus vulgaris",1,1,
"Mājas strazds pirms ligzdošanas pats iztīra savu mājvietu.", 
"Rudeņos un ziemās pulcējas milzīgos, trokšņainos baros, lai aizsargātos no plēsējiem un veiksmīgāk atrastu barību.");   
                            
 INSERT INTO birds VALUE(NULL, "Sīlis", "Eurasian Jay", "Garrulus glandarius",1,1,
"Sīlis prot atdarināt dažādu putnu balsis, tai skaitā meža pūci un klijānu. Ierastā sīļa balss ir tam raksturīgais ķērciens.",
"Sīlis ir viens no tiem retajiem putniem, kas veido barības krājumus ziemai, zem sūnām, koku mizas, koku dobumos vai spraugās slēpjot ozolzīles un riekstus.");  

 INSERT INTO birds VALUE(NULL, "Pelēkā vārna", "Hooded Crow", "Corvus cornix",1,1,
"Pelēkā vārna ir ļoti gudrs putns. Piemēram, tā vienmēr izdomā, kā oriģināli iegūt barību – noliek riekstu automašīnas ceļā, lai tas tiktu pāršķelts, izvelk ūdenī ieliktas makšķerauklas, lai nozagtu zivis, u.tml",
"Pelēkā vārna pēc izmēra ir līdzīga krauķim, taču krauķim viss apspalvojums ir melns un pieaugušam putnam pie knābja pamata ir kails, gaišs laukums."); 
                            
 INSERT INTO birds VALUE(NULL, "Krauķis", "Rook", "Corvus frugilegus",1,1,
"Krauķis pa zemi pārvietojas soļojot.",
"Krauķi ligzdo lielās kolonijās cilvēku tuvumā, veidojot vienā kokā pat vairākas ligzdas, ko ik gadu atjauno, kad atgriežas Latvijā no ziemošanas vietām."); 


 INSERT INTO birds VALUE(NULL, "Krauklis", "Northern Raven", "Corvus corax",1,1,
"Krauklim ir vienas no lielākajām smadzenēm putnu pasaulē.",
"Krauklis ir viens no galvenajiem meža “sanitāriem”, kas pēc ziemas “uzlasa” kritušos dzīvniekus. Ja krauklis atrod barību, vienuviet ātri sapulcējas arī citi kraukļi no tālas apkārtnes."); 

   INSERT INTO birds VALUE(NULL, "Žagata", "Eurasian Magpie", "Pica pica",1,1,
"Atkarībā no apgaismojuma žagatas apspalvojums var izskatīties atšķirīgs.",
"Elegants un ļoti apķērīgs, bet ķildīgs un tramīgs putns, kas nelaiž cilvēku tuvu sev klāt. Žagata ir visēdāja un prasmīga barības slēpēja.");
      
   INSERT INTO birds VALUE(NULL, "Brūnā čakste", "Red-backed Shrike", "Lanius collurio",1,2,
"Brūnā čakste parasti ligzdo dzeloņainu krūmu un koku vai jaunu skujkoku zaros.",
"Ja barības ir daudz, brūnā čakste veido uzkrājumus, uzspraužot kukaiņus un pat sīkos grauzējus uz ērķšķiem vai asiem koku zariņiem.");

   INSERT INTO birds VALUE(NULL, "Zaļžubīte", "European Greenfinch", "Chloris chloris",1,4,
"Zaļžubītei ir spēcīgs knābis, kas palīdz veikli lobīt sēklas.",
"Riestojot tēviņa lidojums atgādina tauriņa plivināšanos, tā demonstrējot koši dzeltenās spārnu un astes malu spalvas.");

INSERT INTO birds VALUE(NULL, " Žubīte", "Common Chaffinch", "Fringilla coelebs",1,4,
"Ornitologi uzskata, ka Latvijā dzīvo ap 2,5 miljoniem šīs sugas pāru.",
"Latvijā žubīte ir visbiežāk sastopamā putnu suga: sastopama visu veidu mežos, dārzos, parkos.");

 
 INSERT INTO birds VALUE(NULL, " Dzeltenā stērste", "Yellowhammer", "Emberiza citrinella",1,2,
"Dzeltenā stērste ir viena no biežāk sastopamajām atklātas ainavas sugām Latvijā, ko viegli atpazīt pēc tās dziesmas atveidojumā “dzer, dzer, dzer pieeeenu”.",
"Vasaras periodā dzeltenās stērstes uzturas pa pāriem, bet ziemas laikā tās veido barus, kas kopīgi barojas un nakšņo.");


INSERT INTO details VALUES (NULL, "balta piere un galvas sāni",1),
							(NULL, "balta vēderpuse",1),
							(NULL, "pelēka mugurpuse",1),
							(NULL, "melna aste ar baltām malām",1),
							(NULL, "melna galvas virsa, pakausis, rīkle un zods",1);

INSERT INTO details VALUES (NULL, "oranži sarkans knābis ar melnu pamatu",2),
							(NULL, "knābim izteikts paugurs",2),
							(NULL, "balto krāsu iegūst ap piecu gadu vecumu",2),
							(NULL, "garš, slaids kakls",2),
							(NULL, "melnas kājas",2),
                            (NULL, "zālēdājs, kas plūc zāli zem ūdens",2);
              

INSERT INTO details VALUES (NULL, "balts apspalvojums",3),
							(NULL, "citrondzeltens knābis ar melnu galiņu",3),
							(NULL, "melnas kājas",3),
							(NULL, "peldot kakls izsliets taisni",3),
							(NULL, "melnas kājas",3),
                            (NULL, "jaunie putni – brūnpelēki ar sārtiem knābjiem",3);
                            
INSERT INTO details VALUES (NULL, "knābis mātītei – oranžbrūns, tēviņam – dzeltens",4),
							(NULL, "mātītei – brūnganpelēks, raibumots apspalvojums",4),
							(NULL, "tēviņam – pelēks apspalvojums",4),
							(NULL, "tēviņam – spīdīga, tumšzaļa galva",4),
							(NULL, "oranžas kājas",4);
                            
INSERT INTO details VALUES (NULL, "uz galvas melnbalts raksts",5),
							(NULL, "melns, šaurs cekuls",5),
							(NULL, "melna rīkle un krūtis",5),
							(NULL, "tumši spārni ar metālisku spīdumu",5),
							(NULL, "apaļi spārni, kas lidojot švīkst",5),
                            (NULL, "rūsgana zemaste",5); 
                            
INSERT INTO details VALUES (NULL, "lidojot kaklu izliec S veidā",6),
							(NULL, "ass, dzeltens knābis",6),
							(NULL, "zilpelēki balts apspalvojums",6),
							(NULL, "garas kājas",6),
							(NULL, "tumša svītra kakla priekšpusē",6),
                            (NULL, "virs acs tumša josla, kas pārtop cekulā",6); 

INSERT INTO details VALUES (NULL, "liels, pelēks putns",7),
							(NULL, "viens no garākajiem putniem Eiropā",7),
							(NULL, "augumā ap 120 cm",7),
							(NULL, "spārnu plētums līdz pat 220 cm",7),
							(NULL, "slaidas kājas – purvu un mitrāju bradātājas",7),
                            (NULL, "īsa aste",7),
                            (NULL, "“viltus” aste: pagarinātas, noliekušās spārnu spalvas",7),
                            (NULL, "sarkano laukumu uz galvas neklāj apspalvojums",7); 

INSERT INTO details VALUES (NULL, "dzeltens knābis",8),
							(NULL, "sarkans punkts uz apakšknābja",8),
							(NULL, "balta galva, kakls un ķermeņa apakšpuse",8),
							(NULL, "gaiši zilganpelēka mugura un spārnu virspuse",8),
							(NULL, "melni spārnu gali ar baltumiem pašos galiņos",8),
                            (NULL, "kājas no bāli rozā līdz bāli dzeltenām",8),
                            (NULL, "peldplēves starp pirkstiem",8); 
                            
 INSERT INTO details VALUES (NULL, "tumšbrūna galva (no attāluma izskatās melna)", 9),
							(NULL, "balts pusriņķis ap aci",9 ),
							(NULL, "gaiši zilganpelēka virspuse",9 ),
							(NULL, "melni garāko lidspalvu gali",9 ),
							(NULL, "tumši sarkans knābis", 9),
                            (NULL, "tumši sarkanas kājas",9 ),
                            (NULL, "balts laukums uz spārnu ārmalām, viegli pamanāms lidojumā", 9); 

 INSERT INTO details VALUES (NULL, "brūna galvas virsa", 10),
							(NULL, "tumši pelēkbrūns apspalvojums",10 ),
							(NULL, "līks knābis",10 ),
							(NULL, "gari, plati spārni", 10),
							(NULL, "gaiši laukumi spārnu apakšpusē",10 ),
                            (NULL, "šķērssvītraina aste", 10),
                            (NULL, "tumši spārnu gali",10 ),
                            (NULL, "dzeltenas kājas bez spalvām",10 ),
                            (NULL, "pāri krūtīm U veida gaiša līnija", 10); 

 INSERT INTO details VALUES (NULL, "brūna mugurpuse", 11),
							(NULL, "gara aste", 11),
							(NULL, "īsi, noapaļoti spārni", 11),
							(NULL, "tumši ausu laukumi",  11),
							(NULL, "gaiša uzacu svītra un dzeltenas acis", 11),
                            (NULL, "spēcīgas, dzeltenas kājas bez apspalvojuma", 11),
                            (NULL, "gaiši pelēka vēderpuse un spārnu apakša ar šķērssvītrām", 11); 

 INSERT INTO details VALUES (NULL, "sarkans pakausis", 12),
							(NULL, "garš, smails, pelēkzils knābis", 12),
							(NULL, "zemaste sarkana", 12),
							(NULL, "balts vēders",12),
							(NULL, "melnbalti spārni", 12),
                            (NULL, "galvas virsa melna", 12),
                            (NULL, "plati, noapaļoti spārni", 12); 
                    
                            
 INSERT INTO details VALUES (NULL, "melns apspalvojums", 13),
							(NULL, "bāli dzeltenas kājas", 13),
							(NULL, "tēviņam sarkana galvas virsa", 13),
							(NULL, "mātītei sarkans laukums tikai uz pakauša", 13),
							(NULL, "bāli dzeltens knābis ar tumšu galu", 13);
              

 INSERT INTO details VALUES (NULL, "pelēks apspalvojums", 14),
							(NULL, "tumšsārta vēderpuse", 14),
							(NULL, "balts laukums kaklam abos sānos", 14),
							(NULL, "melna, plata josla astes galā", 14),
							(NULL, "tumša virsaste", 14),
                            (NULL, "tumša spārnu apakšpuse", 14),
                            (NULL, "balti pusmēnesveida laukumi uz spārniem, kas uzkrītoši lidojumā", 14); 

 INSERT INTO details VALUES (NULL, "pelēkzils apspalvojums", 15),
							(NULL, "melnas, garas joslas uz spārniem", 15),
							(NULL, "metālisks spīdums kaklam sānos", 15),
							(NULL, "uzkrītoši balta virsaste", 15),
                            (NULL, "baltas spārnu apakšpuses", 15); 
            
 INSERT INTO details VALUES (NULL, "melna rīkle", 16),
							(NULL, "spēcīgs knābis", 16),
							(NULL, "pelēcīga vēderpuse", 16),
							(NULL, "brūngani raiba mugurpuse", 16),
							(NULL, "pelēka galvas virsa (tēviņš)", 16),
                            (NULL, "brūna galvas virsa (mātīte)", 16);

 INSERT INTO details VALUES (NULL, "kastaņbrūna galvas virsa", 17),
							(NULL, "kastaņbrūns pakausis", 17),
							(NULL, "īss, resns knābis", 17),
							(NULL, "pelēcīgi vaigi ar melniem plankumiem", 17),
							(NULL, "melna rīkle", 17),
                            (NULL, "melns sejas laukums", 17); 

 INSERT INTO details VALUES (NULL, "krēmīgi balta vēderpuse", 18),
							(NULL, "gara, dziļi šķelta aste", 18),
							(NULL, "gari, melni spārni", 18),
							(NULL, "sarkanbrūna piere un zods", 18),
							(NULL, "zili melna mugurpuse", 18),
                            (NULL, "no apakšpuses redzama balta svītra uz astes", 18); 
                            
 INSERT INTO details VALUES (NULL, "melna mugura", 19),
							(NULL, "balta virsaste", 19),
							(NULL, "īsa aste ar seklu šķēlumu", 19),
							(NULL, "sniegbalts vēders", 19),
							(NULL, "balta pazode", 19);

 INSERT INTO details VALUES (NULL, "melni brūns apspalvojums", 20),
							(NULL, "gari, šauri sirpjveida spārni", 20),
							(NULL, "šķelta aste", 20),
							(NULL, "ļoti īss knābis", 20),
							(NULL, "uz pazodes mazs, gaišs laukumiņš", 20),
                            (NULL, "īsas kājas", 20); 

 INSERT INTO details VALUES (NULL, "oranždzeltens knābis", 21),
							(NULL, "dzeltenīgs acs gredzens", 21),
							(NULL, "samērā gara aste", 21),
							(NULL, "melns, spīdīgs apspalvojums (tēviņš)",21),
                            (NULL, "brūns apspalvojums (mātīte)",21);

 INSERT INTO details VALUES (NULL, "balta vēderpuse", 22),
							(NULL, "burkānkrāsas krūtis", 22),
							(NULL, "melnas acis", 22),
							(NULL, "pelēkbrūna mugurpuse", 22),
							(NULL, "brūni spārni", 22),
                            (NULL, "netīri balta zemaste", 22),
							(NULL, "pelēkzili galvas sāni", 22);
  
 INSERT INTO details VALUES (NULL, "spēcīgs knābis un krūtis", 23),
							(NULL, "iespaids, ka svilpim “nav kakla”", 23),
							(NULL, "melna galvas virsa un pazode", 23),
							(NULL, "melni spārni ar baltu svītru", 23),
							(NULL, "pelēka mugurpuse un melna aste", 23),
                            (NULL, "tēviņam spilgti rozā vēderpuse, balta lejasdaļa", 23),
                            (NULL, "mātītei sārti pelēka vēderpuse", 23); 

 INSERT INTO details VALUES (NULL, "maziņš putns ar rūsganbrūnu apspalvojumu", 24),
							(NULL, "uzkrītoši gaisā uzslieta aste", 24),
							(NULL, "rūsganbrūns apspalvojums ar tumšiem raibumiem", 24),
							(NULL, "gaiša svītriņa virs acs", 24),
							(NULL, "tumši brūnas šķērssvītras uz spārniem", 24);

 INSERT INTO details VALUES (NULL, "olīvzaļgana ķermeņa virspuse", 25),
							(NULL, "bāli pelēka apakšpuse", 25),
							(NULL, "tumšāki spārni baltiem galiem", 25),
							(NULL, "divas melnas svītriņas uz galvas", 25),
							(NULL, "mātītēm spilgti dzeltens, tēviņiem oranžs kronis uz galvas", 25);
                            
 INSERT INTO details VALUES (NULL, "spilgti zila galvas virsa", 26),
							(NULL, "balti vaigi", 26),
							(NULL, "melna acu svītra", 26),
							(NULL, "dzeltena vēderpuse", 26),
							(NULL, "zili spārni", 26),
                            (NULL, "iezaļgana mugurpuse", 26),
                            (NULL, "zila aste", 26); 
                            
 INSERT INTO details VALUES (NULL, "melna galva", 27),
							(NULL, "balti vaigi", 27),
							(NULL, "dzeltena vēderpuse", 27),
							(NULL, "melna, gara svītra uz vēdera", 27),
							(NULL, "zaļgana mugura", 27),
                            (NULL, "zilgani spārni", 27),
                            (NULL, "zilgana, īsa aste", 27); 


 INSERT INTO details VALUES (NULL, "ēviņam melna rīkle, balta piere, pelēka galvas un ķermeņa virsa", 28),
							(NULL, "ēviņam ruda aste, astes sāni un ķermeņa apakšpuse", 28),
							(NULL, "mātīte pelēkbrūna ar rudu asti, krūtīm un vēderpusi", 28),
							(NULL, "mātītei gaiša rīkle, pelnu pelēks vēders un zemastes spalvas", 28);
                            
 INSERT INTO details VALUES (NULL, "melns knābis", 29),
							(NULL, "spilgti balts vēders", 29),
							(NULL, "mātīte ir brūnganpelēka", 29),
							(NULL, "uz spārniem un astē balti laukumi", 29),
							(NULL, "tēviņš riesta tērpā ir koši melnbalts ar diviem baltumiņiem virs knābja", 29);

 INSERT INTO details VALUES (NULL, "zilganpelēka mugurpuse", 30),
							(NULL, "balti vaigi", 30),
							(NULL, "melna svītra no knābja caur aci", 30),
                            (NULL, "spēcīgs knābis", 30); 

 INSERT INTO details VALUES (NULL, "smails, pagarš knābis", 31),
							(NULL, "nosmailoti spārni", 31),
							(NULL, "knābis vasarā dzeltens, ziemā – pelēks", 31),
							(NULL, "pelēkbrūnas kājas", 31),
							(NULL, "apspalvojums melns ar zaļganvioletu spīdumu un sīkiem, gaišiem raibumiņiem", 31),
                            (NULL, "īsa, taisnstūrveida aste", 31);
                            
 INSERT INTO details VALUES (NULL, "sarkanbrūns ķermeņa apspalvojums", 32),
							(NULL, "melna bārdas svītra", 32),
							(NULL, "melna aste", 32),
							(NULL, "garākas spalvas galvas virspusē", 32),
							(NULL, "balts vēders", 32),
                            (NULL, "balta virsaste", 32),
                            (NULL, "balta rīkle", 32),
							(NULL, "liels, zili balti melnraibs laukums uz spārna", 32);
                            
 INSERT INTO details VALUES (NULL, "melni spārni", 33),
							(NULL, "melna aste", 33),
							(NULL, "melna galva un kakla priekšpuse", 33),
							(NULL, "pelēka mugurpuse", 33),
							(NULL, "pelēka vēderpuse", 33),
                            (NULL, "melns knābis", 33),
							(NULL, "tumšbrūnas acis", 33),
                            (NULL, "plati spārni", 33); 

 INSERT INTO details VALUES (NULL, "melns apspalvojums ar zilganu spīdumu", 34),
							(NULL, "balts laukums uz sejas pie knābja un rīkles", 34),
							(NULL, "slaids, smails, gaišs knābis", 34),
							(NULL, "melnas kājas", 34),
							(NULL, "brūnas acis", 34),
                            (NULL, "noapaļota aste", 34);

 
 INSERT INTO details VALUES (NULL, "spīdīgi melns apspalvojums",35 ),
							(NULL, "ar violetu vai metāliski zilu spīdumu",35 ),
							(NULL, "ķīļveidīga aste", 35),
							(NULL, "stāva piere", 35),
							(NULL, "augsts pakausis", 35),
                            (NULL, "spalvas ap rīkli atgādina bārdu", 35),
                            (NULL, "melnas spalvas uz knābja", 35); 
  

 INSERT INTO details VALUES (NULL, "melna galva un knābis", 36),
							(NULL, "balts vēders", 36),
							(NULL, "balti laukumi uz pleciem", 36),
							(NULL, "melni spārni ar zilganzaļu spīdumu", 36),
							(NULL, "gara, melna aste", 36),
                            (NULL, "garas, melnas kājas", 36);
      

 INSERT INTO details VALUES (NULL, "melnas acis, knābis un kājas", 37),
							(NULL, "īsi spārni", 37),
							(NULL, "gara aste", 37),
							(NULL, "tēviņam sarkanbrūna mugura, pelēka galvas virsa un gaiša vēderpuse", 37),
							(NULL, "tēviņam caur aci melna, plata svītra", 37),
                            (NULL, "mātītei riekstbrūna mugura, brūngana piere un acs svītra", 37),
                            (NULL, "mātītei vēderpusē zvīņveida raksts", 37); 


 INSERT INTO details VALUES (NULL, "sārts knābis", 38),
							(NULL, "dzeltenīgi olīvzaļš apspalvojums", 38),
							(NULL, "dzelteni laukumi spārnu ārmalā", 38),
							(NULL, "sēžot dzeltena svītriņa spārna ārmalā", 38),
							(NULL, "mātīte ir pelēcīgāka", 38); 
   

 INSERT INTO details VALUES (NULL, "divas baltas svītras uz spārniem", 39),
							(NULL, "olīvzaļa muguras lejasdaļa", 39),
							(NULL, "melna aste ar baltām malām", 39),
							(NULL, "zilganpelēka galvas virspuse", 39),
							(NULL, "rūsganbrūni galvas sāni", 39),
                            (NULL, "rūsganbrūna vēderpuse un rīkle", 39); 
 

 INSERT INTO details VALUES (NULL, "dzeltenīgs putns", 40),
							(NULL, "tēviņš – koši dzeltens", 40),
							(NULL, "mātīte – dzeltenpelēka", 40),
							(NULL, "pagara, šķelta aste, ruda virsaste", 40),
							(NULL, "pelēks, konusveidīgs knābis", 40),
                            (NULL, "sārtas kājas", 40),
                            (NULL, "raiba mugura", 40); 
                   

