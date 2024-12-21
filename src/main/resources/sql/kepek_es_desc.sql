-- Módosítjuk a description mezőt, hogy LONGTEXT típusú legyen
-- ALTER TABLE parfum MODIFY description LONGTEXT;


-- UPDATE parfum
-- SET image_url = '/Pictures/Dominance.png',
-- description =  'Nagyon domináns és távolról felismerhető. Fás, férfias, kissé édeskés, a forró fűszerek és a citrus keveréke miatt igazán szenvedélyes. Tökéletes választás egy randira, hiszen ez a parfüm hódításra született! Ha a hétköznapokon hordod, számíts szenvedélyes női visszajelzésekre. Kár lenne titkolni, úgyis tapasztalni fogod: egyszerűen beindítja a nők fantáziáját! Három fő jellemzője: elegancia, kifinomultság, dominancia. Négyévszakos illat, hosszantartó, intenzív alkotás, a SUPERZ. bestsellereinek egyike.'
-- WHERE id = 1;  -- Itt az 'id' az a parfüm, amelyhez a képet társítjuk

-- UPDATE parfum
-- SET image_url = '/Pictures/Gentleman.png',
-- description =  'Ismerősek számodra azok a londoni üzletemberek, akik mindig különösen elegánsan jelennek meg? Nem csak az megjelenésük, a modoruk is kiváló! Nagylelkűek, igazi úriemberek. Mindig ott van egy kis mosoly az arcukon, tele pozitivitással, nem hiába, jól is megy nekik az élet. Ez az illat a könnyed, de tiszta elegancia, a férfias, kifinomult ízlés. A telt vanília kifejezetten dominál benne, a dohány és a forró fűszerek mellett púder teszi fennköltté. A csipetnyi gyümölcs a kakaóval és a fás jegyekkel keveredik. Erről az illatról mindig egy gyönyörű, nagy belmagasságú, klasszikus stílusban berendezett, pazar nappali jut eszembe, ahol két londoni üzletember teaidőben szivarozik és megvitatják a napi politikát, üzletet. A drága festmények a falakon, a kandallóban égő fahasábok hangja mellett hallható az elegáns falióra ketyegése és a halk zongoraszó.'
-- WHERE id = 2;  -- Itt az 'id' az a parfüm, amelyhez a képet társítjuk

-- UPDATE parfum
-- SET image_url = '/Pictures/1723.png',
-- description = 'Nevét Antonio Vivaldi - Négy évszak című művéről kapta, mert tökéletesen működik mind a 4 évszakban. Engedd, hogy az 1723 nevű illatunk egyenesen Olaszország varázslatos tájaira repítsen, ahol a divat és az elegancia találkozik a művészet szellemével.
-- Ez az illat egy valódi mestermű a parfümök világában.
--
-- Első szaglásra az elegáns fás jegyek, a cardamom, a lágy vanília és a különleges rózsabors játéka teljesedik ki. 
-- Ezután kibontakoznak benne az almás, virágos jegyek, melyek frissességgel töltik meg az illatot. A pézsmának és ámbrának köszönhetően pedig még nemesebb és csábítóbb lesz. 
--
-- A legtöbb hölgy tesztelőnk visszajelzése alapján ez egy nagyon kiegyensúlyozott, vonzó férfi illat, így randira is bátran ajánljuk, de hétköznapi viseletre is tökéletes, mert nem túl tolakodó, viszont kifejezetten különleges és elegáns illat. '
-- WHERE id = 3;

UPDATE parfum
SET image_url = '/Pictures/Caesar.png'
-- description = 'Friss, lendületes, karizmatikus, markáns. Egy igazi „uralkodói” illat. Határozott, mégis fényűző, férfias illatjegyekkel. Akárhányszor megérzed magadon, Caesar palotájában érzed magad, ahogy a hatalmas márványoszlopok mellett sétálva, a mediterrán táj látványa tárul eléd. Persze Caesar mellett ott van a vonzó, kecses, császárnő is, aki nélkül a birodalom sem lenne teljes. Érezhetően fűszeres, ugyanakkor dominálnak benne a borostyán, a citrusok, a keleti aromák és a pézsma is. Hosszan tartó, intenzív, négyévszakos, de tavasszal és nyáron tud a legjobban kiteljesedni.'
WHERE id = 4;

UPDATE parfum
SET image_url = '/Pictures/Caesar_Ultra.png'
-- description = 'A Caesar Ultra a három éven át érlelt pacsuli érzéki megjelenése egy luxusillatba zárva. Mivel ez az alkotás a pacsuliról szól, ennek az aromás összetevőnek a meleg, enyhén földes fűszeressége jelentkezik a fejjegyekben. A szívjegyben a selymes pézsma és az írisz, valamint a magnólia virágos egzotikuma varázsolja a parfümöt még különlegesebbé. Ez az egyáltalán nem hétköznapi remekmű a sáfrányos, ámbrás és fás leszáradással lesz teljes.
-- 
-- Minden eddiginél tartósabb illat, hatalmas sillage-zsal, így biztosan mindenhol nyomot hagysz amerre jársz! Mindenkit elbűvöl a környezetedben a lenyűgöző aromákkal, így azoknak ajánljuk, akik elhivatottak, céltudatosok, határozottak és készek, hogy valami világraszólót alkossanak.'
WHERE id = 5;

UPDATE parfum
SET image_url = '/Pictures/Dominance_Gold.png'
-- description = 'Ez a mestermű kézzel csiszolt arany üveget kapott, amely tökéletesen hangsúlyozza a minőségét és az értékét. Grapefruittal és vaníliával nyit, később a fahéj, a cédrus és a tonkabab édes világa is kibontakozik. Édes jegyeitől igazán szexi és vonzó, a gyümölcsös-citrusos jegyeitől pedig energikus. Hódító parti-illatnak is tökéletes választás. Ezzel a parfümmel könnyű lesz felkeltened a nők figyelmét. Nem számít, hogy elegáns, vagy hétköznapi szetthez viseled, garantáltan extra magabiztosságot ad, amire mások is azonnal felfigyelnek majd. A kedvenceid között lesz a polcon, ezt garantáljuk! Ez a mesteri alkotás az egyik bestseller illatunk.'
WHERE id = 6;

UPDATE parfum
SET image_url = '/Pictures/Endless_Sea.png'
-- description = 'Endless Sea, azaz "végtelen tenger". Végtelen, mint maga az illat, hiszen a tartóssága elképesztő, annak ellenére, hogy tengeri jegyekkel is rendelkezik. Rendkívül mély és rejtélyes. Pontosan azt a kiegyensúlyozottságot és tökéletességet árasztja magából, mint amikor a parton állva szemléljük a végtelenségbe vesző tengert és átéljük ezeket a megmagyarázhatatlanul különleges pillanatokat. A pézsmás jegyek sosem keveredtek még ennyire tökéletesen a citrommal és a szicíliai bergamottal, amit az édes ámbra és a férfias szantálfa a mohás jegyekkel tesz feltűnően vonzóvá. Elegancia, sportosság és szexi férfias vonzerő jellemzi, így abszolút megállja a helyét bármilyen eseményen. Rendkívül kevés parfümre lehet azt mondani, hogy az illatfelhője és a tartóssága 10/10-es, főleg olyan illatokra, amelyek tengeri és friss jegyeket is tartalmaznak, de az Endless Sea a kiemelkedően magas minőségű összetevői miatt ezt abszolút megközelíti. Mind a négy évszakban tarol, legyen reggel vagy este, ez igazi "szerelem-illat" lesz!'
WHERE id = 7;

UPDATE parfum
SET image_url = '/Pictures/Finom_Istálló.png'
-- description = 'Elsőre érezhető benne az agárfa és a szantálfa érzéki illata, emellett a csipetnyi sáfrány adja a parfüm eleganciáját, míg a bőrös jegyek a luxus és a minőség érzését adják.
--
--
--
-- Az illat további rétegeiben érezhető a fehér pézsma finom és kifinomult illata, amelyet a rózsa és a jázmin szirmai tesznek még különlegesebbé. Az édes vanília és ámbra magukkal ragadnak, míg a fahéj pikáns és meleg hangulatot áraszt.
--
-- Az illat kerekedésekor a frissítő bergamot és málna adják a könnyedség érzését, amely élettel tölti meg a parfüm viselőjét.
--
-- Alapítónk, Szerencsés Szabolcs egy dubai-i lóversenyen érzett nagyon hasonló illatokat, így az ihlet egyik helyszíne és alapja is a lovakhoz köthető. Persze nem a "lószag" az, ami a legközelebb áll ehhez a parfümhöz, sokkal inkább az elit társaság, akik megjelennek ilyen versenyeken. Figyelem: EZ AZ ILLAT RENDKÍVÜLI ILLATFELHŐVEL RENDELKEZIK!'
WHERE id = 8;

UPDATE parfum
SET image_url = '/Pictures/Abu_Dhabi.png'
-- description = 'Tökéletesen definiálja Abu Dhabi-t. Csábító, fényűző, luxus arab illatfelhő. Hiába van perzselő forróság az Emírségekben, az ott élők szívesen hordanak édes és oud-os illatokat. Édességét az ámbra és a vanília adja, ami a fás, oud-os jegyekkel tökéletes harmóniában egyesül. Ezt egészíti ki a tonkabab, a forró fűszerek, és a sáfrány, emellett a bolgár rózsától lesz igazán izgalmas és egyedi. Rendkívül különleges illatfelhőt húzhatsz magad után, ráadásul hosszú órákon át, hiszen egy rendkívül kitartó illat. Mind a négy évszakban kitűnően működik. Unisex, így a férfiak és a hölgyek is bátran hódíthatnak vele. A férfiakon a fás és oudos jegyek, a hölgyeken pedig az édes, rózsás illatok dominálnak jobban. E műalkotás az a legkedveltebb illatunk az unisex illatok között és a legkedveltebb az arabos illataink között is.'
WHERE id = 9;

UPDATE parfum
SET image_url = '/Pictures/Aishah.png'
-- description = 'Egy igazán fiatalos, bomba illat. Szenvedélyes, vidám, bohém és rendkívül kellemes. Három alapja tökéletesen ötvözi egymást: gyümölcsös, édes és citrusos. Nagyon szerethető kompozíció, sok parfümtesztelőnk úgy írta le, hogy „wife” vagy „girlfriend material” illat, azaz „feleség”, vagy „barátnő” érzést ébresztő, amit szívesen éreznének a férfiak a párjukon, illetve megjegyezték, hogy ez az illat erős szimpátiát vált ki belőlük. Egy nagyszerű választás, elegáns és igazán nőies, kellemes alap, ami a hölgyek többségéhez kiválóan passzol és rendkívül magával ragadó. Négyévszakos, intenzív, de nem „túl sok”. Randira és a hétköznapokra is kiváló.'
WHERE id = 10;

UPDATE parfum
SET image_url = '/Pictures/Amber_&_Woods.png'
-- description = 'Az Amber&Woods parfüm édes és fás egyszerre. Az ámbrás és sáfrányos alapokra érkezik a markáns cédrusfa, amit a szelíden mohás jegyek mélyítenek egy kis karamell és narancs kíséretében. Randihoz és üzleti alkalmakhoz is tökéletes. Ez egy négyévszakos, unisex mestermű. Az Amber&Woods kiadásunk körülbelül 67-70 különböző illatvilágból tevődik össze. Ez adja az elképesztő komplexitását.'
WHERE id = 11;

UPDATE parfum
SET image_url = '/Pictures/Aura.png'
-- description = 'Annyira komplexen keverednek benne az illatjegyek, hogy az már önmagában egy új világot és egységet alkot, ami rendkívül fenséges és izgalmas. Ennek a mixnek az alapjai a gyönyörűen és játékosan édes gyümölcsök, mint a szeder, a körte és frissen vibráló bergamott. Ezen kívül az elegáns szantálfa, egy csipetnyi luxus oud és a csábítóan szexi praliné keveredik a kellemes, előkelő pézsmával. Az igazán nagy rutinnal rendelkezők egy finom szellővel kiérezhetik a bőrükön párolgó Aurából a kardamom, sáfrány és rózsabors jegyeket is, amik igencsak megalapozzák a tartósságát. Minden lépésednél egy misztikus aura fog körüllengeni, amitől mindenki körötted örömmel közeledik majd hozzád, hiszen át akarják érezni azt a varázst, ami körülvesz. Ez az illat hozzáad a karakteredhez és segít elmélyülni abban az inspiráló, vágyakkal teli hangulatban, ami megbabonáz. A kreatív és ínyenc emberek nagy figyelemmel fognak kísérni és tudni akarják, mitől látnak másnak, magabiztosabbnak és izgalmasabbnak, mint egy szürke, hétköznapi járókelőt. Nem véletlen, hogy ez a parfüm egy rendkívül kreatív ember, Giaj nagy szerelme! Általa most Ti is megtapasztalhatjátok, miért is meggyőződése, hogy több ezer parfüm tesztelése és beszerzése után elhozott a SUPERZ-el valami igazán történelmit és korszakalkotót. Fedezd fel Te is az AURA lenyűgöző világát!'
WHERE id = 12;

UPDATE parfum
SET image_url = '/Pictures/Candy.png'
-- description = 'A Candy illatunk egy igazán különleges élmény. Ahogy már a neve is sugallja, ez egy rendkívül édes és cukorkás illat, ám sokkal többet rejt magában, mint a hétköznapi "rágógumis" parfümök. A kompozíció a szantálfának, a jázminnak és az írisznek köszönhetően egyszerre nőies és elegáns, így a fiatalabb és az idősebb hölgyek is bátran viselhetik. Amikor magadra fújod, egy varázslatos rózsaszín világba csöppensz, ahol boldog pillanatok és kedvesség vesz körül.
--
-- A mályvacukor, a tonkabab és a karamell édes és csábító illatfelhőjét, a narancs és az alma frissessége teszi kiegyensúlyozottá. Mindezt körülöleli a vanília, az ámbra és a kakaó harmóniája, emellett a jázmin és az írisz gazdagságot és selymességet kölcsönöz az illatnak. Az édes és friss jegyeknek köszönhetően egyszerre gazdag, mégis légies, így bátran viselhető akár a hétköznapokon, akár egy romantikus randevún is, hogy emlékezetessé tegye a pillanatot. Hagyd elbűvölni magad a Candy édes világában, és engedd, hogy az illatod mindenkiből kihozza a mosolyt és a kedvességet!'
WHERE id = 13;

UPDATE parfum
SET image_url = '/Pictures/Coco_Loco.png'
-- description = 'Ez az illat tele van élettel! A legcukibb nőkhöz passzol a legjobban, akik természetüknél fogva vonzóak. Akik ide jönnek, oda mennek sürögnek-forognak, az élet édes számukra, szenvedélyesek és tele vannak mosollyal, kalanddal, felfedezéssel és lelkesedéssel a mindennapokban is. Ahogy a neve is utal rá, az egzotikus kókusz illata dominál egy csipet nyárias "strand-életérzéssel", amihez az édes-vaníliás jegyek társulnak, és ezt lágyítják a trópusi gyümölcsös és púderes mellékjegyek. Egy egzotikus csoda, amely abszolút megragadja a férfiak figyelmét, hiszen édes és kívánatos. Buliba, randira, élményekkel teli, örömteli hétköznapokra kiváló! Négyévszakos, de kétségtelenül nyáron a legbombább!'
WHERE id = 14;

UPDATE parfum
SET image_url = '/Pictures/Colors.png'
-- description = 'A nőiesség illatának megtestesülése. A Colors az egyik bestseller női parfümünk. „Colors”, tehát „sokszínű", lehengerlő és vonzó. Egyértelműen randiillat. Négyévszakos, rendkívül intenzív és kitartó. Annak ellenére, hogy szexi, intelligenciát és eleganciát sugárzó. Leginkább az édes jegyek, különösen a vanília dominál, valamint a gyümölcsös és virágos jegyek, élükön a körtével és a fehér virágokkal. Ezzel nem tudsz mellé nyúlni, "szerelemillat" lesz és a mindennapjaidat extrém mód feltölti pozitív hangulattal és energiával. Nagyszerű választás!'
WHERE id = 15;

UPDATE parfum
SET image_url = '/Pictures/Endless_Love.png'
-- description = 'Az Endless Love egy lenyűgöző női parfüm, amely frissességet és könnyedséget áraszt, így tökéletesen illik a nyári hétköznapokhoz. Az Endless Sea férfi illatunk női párja, és magában hordozza a végtelen tenger inspiráló erejét és az örök szerelem romantikus varázsát. Az illatot a bergamott és a tengeri jegyek frissítő ereje határozza meg. A citrusos jegyek felébresztik az érzékeket és energiával töltik fel a mindennapokat, a tengeri jegyek pedig egy misztikus atmoszférát teremtenek, amely olyan, mintha a végtelen tenger partján sétálnál, és a tengeri szellővel táncolnál. A vanília, a pézsma és az ámbra tovább gazdagítják édes világukkal. Ez a kombináció simogatóan puha és érzéki élményt nyújt, amely örömet és boldogságot sugároz. A rózsabors pikáns jegye élettel tölti meg az illatot, miközben a jázmin a nőiesség és a báj érzését erősítik. Az Endless Love egy olyan illat, amely megragadja a nyár könnyedségét és frissességét, miközben romantikus és érzéki hangulatot teremt. Engedd, hogy elbűvöljön ez az egyedi és csodálatos illat, és hagyd, hogy a mindennapjaid egy csodálatos kalanddá változzanak!'
WHERE id = 16;

UPDATE parfum
SET image_url = '/Pictures/Feel.png'
-- description = 'Ez a fenséges illat tisztelgés a keleti luxus világa előtt. A lila virágok, a szantálfa és a bőr lenyűgöző aromás keveréke meglepően előkelő parfümöt eredményez. A vanília, a púder és a csokoládé érzéki árnyalatai adják az illat édességét. Nagyon feltűnő, különleges, és mégsem tolakodó. Szexi, kicsit szemtelen és előkelő. Azoknak a hölgyeknek és férfiaknak ajánljuk, akik vágynak az eleganciára, a kifinomultságra és a luxusra.'
WHERE id = 17;

UPDATE parfum
SET image_url = '/Pictures/Flamingo_Fizz.png'
-- description = 'A Flamingo Fizz egy igazán különleges és lenyűgöző parfüm. Egyedi és izgalmas összetevőivel egy olyan illat született, amely vibráló és élénkítő érzést kelt. A grapefruit, a bogyós gyümölcsök és a pezsgő illatának keveredése mindenkit azonnal elvarázsol. A narancsvirág, a jázmin és a rózsa jegyei tovább fokozzák az érzékiséget, emellett az ámbra és a pézsma adja az illat rejtélyes mélységét. Azoknak a hölgyeknek terveztük, akik imádják az élet pezsdítő pillanatait és mindig készen állnak az új kihívásokra. A Flamingo Fizz igazán sokoldalú, amely a nyár minden örömét magában hordozza, de ne hagyd, hogy az évszakok határozzák meg, hogy mikor viselheted, ugyanis az édes jegyei miatt tökéletes választás lesz a hűvösebb évszakokban is! Engedd, hogy ez az illat elkísérjen életed minden útjain, és emlékezetessé tegye a pillanatokat! Élvezd az élet pezsgését a Flamingo Fizz társaságában!'
WHERE id = 18;

UPDATE parfum
SET image_url = '/Pictures/Gold_Dust.png'
-- description = 'Az "aranyélet" illata, ami természetesen mindig a sikerrel párosul. Egy igazán édes, elegáns illat, ami szó szerint "bearanyozza" a napodat. Rendkívül intenzív és tartós. Elsőként a fahéj és a vanília dominanciájával találkozunk, amit körülölel az ámbra, a pézsma, ugyanakkor a fás és a füstös jegyektől lesz igazán férfias és karizmatikus, a túlzó édes jegyeket pedig az olasz bergamott és az aromák lágyítják. Tuti randi-illat, nagyon figyelemfelkeltő, könnyen a középpontba kerülhetsz vele. Bátran hordható, sokak által szerethető parfüm, a nők körében nagyon népszerű és szexi, „aranyló bomba”. Ezzel aratni fogsz, készülj fel az elismerő szavakra és pillantásokra, mert a Gold Dust egy igazán elegáns és vonzó, édes illat. Őszre, télre a legjobb, de tavasszal, illetve nyárestéken is hódítani fogsz vele. Komoly üzlethez is passzol, hiszen ez az illat a jó ízlésről és a sikerről árulkodik. Jó eséllyel az egyik legnépszerűbb SUPERZ. parfüm a karakteres férfiak körében!'
WHERE id = 19;

UPDATE parfum
SET image_url = '/Pictures/Hello_Baby.png'
-- description = 'Amikor annyira lenyűgöző a nő, hogy csak annyi jön ki a szádon, hogy „Hello Baby!”. De nem ám hangosan leszólítva, az egy másik minőség, hanem tisztelettel és elismeréssel, amikor a nő tényleg telitalálat. Hiszen ez egy nagyon elegáns és csábító illat. A Hello Baby nem kislányoknak való, hanem az igazi nőnek! Ez a parfüm kész remekmű! Fehér virágokkal nyit, amit körbe ölel a világ leghíresebb rózsaolaja, a bolgár rózsa, bár elsőre talán a kakaóbabot és a vaníliát érezheted, az édes-ámbrás kísérővel. Mindezeket lágyítják a púderes, forró fűszeres és mandulás jegyek. Nagyon összetett, tartós ugyanakkor elegánsan dögös. Négyévszakos, de az édes, forró fűszeres oldala hidegben érvényesül a legjobban. Maximálisan randi-parfüm, a hétköznapokat bearanyozza, az üzleti megjelenésben pedig tiszteletet parancsoló és figyelemfelkeltő.'
WHERE id = 20;

UPDATE parfum
SET image_url = '/Pictures/Immortalis.png'
-- description = 'Az előkelőség és a halhatatlanság illata. Ez a parfüm olyan varázslatos kompozíció, amely nem csak megszállottá tesz, de lenyűgöz és elkápráztat egyszerre. Az Immortalis illatának középpontjában a sáfrány, pézsma, moha, és az ásványos jegyek érezhetők. A pézsma, mint alapjegy, egy érzéki és bársonyos jegy, mely azonnal magára vonja a figyelmet. Ez a jellegzetes illat eleganciát sugároz, hozzájárulva az előkelőség érzéséhez. A moha, a másik kiemelkedő jegy, amely mélységet és titokzatosságot kölcsönöz az illatnak. Ez a természetes elem megidézi a sötét erdők misztikus légkörét, és különleges dimenziót ad a parfümnek. A földies és fás jegyekkel kiegészülve még tovább erősíti a halhatatlanság és az időtlenség érzését. Az immortelle nevű növény a gyöngyvirággal könnyedséget, tisztaságot visz az illatba és tovább gazdagítja a parfüm érzéki vonzerejét. Ez a kifinomult és elragadó illat megbabonázza és rabul ejti a viselőjét. Engedd, hogy az Immortalis által átitatott légkör magával ragadjon, és élvezd az időtlen elegancia és vonzerő érzését.'
WHERE id = 21;

UPDATE parfum
SET image_url = '/Pictures/Khalifa.png'
-- description = 'Khalifa – egy Dubaj-ihlette luxus illat. A luxus és modern városi életérzés összhangját tükrözi, átitatva az arab kultúra gazdagságával és eleganciájával. A fás és bőrös jegyek dominanciája azonnal felhívja a figyelmet az illat viselőjére. Az oud a keleti stílusú illatok elengedhetetlen alkotóeleme, amely édeskés, füstös aromát kölcsönöz a parfümnek. A pézsmás jegyek lágy érzékiséget adnak az illatnak, amely tökéletessé teszi a harmóniáját. A forró fűszerek vibráló és izgalmas dimenziót adnak, fokozva a Khalifa vonzerejét és egyediségét. Mély és gazdag illat, amely azonnal elvarázsol mindenkit.'
WHERE id = 22;

UPDATE parfum
SET image_url = '/Pictures/Khamzat_Smesh.png'
-- description = 'A jól megszokott Smesh szót Khamzat szokta a bunyóira használni és ahol ez a szó elhangzik, ott megjelenik Khamzat végtelen és elképesztő dominanciája is, amihez hasonlót talán még soha nem láthattak a nézők az MMA történelem során.
--
-- A parfüm is pont így lett megalkotva. Rendkívül stílusos és domináns.
-- Egy illat, ami hatalmas erőt ad neked ahhoz, hogy elérd a kitűzött céljaidat!
--
-- A cédrusfa mellett a forró fűszerek gondoskodnak róla, hogy a tűz sose hunyjon ki viselőjében. A vaníliás-tonkababos jegyek teszik vonzóvá, a vérnarancstól pedig igazán kirobbanó és különleges.'
WHERE id = 23;

UPDATE parfum
SET image_url = '/Pictures/Khamzat_The_Wolf.png'
-- description = 'Az átlagon felüli emberekhez átlagon felüli parfümök dukálnak. A The Wolf illatunk ezt tökéletesen képviseli. Benne van a megrendíthetetlen fókusz és a férfiasság, ami a fás és bőrös jegyeknek köszönhető. Az igazán motivált személyek kitartóak, mint a sáfrány az illatban, és különlegesek, mint a kardamom és a pézsma különleges jelenléte.  Rendkívül kitartó illat, ami megtestesíti a legyőzhetetlenség érzetét.'
WHERE id = 24;

UPDATE parfum
SET image_url = '/Pictures/La_Bohéme.png'
-- description = 'Egy nagyon kellemes, friss, üde illat.  Nem túl aromás, tolakodó, hanem nagyon kiegyensúlyozott és sportos. Ennek ellenére simán lehet hordani randira is, hiszen a borókabogyó és rózsabors kifejezetten vonzóvá és izgalmassá teszik.
--
-- Ami meglepő, hogy általában a friss illatok nem intenzívek és nem elég kitartóak, ennek ellenére a La Bohéme kifejezetten jól bírja a mindennapokat és akár egész nap elkísér a friss, Gin Tonic-hoz hasonlító illata.
--
-- Ahogy a golf is az üzletemberek kedvenc sportja, mondhatni tehetős férfiaké, úgy a La Bohéme illatjegyei is gazdag, fenséges benyomást keltenek. Az biztos, hogy ehhez hasonló illattal sem fogsz sokat találkozni, hiszen a nagyon részletgazdagon megtervezett összetevői által elüt a megszokott illatoktól, de mégis nagyon könnyen megszerethető.

-- Javarészt nappali illat és inkább tavasszal illetve nyáron tud kiteljesedni, de ősszel és télen is hordható.'
WHERE id = 25;

UPDATE parfum
SET image_url = '/Pictures/Lake_Balaton.png'
-- description = 'Fedezz fel egy új dimenziót a frissesség és az emlékek varázsában! Nem csak maga az illat különleges, hanem dobozának története is, hiszen a rajta látható festmény apáról-fiúra száll már három generáció óta! A műalkotást Szerencsés Szabolcs dédnagyapja festette Balatonboglárról 1940-ben. Immáron ez a varázslatos kép nem csak a családi otthonukat díszíti, hanem mindenkit elvarázsol Lake Balaton illatunk dobozán. Ez a parfüm egy igazán ellenállhatatlan és exkluzív alkotás. Érdekessége, hogy nem csak Magyarországon jelent meg, hanem vele egy napon Olaszországban, az USA-ban és Latin Amerikában is debütált országunk új büszkesége. Annyira friss és üde, mint egy lágy balatoni szellő, amely simogatja az emberek arcát és lelkét egyaránt. Első pillanatban a grépfrút ragyogó frissessége köszönt minket, és idő múltával szépen kibontakoznak a moha, az ámbra és a sáfrány finom jegyei is. A jázmin friss illata megidézi a balatoni nyár romantikus éjszakáit, a nagarmotha zöld, földes illata pedig a déli part nádasaiba repíti képzeletünket. A Lake Balaton nem csupán egy parfüm, hanem egy emlékekben gazdag utazás is, hiszen a híres balatoni vidék minden magyar ember szívét megdobogtatja és rengeteg szép pillanatot juttat eszünkbe.'
WHERE id = 26;

UPDATE parfum
SET image_url = '/Pictures/Queen_Of_Chamboard.png'
-- description = 'A megújult Queen of Chambord illatunkat apró változásokkal gazdagítottuk, miközben megőrizte az előző verzió varázsát. Az új változat méginkább kiemeli a nőiességet, emellett erősebb és tartósabb illatot biztosít, miközben megmaradt benne az elegancia és a csábító vonzerő. 
--
-- Ez az illat a Chambord parfümünk női párja, és a neve nem véletlen: egy francia kastély királynője ihlette, hiszen ez az illat minden pillanatban megidézi az eleganciát és a szexi vonzalmat.
--
-- A krémes karamell, vanília és kókusz alapjegyei mellett a pluszban hozzátett csokoládé fokozza a gazdag, édes érzést, míg a piros bogyós gyümölcsök egy pici frissességet adnak az illatnak. Emellett az ámbra, pézsma és a jázmin eleganciájával találkozunk, amely igazán különleges, tartós élményt nyújt.
--
-- Ez az illat biztosan számos bókot hoz majd neked, legyen szó randiról vagy a hétköznapok elegáns pillanatairól. Az új Queen of Chambord igazán csábító és egyedülálló, csakúgy, mint egy igazi királynő.'
WHERE id = 27;

UPDATE parfum
SET image_url = '/Pictures/Memories.png'
-- description = 'Az egyik leghangulatosabb illatunk, amely elképesztően jól idézi az emberben a gyönyörű, kellemes emlékeket. Ezért is lett a neve "Memories", azaz emlékek. Varázslatos illat, ami pozitívan határozza meg az egész napodat. Érzelmes és gazdag parfüm. Kifújáskor a fahéj melegségét a konyak pezsdíti fel. A tölgyfa és a szantálfa gondoskodik a remek tartósságról, azonban a vanília, a csokoládé és a karamell teszik varázslatosan édessé és teljessé. Igazán gourmand illat. Aki szereti az édes, meleg, fűszeres illatokat, imádja, ha magára vonzza az emberek figyelmét és szeretne mindemellett lágyságot és gyengédséget is kommunikálni, a legjobb, ha ezt az parfümöt választja. Leginkább hűvös időben, ősszel és télen működik tökéletesen.'
WHERE id = 28;

UPDATE parfum
SET image_url = '/Pictures/Memories_Gold.png'
-- description = 'A gurmand édesség varázsa egy üvegbe zárva. A Memories Gold a Memories parfümünk testvér-illata, azonban még édesebb, gurmandosabb és különlegesebb. Fő összetevői a méz és a karamell, amelyek összefonódásukkal érzékiséget és lágy érintést hoznak az illatba. E két illatjegy játékában rejlik a varázslatos édesség, ami annyira csábító, hogy legszívesebben beleharapnál. A vanília és a tej édes, ínycsiklandó illata még mélyebbé, karakteresebbé teszi, az írisz pedig elegáns, virágos érintést kölcsönöz neki, emelve annak komplexitását. Az illatot a cédrusfa és a pézsma tiszta és édeskés aromája teszik teljessé, amelyek harmonikus összhangban vannak a tonkabab fűszerességével, így az illat hosszan tartó, elegáns élménnyé válik, és egész nap elkíséri viselőjét. Ez a rendkívüli gourmand kompozíció nem csupán egy illat, hanem egy édes emlék, amely elvarázsol és örökre emlékezetes marad.'
WHERE id = 29;

UPDATE parfum
SET image_url = '/Pictures/Morocco.png'
-- description = 'Képzelj el egy gazdag arab üzletembert, egy sejket, aki már járt Európában és így a parfümjében is keverednek az arabos és az európai illatjegyek. A gazdag, finom, édes illat a forró fűszerekkel egyértelműen keleties, ugyanakkor hihetetlenül szépen keveredik a mandulával és a dióval. A Morocco illatfelhőről a meleg és kedves fogadtatás, a bőség és a gyönyörű tájak jutnak eszünkbe, amelyet akár teveháton, akár stílusosan egy Mercedes terepjáróval fedeznénk fel, legyünk akár Marokkóban, Dubajban, Bahreinben vagy valami exkluzív arab resortban. A gazdagság, a bőség és a nagylelkűség illata. Kifejezetten üzleties, de randira is abszolút jó kiegészítő. A hétköznapjaidat egészen biztosan fel fogja dobni ez a magabiztos és férfias illat.'
WHERE id = 30;

UPDATE parfum
SET image_url = '/Pictures/Mystery_Saffron.png'
-- description = 'A misztikus sáfrány. Nagyon érdekes és valóban semmihez sem hasonlítható illat, egyedi és átgondolt. A sáfrányos, fás, vaníliás, pézsmás jegyek a tonkababbal szó szerint felébresztik az embert. Az első négy órában talán túlzóan is nagy az illatfelhője, majd a nap végéig egészségesen csökken, de kitartóan elkísér a Mystery Saffron varázslatos illata. Niche rajongóknak kötelező és vakon vásárolható. Teljesen unisex, érzéki, így a különlegességre vágyó nőket meg fogja bolondítani, az igazán kifinomult urak pedig olyan büszkén fogják viselni, mintha egy Rolls Royce kulcsával járnának fel-alá egész nap. Ez egy érett „orrnak” túlzás nélkül „orgazmus”, de tapasztalatlanoknak elsőre meghökkentő lehet az egyedisége. MrSzerencsés dubaji útján ez az illat aratta az egyik legnagyobb sikert a fényűzést kedvelő dubajiak körében.
--
-- A Mystery Saffron legkülönlegesebb összetevője a több, mint négyezer éve ismert, és használt iráni sáfrány (Crocus sativus), amely a világ legdrágább fűszere és parfüm-alapanyaga, hiszen egyetlen kilogramm fűszerhez tízezer növény bibéit kell kézzel kiemelni, ezért a valódi iráni sáfrány fűszer grammja megközelíti a huszonnégy karátos arany árát. Illata jellegzetes, édes és kesernyés, bőrszerű, puha és intim, földes alapjegyekkel. Gyógynövényként a szívinfarktus megelőzésére használják, és antidepresszáns hatását klinikai vizsgálatok igazolták. Ez az illatjegy még a következő termékekben van jelen hangsúlyosan: Aura, Lake Balaton, Wolf.'
WHERE id = 31;

UPDATE parfum
SET image_url = '/Pictures/Noble.png'
-- description = 'melyekhez kötheted. Valami teljesen mást kapsz ettől a csodától, mint bármely más illattól. Ha a több száz vagy ezer éves történelem leggyönyörűbb művészi alkotásait illatba lehetne önteni, valahogy így érződne. Rendkívül részletes, semmihez sem hasonlítható! Elvarázsol és első illatozás után csak csendben ülsz, és rakod össze magadban a végtelen ihletet, amit kaptál tőle. Egyértelműen az ámbra a leghangsúlyosabb benne. Szokatlan párosításokkal, egzotikus virágokkal és rózsával, de mégis a karamell, bőr és a pézsma úgy átalakítja ezt az egyveleget, hogy ha nem írnánk le, talán fel sem ismernéd, amit illatozol. Ne felejtsük el a vaníliát se, ami ezt a történelmi csodát megdobja és hihetetlenül vonzóvá varázsolja. Ez az illat olyan, mintha örökké tartana. Egyértelműen illatfelhőről beszélünk, emellett nagyon komoly az intenzitása és a tartóssága is. Randihoz egyértelműen ajánljuk. Azok a nők és férfiak, akik kellőképpen mélyek érzelmileg és értelmileg is, ők elképesztően vonzónak, elegánsnak és lehengerlőnek fogják tartani ezt az illatot. Alapvetően 4 évszakos, de nyáron inkább esti parfümként javasoljuk!'
WHERE id = 32;

UPDATE parfum
SET image_url = '/Pictures/Oud_Alfateh.png'
-- description = 'Az édeskés ámbra dominál, amely tökéletesen illeszkedik a fás, pézsmás, oud-os illatvilághoz. Ezeket gyakran össze szokták keverni a bőrös illatjegyekkel, ámbár az Oud Alfateh megalkotói nagyon különleges mellékillatokkal fűszerezték meg, mint a tölgymoha, a jázmin, a rózsa és a paradicsomlevél. Az eredmény elképesztő! Csodálatos összhang, ahol a rettentően domináns jegyek gyönyörű mellékillatokkal együtt alkotják az Oud Alfateh egyediségét. Ez az illat hihetetlenül tartós! Gyakori élmény, hogy akár még zuhanyzás után vagy másnap is érezni a bőrön lüktető illatot.'
WHERE id = 33;

UPDATE parfum
SET image_url = '/Pictures/Passion.png'
-- description = 'Ha ez az illat találkozik egy finom bőrrel, akkor konkrétan veszélyes! Csak óvatosan az ilyen nők körében, nehogy áldozattá válj! Sokan a férfi Dominance illatunk párjaként is emlegetik, mert talán ez a két legdominánsabb illatunk. És mit is tartalmaz? Pont, amit egy tökéletes, nőies, elegáns, de szexi illatnak tartalmaznia kell: az édes illatjegyek dominálnak, a karamell és a vanília tovább fokozza a mámort, ugyanakkor a gyümölcsös, enyhén fűszeres és púderes illatjegyek ellensúlyozzák az édességét. Íme megszületik a tökéletes alkotás: a SUPERZ. Passion. Igen "Passion", ami azt jelenti: "szenvedély". Egy igazán karizmatikus, nőies illat.'
WHERE id = 34;

UPDATE parfum
SET image_url = '/Pictures/Phoenix.png'
-- description = 'A Phoenix megtestesíti mindazt, amit a férfi lét jelent: az erőt, a magabiztosságot. Nevét a legendás főnixmadárról kapta, amely hamvaiból újjászületve egyre erősebbé válik, csak úgy, mint a férfi, aki a megpróbáltatások és a kihívások után, megújult erővel tér vissza. Néha ugyan elhamvad a tűz, de kell, hogy újra lángoljon a szenvedély! Ennek elixírje a Phoenix, ami minden cseppjében mágikus erőt hordoz, ami viselőjét végtelenül férfias energiájával ruházza fel. Illatkompozíciója gyantával, kasmírfával és pézsmával gazdagodott, hogy még kitartóbb legyen, és az egész napodat végigkísérje. A fás és a bőrös jegyek intenzitását a lilavirágok, a fahéj, a bors és a kakaó egészíti ki, így hozva létre a legférfiasabb illatunkat. Ez az illat a magabiztosság esszenciája. Viselheted randin, bulin, de akár üzleti tárgyaláson is, hiszen kifejezetten magabiztos kisugárzást kölcsönöz. A lilavirágokban és a minőségi pézsmában rejlő természetes feromonoknak köszönhetően az ösztönös vonzás ereje is felerősödik, így, ezzel az illattal minden helyzetben a legjobbat hozhatod ki magadból!'
WHERE id = 35;

UPDATE parfum
SET image_url = '/Pictures/Purple_Bronze.png'
-- description = 'Purple Bronze, azaz lila és bronz. A nevét az illatjegyeiről kapta, hiszen e két, nagyon izgalmas és domináns oldal keveredik benne. Egyik oldalon a lila virágok – mint például az írisz – a másik oldalon, tehát a bronz "oldalán" a pézsmás, az ámbrás, a bőrös, a vaníliás, a púderes jegyek keverednek. Egyszerűen elbűvölő! Totálisan unisex illat, a hölgyeken a finom, édes, vonzó és virágos oldala dominál, míg az urakon az ámbrás és a bőrös jegyeket érezzük hangsúlyosabban. Abszolút randi-illat, egyáltalán nem megosztó. Vacsorához, mozizáshoz tökéletes, de a hétköznapjaidat is feldobja, akár elegáns szetthez, akár merészebb szexi szetthez viseled. Mind a négy évszakban használható.'
WHERE id = 36;

UPDATE parfum
SET image_url = '/Pictures/Royal_Oud.png'
-- description = 'A Royal Oud előkelő, kifinomult és exkluzív illatélmény. Elrepíti viselőjét egy utazásra a gazdagság és luxus világába. Egy igazi niche illat, amely a nem hétköznapi embereknek készült. Csodálatos kompozíciójában az agárfa és az oud játékosan egyesülnek, melyeket az ámbra, a pacsuli és a vetiver finoman körülölel. A vanília édes és buja, a szegfűszeg és a sáfrány pedig fűszeres vibrálást adnak hozzá, míg a jázmin és a levendula eleganciát és frissességet csempésznek bele. Ez az illat nem hagyja, hogy viselője észrevétlenül érkezzen meg, legyen szó egy üzleti tárgyalásról, vagy épp egy randevúról, hiszen azonnal magára vonja a körülötte lévők figyelmét ezzel a markáns és feltűnő parfümmel. Egy füstös, fűszeres, édes illat, mely kifejezetten érett férfiaknak készült. Azoknak, akik mernek kitűnni a tömegből és mernek különlegesek, egyediek lenni.'
WHERE id = 37;

UPDATE parfum
SET image_url = '/Pictures/Secret_Desire_Iris.png'
-- description = 'A Secret Desire Iris a púderes, a vaníliás és ámbrás alapillatjegyeit az írisz, a karamell és a pacsuli koronázza, és így egy igazán vonzó és feltűnő illatot hoztunk létre. A Secret Desire illatunk az irisszel egy új horizontot nyit az uniszex illatok világában, amely tökéletesen illik férfiaknak és hölgyeknek egyaránt. Egy biztos, ez nem egy "kezdőnek" való illat! Azok számára ajánljuk, akik már régóta gyűjtik a parfümöket, és értékelik a különleges, nem hétköznapi illatvilágot. Tesztelők sokasága szerint ez az illat a francia luxus megtestesítője. Óriási illatfelhővel és kiemelkedő tartóssággal rendelkezik, így biztos lehetsz benne, hogy az egész napodat végigkíséri. 
--
-- A töretlen elegancia illata, amely magabiztosságot és kifinomultságot közvetít. Hölgyeknek tökéletes választás randira, férfiaknak pedig elengedhetetlen egy különleges utazáshoz, hiszen a Secret Desire Iris világa elvont és inspiráló. Garantáljuk, hogy tökéletes kísérője lesz minden fontos pillanatnak!'
WHERE id = 38;

UPDATE parfum
SET image_url = '/Pictures/Siren.png'
-- description = 'Maga a játékosság, az érzékiség! Minden férfit levesz a lábáról! Első pillanatban egyértelműen a friss és üde mangót, illetve a bergamott illatát érezzük, amelyet körülölel a jázmin. Édességét a vanília és a szantálfa adja, az érzéki oldalát pedig a krémes tömjén. Szexi, vonzó és csábító. Úgy is mondhatnánk, hogy "hálószoba" illat, hiszen mindkét félből a legjobbat hozza ki!'
WHERE id = 39;

UPDATE parfum
SET image_url = '/Pictures/Soho.png'
-- description = 'A Soho egy lenyűgöző és lüktető illat, amely egy modern metropolisz szívének vibráló energiáját testesíti meg. Az illat középpontjában a tonkabab, a vanília és a kókusz rejlik, amelyek együtt egy csábító harmóniát alkotnak. A tonkabab meleg és édes fűszerességgel simogatja az érzékeket, míg a vanília és a kókusz édeskés jegyei egy kifinomult és lágy érintést adnak az illatnak. A szerecsendió, az agárfa és a pézsma hozzájárulnak az illat karakteréhez, miközben tovább erősítik a Soho egyediségét. A szerecsendió pikáns jegyei élénkséget, míg az agárfa egy misztikus és fás dimenziót teremt. A szantálfa ehhez egy földes, fás alapot teremt, amely a városi élet és a természet közötti egyensúlyt tükrözi. A Soho nem csak egy illat, hanem egy kaland, amelyben a városi élet és a természet találkozik, egy feledhetetlen élményt alkotva.'
WHERE id = 40;

UPDATE parfum
SET image_url = '/Pictures/Toxic.png'
-- description = 'A tiramisu, karamell és méz gazdag, édes árnyalatai nyitják meg az illatot, amit a bergamott frissessége pezsdít fel. Az ámbra, moha és vanília meleg alapjegyei hosszan tartó, mély eleganciát kölcsönöznek a parfümnek. A Toxic unisex illat, amely minden nem számára egyaránt vonzó és különleges, tartóssága pedig biztosítja számodra, hogy egész napod végigkísérje.
--
-- Ez a parfüm azoknak készült, akik nem félnek megmutatni valódi énjüket, és akik a szabályokat áthágva szeretnék kifejezni egyéniségüket. A Toxic több mint egy illat – egy életérzés, amely merészséget és szenvedélyt sugároz.'
WHERE id = 41;

UPDATE parfum
SET image_url = '/Pictures/1899.png'
-- description = 'Zöld, unisex friss-édeskés illat. Négyévszakos, minden korosztály kedvence lehet, hiszen magabiztosságot és erőt, valamint tettrekészséget sugall, épp úgy, mint a 125 éves Ferencvárosi Torna Club szellemisége. A kamilla harmóniát, a zöld jegyek és a fenyő lendületet, az ámbra és a pézsma méltóságot és céltudatosságot adnak. Bármikor nagyszerű választás!'
WHERE id = 42;

UPDATE parfum
SET image_url = '/Pictures/Sweet_Darkness.png'
-- description = 'Az igazán titokzatos és rejtélyes férfiaknak/hölgyeknek ajánljuk, akik izgalmasak, kiszámíthatatlanok és egyediek. Ennek az illatnak megvan a saját személyisége, mély, veszélyes, erős, ugyanakkor édes és csábító. Már a jegyek felépítése is elképesztő: édes ámbrával nyit, amit a füst megbolondít, mindez a jellegzetes, természetes oud-on nyugszik, amire épül a dohány, a cannabis és az enyhe kávé, a zöld jegy kíséretében. Bombasztikus egyveleg és nem is gondolnánk, milyen extrém illat születik a végén!
--
-- Kifejezetten intenzív, ősszel és télen dominál a legjobban, tavasszal és nyáron pedig szelíden bújnak elő a zöldes jegyek, a domináló édes és fás jegyek között. A fondorlatos nők – amennyiben férfi a viselője, ha pedig nő viseli akkor a *furfangos férfiak – érteni fogják ezt az illatot, és tágra nyílt szemekkel fognak Téged figyelni. Olyan nők, akik úgy igazán szeretik játszani a játékot. Egy ilyen nőhöz egy ilyen illat a randira "veszélyes", persze pozitív értelemben, hiszen lehengerlő lesz. Komoly üzleti tárgyalásokhoz a természetes oud-ot tartalmazó parfümök mindig megfelelőek, hiszen a világ legdrágább parfüm-alapanyagáról beszélünk. Mindig a dominanciát üzeni az illat, amit azonnal értenek az asztal túloldalán ülök. Szóval nem véletlenül kapta a nevét, hogy "édes sötétség", hiszen ez egy igazán rejtélyes és vad illat. Az egész napodat megváltoztatja, ha ezzel koronázod az eleganciádat!'
WHERE id = 43;

UPDATE parfum
SET image_url = '/Pictures/Tenerife.png'
-- description = 'Ahol a luxus illata találkozik a mediterrán jegyekkel. Karizmatikus, vonzó és domináns. Képzelj el egy kis mediterrán falut, ahol őszintén mosolyognak rád a kis utcákon sétálva, ahol lenyűgöző látvány tárul eléd, ahol esténként a lobogó tűz mellett a tenger halk zúgása mellett szenvedélyes szempárok találkoznak! Ha az éj csábító suttogásában egy tüzes lélekkel találkozol, pontosan érezni fogod, hogyan szelídítsd meg ezzel a lehengerlő illattal. Citrusos jegyei adják a friss, mediterrán hangulatát, amit izgalmasan kiegészítenek a fehér virágos, az ámbrás, és ugyanakkor a kissé aromás jegyek. Ez utóbbi fogja adni a komplexitását, illetve a vaníliás, édes és forró fűszeres jegyeitől lesz szenvedélyes és vonzó. Egy mondatban: egy igazi nyári, erős, férfias illat, felfedezőknek, szabadlelkű üzletembereknek. Minél többször hordod, annál jobban beleszeretsz és belemerülsz e parfüm világába. Igen, viselheted randira is, emellett négyévszakos illat, azonban hidegben a citrusos jegyei miatt nem fog tudni kiteljesedni, így télen kifejezetten beltéri tevékenységhez ajánljuk, akár edzőtermi használatra is. Tavasszal és nyáron a legjobb, ugyanakkor viselhető mérsékelt hőmérsékletű őszi napokon is kellő körültekintéssel! Intenzitása erős, de nem extrém.'
WHERE id = 44;

UPDATE parfum
SET image_url = '/Pictures/Valhalla.png'
-- description = 'Ahogyan a neve is mutatja, sötét hangulatot hordoz magában, és egyesíti a nagy hullámokat, a vad szélvihart, a megfoghatatlan füstöt és az elszánt harci erőket. A Valhalla eredetileg férfiaknak lett tervezve, de bátran viselhetik nők is, akik szeretik az erőteljes, markáns illatfelhőt. Ez a különleges kompozíció garantáltan megérinti azokat, akik merészen lépnek az ismeretlenbe. Csupán egyetlen fújásra van szükség ahhoz, hogy megtöltse a teret és magával ragadjon mindenkit körülötted. Az illat legmarkánsabb és legdominánsabb jegyei a bőr, az oud és a sáfrány, ezeket lágyítja a vanília és az ámbra édessége, amit a jázmin és a levendula virágos könnyedsége tesz teljessé. Jegyeihez csatlakozik még a szerecsendió és a szegfűszeg, és ezek együttesen teremtik meg ezt a lenyűgöző illatot. Fedezd fel a Valhalla parfüm rejtelmeit, és engedd, hogy az illata útnak indítson a múlt izgalmas világába.'
WHERE id = 45;

UPDATE parfum
SET image_url = '/Pictures/Whoosh.png'
-- description = 'Ez egy nagyon érdekes és különleges illat. Először is gyümölcsös és édes, ugyanakkor mégsem ez lesz az első élményed a parfümmel, hiszen tökéletesen keveredik a madagaszkári vanília, a púderes, a kissé citrusos és az „animalic” jegyekkel, amitől a Whoosh (jelentése: „fuvallat”) érzését kelti. Mondhatni lehengerlő. Egy domináns fuvallat, ami elvarázsol. Egy nagyon komplex, fényűző illat, azonban nem az „olcsó celeb”-fajta, hanem az ikonikus sztárok illata, akik nem botránnyal emelkednek ki a tömegből, hanem a lenyűgöző karizmájukkal. Elegáns, intelligens, finom és vonzó. Ez a SUPERZ. Whoosh! Abszolút négyévszakos, éjjel és nappal is gyönyörűen működik. Nagyon karakteres, nagy „szerelem” parfüm. Kifejezetten intenzív és tartós illat. Bátran ajánljuk, hiszen ez egy - nagyon sokak számára - szerethető alkotás!'
WHERE id = 46;

UPDATE parfum
SET image_url = '/Pictures/Wild_Cherry.png'
-- description = '"Wild", tehát "vad" és "domináló" cseresznye. Nem is akármilyen! Ízletes, vonzó és harmonikus. És hiába az édes, vaníliás, török rózsás, sőt csipetnyi szilvás illatjegy, ez bizony, a fás, diós és mandulás illatjegyei miatt, a férfiakon is jól áll. Kétségtelenül nagyon feltűnő és fenséges, és bizony vadító is egyben! Nőknek kiváló randi-illat, de a férfiak bőrén is szexi és vonzó.
--
-- Nagyon sokan fogják dicsérni, hiszen ezek a jegyek kitartóan árasztják magukból intenzív illatokat. Kiteljesedése ősszel és télen a legerősebb, de tavasszal is kiváló, forró nyári napokon viszont inkább esti órákban javasoljuk. Ha szereted a cseresznye vadító illatát, gyümölcsös, fás, mandulás kísérettel, akkor azonnal csapj le rá! Szexi!
--
-- A cseresznye a mai Törökország területén volt őshonos a régi időkben és erről a területről terjedt el szerte a világban i.e. 72 után. Illata jellegzetes, gyümölcsös, édes és fanyar, keserűmandulás árnyalattal. Japánban a cseresznyevirág (szakura) nemzeti szimbólum, minden tavasszal hanami (virágnézés) fesztiválokat tartanak. Értékes hatóanyagai és összetevői miatt a gyógyászat is hasznosítja. A cseresznye antociánokat tartalmaz, amik csökkentik például köszvény és ízületi gyulladás miatti fájdalmat. Akadályozza a szájüregi fertőzéseket és semlegesíti a rossz leheletet. Jelentős a C-vitamin tartalma (10–15 mg), sok benne a foszfor, a kalcium, a nátrium, a kobalt, a kálium (190–220 mg), és a vas. Kedvezően hat a fogak és a csontok fejlődésére.'
WHERE id = 47;