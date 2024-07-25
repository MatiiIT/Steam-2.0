-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Lip 25, 2024 at 06:35 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `steam`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gry`
--

CREATE TABLE `gry` (
  `id` int(10) UNSIGNED NOT NULL,
  `idKategorii` int(10) UNSIGNED NOT NULL,
  `nazwa` varchar(50) NOT NULL,
  `obrazek` varchar(50) NOT NULL,
  `opis` text NOT NULL,
  `cena` int(11) NOT NULL,
  `rozmiar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `gry`
--

INSERT INTO `gry` (`id`, `idKategorii`, `nazwa`, `obrazek`, `opis`, `cena`, `rozmiar`) VALUES
(1, 1, 'Counter-Strike 2', 'Counter-Strike 2.jpg', 'Od ponad 20 lat Counter-Strike oferuje elitarną rozgrywkę rywalizacyjną ukształtowaną przez miliony graczy z całego świata. A już teraz rozpoczyna się kolejny rozdział w historii CS. Oto Counter-Strike 2.\r\n\r\nCounter-Strike 2 jest darmowym ulepszeniem do CS:GO i stanowi największy skok technologiczny w historii serii. Stworzony na silniku Source 2 Counter-Strike 2 został odnowiony o realistyczne renderowanie oparte na fizyce, najnowocześniejsze funkcje sieciowe i ulepszone narzędzia w Warsztacie Społeczności.', 0, 85),
(2, 3, 'Cyberpunk 2077', 'Cyberpunk 2077.jpg', 'Cyberpunk 2077 to rozgrywająca się w otwartym świecie przygoda, w której jako najemnik stajesz do walki z siłami trzęsącymi Night City. Stwórz postać i zdefiniuj własny styl gry, rozsławiaj swoje imię i odblokowuj cybernetyczne ulepszenia. Relacje, które zawiążesz, i wybory, które podejmiesz, wpłyną na twoją opowieść i historię potężnego miasta przyszłości. Tu rodzą się legendy. Jaka będzie twoja?', 199, 70),
(3, 2, 'Cuphead', 'Cuphead.jpg', 'Cuphead to klasyczna platformówka z mocnym naciskiem na walki z bossami, zainspirowana kreskówkami z lat 30. XX wieku, z oprawą graficzną i muzyczną tworzoną mozolnie przy użyciu tych samych technik, czyli ręcznie tworzonymi klatka po klatce animacjami, akwarelowymi tłami i oryginalną jazzową ścieżką dźwiękową.\r\nMożecie grać jako Kubek lub Filiżek (w trybie jednoosobowym lub trybie współpracy w sieci lokalnej), przemierzać przedziwne światy, zdobywać nowe bronie, uczyć się potężnych superciosów i odkrywać niespodzianki, starając się spłacić dług zaciągnięty u diabła!', 72, 4),
(4, 4, 'Slay the Spire', 'Slay the Spire.jpg', 'Połączyliśmy razem grę karcianą i roguelike, aby stworzyć jak najlepszą karciankę dla pojedynczego gracza. Stwórz wyjątkową talię, napotkaj dziwaczne stworzenia, odkryj artefakty o ogromnej mocy i zdobądź Iglicę!', 75, 1),
(5, 4, 'Hades', 'Hades.jpg', 'Hades jest roguelike\'ową grą RPG, osadzoną w świecie greckich mitów. W produkcji tej wcielamy się w mężczyznę próbującego wydostać się z krainy zmarłych – tytułowego Hadesu. Za opracowanie omawianego tytułu odpowiada znane studio niezależne Supergiant Games – autorzy gier Bastion, Transistor oraz Pyre.', 115, 15),
(6, 1, 'Horizon Forbidden West', 'Horizon Forbidden West.jpg', 'Dołącz do Aloy, która przemierza majestatyczne, ale niebezpieczne nowe rubieże, na których czyhają nowe, tajemnicze zagrożenia. Ta Edycja kompletna pozwala Ci zagrać w docenione przez krytyków Horizon Forbidden West na PC w całości, z dodatkową zawartością, w tym pakietem fabularnym Burning Shores, który kontynuuje wydarzenia z podstawowej wersji gry.\r\nZbadaj odległe krainy, walcz z większymi i bardziej fascynującymi maszynami i poznaj zaskakujące nowe plemiona. Wróć do postapokaliptycznego świata Horizon odległej przyszłości.', 259, 150),
(7, 2, 'It Takes Two', 'It Takes Two.jpg', 'Wyrusz na szaloną przygodę w It Takes Two – przełomowej platformowej przygodówce stworzonej z myślą o współpracy. Zaproś znajomego do dołączenia za darmo dzięki funkcji „Dostęp dla znajomych”* i weźcie udział w innowacyjnych wyzwaniach. Grajcie jako Cody i May – pokłócona para zmieniona w lalki za sprawą magicznego zaklęcia. Zamknięci w fantastycznym świecie, w którym za każdym rogiem czeka coś nieoczekiwanego, May oraz Cody niechętnie dążą do naprawienia swojego rozpadającego się związku.', 180, 50),
(8, 2, 'Enter the Gungeon', 'Enter the Gungeon.jpg', 'Enter the Gungeon to połączenie ostrej strzelanki z przemierzaniem lochów. Przedstawia losy grupy strzelających, zgarniających łup, wykonujących uniki z przewrotem i wywracających stoły wyrzutków, którzy dążą do odkupienia poprzez zdobycie największego skarbu Lochu Giwer: giwery zdolnej zabić przeszłość. Wybierz swojego bohatera i dotrzyj na samo dno Lochu Giwer, przebijając się przez wszystkie niebezpieczne piętra o zmiennym układzie, na których aż się roi od zabójczo uroczych broniumarłych i straszliwych bossów. Zbieraj cenne łupy, odkrywaj sekrety lochu i kupuj od szukających łatwego zarobku kupców i sklepikarzy potężne przedmioty, które dadzą ci przewagę.', 68, 2),
(9, 3, 'ELDEN RING', 'ELDEN RING.jpg', 'Powstań, zmatowieńcze. Pozwól prowadzić się łasce, by posiąść moc Eldeńskiego Kręgu i zostać władcą na Ziemiach Pomiędzy.\r\nRozległy świat, który płynnie łączy rozległe przestrzenie, różnorodne sytuacje oraz olbrzymie lochy ze skomplikowanymi trójwymiarowymi projektami. Jego eksploracja to radość z odkrywania nieznanego i mierzenia się z wielkimi niebezpieczeństwami, a pokonywanie tych trudności dostarcza niemałej satysfakcji.', 249, 60),
(10, 2, 'Stray', 'Stray.jpg', 'Zaginiony kot, który nagle znalazł się sam jak palec i z dala od swojej rodziny, musi rozwikłać starożytną tajemnicę oraz uciec z miasta zapomnianego przez czas i historię.\r\nStray to ukazywana z perspektywny trzeciej osoby gra o kocich przygodach, której akcja osadzona została pośród zalanych neonowym blaskiem uliczek i podejrzanych zakątków zrujnowanego cybiermiasta. Przechadzaj się własnymi ścieżkami, staw czoła nieznanym zagrożeniom i odkryj tajemnice tego nieprzyjaznego miejsca zamieszkiwanego wyłącznie przez roboty i groźne stworzenia.', 120, 10),
(11, 1, 'Ghost of Tsushima', 'Ghost of Tsushima.jpg', 'W czasie podboju na wschodzie w drugiej połowie XIII wieku mongolskie imperium rozgromiło całe państwa. Tylko Cuszima dzieli potężną mongolską flotę dowodzoną przez bezwzględnego, przebiegłego Khotun-chana od głównej wyspy Japonii.\r\nGdy wyspa przyjmuje na siebie gniew pierwszej fali Mongołów, dzielny samuraj Jin Sakai postanawia stawić im opór. Jako jeden z ostatnich przedstawicieli swego klanu pragnie zrobić wszystko, aby ochronić swój lud i ocalić ojczyznę. W tym celu będzie musiał porzucić samurajskie tradycje, które go ukształtowały, i stworzyć własną drogę – drogę Ducha, tym samym wypowiadając najeźdźcom niekonwencjonalną wojnę o wolność Cuszimy.', 259, 75),
(12, 2, 'Mortal Kombat 1', 'Mortal Kombat 1.jpg', 'Odkryj odrodzone uniwersum Mortal Kombat™ stworzone przez Boga Ognia Liu Kanga.', 314, 140),
(13, 3, 'Dying Light 2', 'Dying Light 2.jpg', 'Od czasu wydarzeń z poprzedniej części gry minęło dwadzieścia lat. Wirus zwyciężył, a ludzkość powoli wymiera. Wcielasz się w rolę Aidena Caldwella, wędrującego pielgrzyma, który dostarcza towary i przekazuje wieści, stanowiąc łącznik między nielicznymi osadami ocaleńców na pustkowiach wyniszczonych przez wirusa zombie. Twoim prawdziwym celem jest jednak odnalezienie młodszej siostry Mii, z którą rozdzieliłeś w trakcie ucieczki przed eksperymentującym na was bezwzględnym dr. Waltzem, gdy byliście dziećmi. Przeszłość nie daje ci spokoju, więc w końcu postanawiasz się z nią zmierzyć, kiedy okazuje się, że Mia może nadal żyć i mieszkać w Villedor – ostatnim mieście na Ziemi.', 200, 60),
(14, 3, 'Fallout 76', 'Fallout 76.jpg', 'Bethesda Game Studios, nagradzani twórcy Skyrima i Fallouta 4, przedstawiają Fallouta 76. Dwadzieścia pięć lat po wybuchu bomb, w Dniu Powrotu roku 2102, razem z innymi mieszkańcami krypty – wybranymi spośród najwspanialszych i najbardziej inteligentnych obywateli kraju – wychodzisz na powierzchnię wprost w objęcia postnuklearnej Ameryki. Graj w pojedynkę lub z innymi graczami, przemierzając świat, wykonując zadania, budując i pokonując największe zagrożenia pustkowi. Odkrywaj ogromne obszary zniszczone wojną atomową w tej wieloosobowej odsłonie fabuły Fallout. Poznaj największy i najbardziej dynamiczny świat, jaki kiedykolwiek powstał w legendarnym uniwersum Fallouta.', 170, 96),
(15, 1, 'PUBG: BATTLEGROUNDS', 'PUBG BATTLEGROUNDS.jpg', 'Ląduj w punktach strategicznych, zbrój się i zbieraj wyposażenie, a następnie przetrwaj, by do końca pozostać przy życiu na rozmaitych, zróżnicowanych polach bitwy.\r\nZbierz oddział i wejdź do walki, by przeżyć emocje battle royale, jakie można znaleźć tylko w PUBG: BATTLEGROUNDS.', 0, 40),
(16, 4, 'Balatro', 'Balatro.jpg', 'Balatro to inspirowany pokerem roguelike z elementami budowania talii, którego sednem są potężne synergiczne zagrania i wielkie wygrane.\r\nŁącz dozwolone pokerowe ręce z unikalnymi jokerami, aby uzyskiwać najróżniejsze synergie i połączenia. Zdobywaj dość żetonów, by radzić sobie z podstępnymi blindami, odkrywając przy w tym w toku postępów dodatkowe, ukryte ręce i talie. Każda przewaga będzie bezcenna na drodze do bossa blindów, pobić ostateczną stawkę i wygrać.', 65, 1),
(17, 1, 'Destiny 2', 'Destiny 2.jpg', 'Wyrusz w głąb świata Destiny 2, aby odkryć tajemnice Układu Słonecznego i wziąć udział w dynamicznej pierwszoosobowej strzelance. Odblokuj potężne zdolności żywiołów i zacznij gromadzić niezwykły sprzęt, dzięki któremu dostosujesz wygląd i styl rozgrywki swojego Strażnika do własnych potrzeb. Weź udział w widowiskowej fabule Destiny 2, wymagających misjach w trybie współpracy lub w rozmaitych trybach PvP w pojedynkę lub ze znajomymi. Pobierz za darmo już dziś i zapisz swoją legendę w gwiazdach.', 0, 105),
(18, 4, 'Brotato', 'Brotato.jpg', 'Pochodzący z Ziemniaczanego Świata statek rozbija się na planecie obcych. Przeżywa jedynie Brotato – kartofel potrafiący posługiwać się 6 broniami jednocześnie. Oczekując na przybycie kumpli, którzy wybawią go z opresji, Brotato musi przeżyć w niesprzyjających okolicznościach.', 23, 1),
(19, 3, 'Warframe', 'Warframe.jpg', 'Przebudź się jako niepowstrzymany wojownik i walcz wraz z przyjaciółmi w tej fabularnej, darmowej grze akcji online. Zmierz się z walczącymi frakcjami w rozległym Systemie Origin, podążając za wskazówkami tajemniczej Lotus i rozwijaj swój Warframe, zbuduj potężny Arsenał i odkryj swój prawdziwy potencjał w ogromnych otwartych światach w tym ekscytującym doświadczeniu, które definiuje gatunek gier trzecioosobowych.', 0, 35),
(20, 4, 'Vampire Survivors', 'Vampire Survivors.jpg', 'Vampire Survivors to casualowy gotycki horror z elementami roguelite, w którym podejmowane przez Ciebie decyzje pozwolą Ci szybko nabrać rozpędu przeciwko pędzącym na Ciebie setkom potworów.\r\nVampire Survivors to czasowa gra survivalowa z minimalistycznym gameplayem i elementami roguelite.\r\nPiekło opustoszało, demony przybyły. Nie ma się gdzie schować. Jedyne, co możesz zrobić, to przetrwać najdłużej, póki nieuchronna śmierć nie zakończy Twych wysiłków. W każdej próbie zbieraj złoto, by kupować ulepszenia. Pomóż następnemu ocalałemu.', 20, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kategorie`
--

CREATE TABLE `kategorie` (
  `id` int(10) UNSIGNED NOT NULL,
  `nazwa` varchar(50) NOT NULL,
  `opis` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `kategorie`
--

INSERT INTO `kategorie` (`id`, `nazwa`, `opis`) VALUES
(1, 'Akcja', 'gra akcji'),
(2, 'Zręcznościowe', 'gra zręcznościowa'),
(3, 'RPG', 'gra z gatunku RPG'),
(4, 'Rougelike', 'tytuł podobny do gry \"Rogue\"');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `recenzje`
--

CREATE TABLE `recenzje` (
  `id` int(10) UNSIGNED NOT NULL,
  `idGry` int(10) UNSIGNED NOT NULL,
  `nick` varchar(50) NOT NULL,
  `ocena` int(11) NOT NULL,
  `tresc` text NOT NULL,
  `data` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `recenzje`
--

INSERT INTO `recenzje` (`id`, `idGry`, `nick`, `ocena`, `tresc`, `data`) VALUES
(25, 1, 'user', 5, 'Moja ulubiona gra', '2024-07-01 15:02:33'),
(26, 2, 'user', 5, 'Bardzo dopracowana produkcja', '2024-07-02 10:51:12'),
(27, 3, 'user', 5, 'Przepiękna grafika', '2024-07-01 17:20:23'),
(28, 1, 'Mateusz', 5, 'Najlepsza gra FPS', '2024-07-02 07:01:57'),
(29, 2, 'Mateusz', 3, 'Fabuła gorsza niż w Wiedźminie', '2024-07-02 11:27:20'),
(30, 3, 'Mateusz', 2, 'Za trudna', '2024-07-04 18:34:49'),
(31, 1, 'Ania', 1, 'To nie dla mnie', '2024-07-05 13:07:28'),
(32, 2, 'Ania', 1, 'Mam za słaby komputer :(', '2024-07-05 15:33:23'),
(34, 3, 'Ania', 5, 'Moja ulubiona gra <3', '2024-07-05 06:54:03'),
(35, 1, 'Mateusz', 4, 'fajna gra', '2024-07-06 07:05:13');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownicy`
--

CREATE TABLE `uzytkownicy` (
  `id` int(10) UNSIGNED NOT NULL,
  `login` varchar(50) NOT NULL,
  `haslo` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `rola` varchar(50) NOT NULL DEFAULT 'user',
  `data` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `uzytkownicy`
--

INSERT INTO `uzytkownicy` (`id`, `login`, `haslo`, `email`, `rola`, `data`) VALUES
(1, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 'user@gmail.com', 'user', '2024-07-01 23:06:26'),
(3, 'user1', '24c9e15e52afc47c225b757e7bee1f9d', 'user1@gmail.com', 'user', '2024-07-05 11:01:59'),
(5, 'Mateusz', '617f41f48d1d4f9c787aed6b0ebc6f7d', 'mateusz@gmail.com', 'user', '2024-07-06 01:32:35'),
(6, 'Ania', '5f59ac736640f43e61c6070284bf1c06', 'ania@gmail.com', 'user', '2024-07-06 01:35:04');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `gry`
--
ALTER TABLE `gry`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idKategorii` (`idKategorii`);

--
-- Indeksy dla tabeli `kategorie`
--
ALTER TABLE `kategorie`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `recenzje`
--
ALTER TABLE `recenzje`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idGry` (`idGry`);

--
-- Indeksy dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gry`
--
ALTER TABLE `gry`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `kategorie`
--
ALTER TABLE `kategorie`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `recenzje`
--
ALTER TABLE `recenzje`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `gry`
--
ALTER TABLE `gry`
  ADD CONSTRAINT `gry_ibfk_1` FOREIGN KEY (`idKategorii`) REFERENCES `kategorie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `recenzje`
--
ALTER TABLE `recenzje`
  ADD CONSTRAINT `recenzje_ibfk_1` FOREIGN KEY (`idGry`) REFERENCES `gry` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
