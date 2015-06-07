-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Dim 07 Juin 2015 à 11:53
-- Version du serveur :  5.5.38
-- Version de PHP :  5.6.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `taman`
--

-- --------------------------------------------------------

--
-- Structure de la table `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `firstname` varchar(255) COLLATE utf8_bin NOT NULL,
  `photo` varchar(255) COLLATE utf8_bin NOT NULL,
  `date_birth` date NOT NULL,
  `date_death` date DEFAULT NULL,
  `bio` text COLLATE utf8_bin NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `authors`
--

INSERT INTO `authors` (`id`, `name`, `firstname`, `photo`, `date_birth`, `date_death`, `bio`, `created_at`, `updated_at`) VALUES
(1, 'Tolkien', 'John Ronald Reuel', 'a_tolkien.jpg', '1892-01-03', '1973-09-02', 'John Ronald Reuel Tolkien est né en 1892 à Bloemfontein, en Afrique du Sud où son père Arthur avait déménagé pour raisons professionnelles. En 1895, sa mère Mabel retourna en Angleterre avec Ronald et son frère cadet Hilary. Son père meurt en 1896 et sa mère en 1904. A la King''s Edward School, il découvrit ses talents linguistiques et étudia les anciennes langues anglo-saxonnes. Il fut diplômé d''Oxford et épousa Edith Bratt juste avant de partir pour la France en juin 1916 comme sous-lieutenant des Lancashire Fusiliers. Il combattit pendant la bataille de la Somme mais fut ensuite rapatrié pour avoir contracté la fièvre des tranchées. Il consacra les années suivantes à son travail d''enseignant en tant que professeur d''anglo-saxon et se révéla bientôt comme l''un des meilleurs spécialistes de philologie du monde. En marge de sa carrière académique, il continuait d''écrire un grand cycle de mythes et légendes situées dans un monde imaginaire appelé Terres-du-Milieu, qu''il avait entâmé dès son adolescence. Il eut quatre enfants, pour qui il écrivit d''abord Bilbo le Hobbit en 1936. Celui-ci fut publié et ce fut aussitôt le succès, si bien que son éditeur réclama une suite. Tolkien travailla 14 ans à l''élaboration de cette suite, Le Seigneur des Anneaux, dont le premier tome ne parut qu''en 1954, et qui remporta un succès phénoménal dans tous les pays.\r\n\r\nTolkien prit sa retraite à Bournemouth, où sa femme mourut en 1971 et où lui même décéda le 2 septembre 1973, laissant à son fils Christopher la tâche gigantesque mais passionnante de publier, notamment sous la forme d''un récit suivi et cohérent (Le Silmarillion), la masse énorme de manuscrits qu''il avait accumulé tout au long de sa vie.', '2015-06-07 09:09:32', '0000-00-00 00:00:00'),
(2, 'Rowling', 'Joanne', 'a_rowling.jpg', '1965-07-31', NULL, 'Joanne Kathleen Rowling alias J. K. Rowling est née un 31 juillet 1965 à Chipping Sodbury dans le Gloucestershire du Sud en Angleterre. Issue d’une famille modeste, J. K. Rowling écrit depuis l''âge de six ans. Après des études à l''université d''Exeter mais aussi la Sorbonne à Paris, elle est diplômée en littérature française et en philologie ; et après un premier travail au sein de l''association Amnesty International de Londres, elle enseigne le français. \r\nLors d’un voyage en train de Manchester à Londres elle imagine l''histoire d''un jeune garçon qui découvre ses talents de magicien et part dans une école de sorciers. À tout juste 25 ans, elle perd sa mère. J. K. Rowling s’évade au Portugal pour y enseigner l''anglais et à ce qu’on dit tous les matins, avant d''aller travailler, elle rédige les aventures d''Harry Potter. \r\n\r\nEnsuite, en 1992, J. K. Rowling se marie avec un Portugais et donne la vie à une petite fille : Jessica. Mais, son mariage est un échec, elle divorce en 1995 et revient s''installer à Edimbourg, en Ecosse, où elle vit péniblement d''allocations. Jeune mère divorcée, elle se remet vraiment et fermement à écrire sur des coins de table de café mal chauffé, se concrétise alors les aventures du jeune sorcier. Elle devient dès lors la créatrice du célèbre personnage Harry Potter ! Elle écrira et publiera successivement avec un énorme talent et une écrasante réussite : Harry Potter à l''Ecole des Sorciers ; Harry Potter et la Chambre des Secrets ; Harry Potter et le Prisonnier d''Azkaban ; Harry Potter et la Coupe de Feu ; Harry Potter et l''Ordre du Phénix ; Harry Potter et le Prince de Sang-Mêlé. Elle invente tout un univers personnel, celui de Harry Potter, le Quidditch, les objets magiques, les créatures fantastiques, les principaux concepts et institutions, les sortilèges et potions, et toutes autres plantes magiques… En 2001 est aussi publié Le Quidditch à travers les âges (Quidditch through the ages) et Les Animaux fantastiques (Fantastic beasts and where to find them) en littérature jeunesse. \r\n\r\nMalgré sa célébrité, à seulement 40 ans, l''écrivain mène une vie recluse en Ecosse et accorde très peu d’interviews. En 2001, elle se marie à nouveau, avec le docteur Neil Murray, un médecin anesthésiste, au cours d’une cérémonie privée qui a lieu dans sa maison au village de Perthshire. En 2003, elle donne naissance à son deuxième enfant : David Gordon Rowling Murray, puis en 2005 à une petite fille : Mackenzie Jean Rowling Murray. Traduits en 60 langues, les cinq premiers romans d’Harry Potter se sont vendus à plus de 250 millions d''exemplaires. Les quatre premiers épisodes ont déjà été adaptés au cinéma et on remporté à l’image des ouvrages un vif succès. Le Septième tome d’Harry Potter est en cours d’écriture, patience alors nous devrions bientôt le découvrir !', '2015-06-07 09:23:19', '0000-00-00 00:00:00'),
(3, 'Adams', 'Douglas', 'a_adams.jpg', '1952-03-11', '2001-05-11', 'Douglas Adams est né en 1952 à Cambridge. Il est le fils d''un étudiant en théologie et d''une infirmière. Après de nombreux petits boulots tels que portier dans un hôpital psychiatrique, nettoyeur d''abris à poulets ou garde du corps, il entre à l''université de Cambridge et tente d''intégrer l''équipe des Footlights (en), la troupe dont sont issus les Monty Python. De cette époque, il garde des liens solides avec Graham Chapman, avec qui il travaille deux ans, et Terry Jones. Il participe à l''écriture de sketchs pour l''émission Monty Python''s Flying Circus et y fait parfois de la figuration.\r\n\r\nÀ 25 ans, Douglas propose à la BBC une série radio intitulée The Hitchhiker''s Guide to the Galaxy, dont le premier des douze épisodes est diffusé le 8 avril 1978. Cette série devient très vite culte. Parallèlement, il écrit son premier script pour la télévision pour la série Doctor Who avec l''épisode « The Pirate Planet. » Le succès du Hitchicker dope la carrière de Douglas Adams qui devient producteur sur BBC Radio 4 et "script éditor" (un métier visant à superviser planifier les scénarios d''une série) sur Doctor Who et écrira le scénario de deux épisodes, « City of Death » et « Shada ». Il collabore aussi à la série animée Docteur Snuggles.\r\n\r\nEn 1979, Douglas Adams publie le premier tome du cycle H2G2, Le Guide du routard galactique dont le nom sera changé ultérieurement — sur la demande expresse des Éditions du Routard — en Le Guide du voyageur galactique. La série comprendra en tout cinq volumes (le dernier a été publié en 1992). H2G2 est adapté sur scène (en pièce de théâtre, en comédie musicale), en série télévisée et en jeu vidéo, adaptations auxquelles Douglas Adams participe activement. H2G2 est aussi adapté en bande dessinée par DC Comics mais l''auteur ne s''intéresse guère à cette adaptation, ce qui lui vaut sans doute un succès moindre. Enfin, un film dont l''écriture a été commencée par Douglas Adams lui-même est sorti le 29 avril 2005 aux États-Unis et le 17 août en France (sous le titre H2G2 : Le Guide du voyageur galactique).\r\n\r\nDans le domaine du jeu vidéo, Douglas Adams est l''auteur d''une adaptation de H2G2 (Infocom, 1984) et d''un jeu original baptisé Bureaucracy (Infocom, 1987). Il revient aux jeux vidéo en 1999 avec Starship Titanic publié par sa propre compagnie The Digital Village. Un roman du même nom, associé à ce jeu, est écrit par Terry Jones. Douglas Adams était aussi un grand fan des jeux vidéo de vie artificielle Creatures.\r\n\r\nIl est également un grand amateur de musique (aux goûts variés qui vont de Bach aux Beatles) et guitariste à ses heures (il dispose d''ailleurs à la fin de sa vie d''une jolie collection d''une vingtaine de guitares pour gaucher). Profondément marqué par la culture rock, Douglas a voulu casser avec H2G2 le moule de la comédie classique de la BBC en créant un feuilleton inspiré des innovations rock de l''époque (l''Album blanc des Beatles par exemple). Son amour pour la musique l''a amené à se lier avec de nombreux musiciens (dont David Gilmour, le guitariste de Pink Floyd). Pour ses 42 ans, Douglas a eu un cadeau d''anniversaire particulier : il a pu jouer deux morceaux sur la célèbre scène du Earls Court à Londres avec les Pink Floyd !\r\n\r\nDouglas Adams se définissait lui-même comme un athée radical. Il a également montré beaucoup d''intérêt pour les théories de Darwin, à l''image de son ami Richard Dawkins.\r\n\r\nEn mai 2001, Douglas Adams meurt à 49 ans, d''une crise cardiaque en Californie où il venait de s''installer avec sa femme et sa fille pour collaborer à l''adaptation cinématographique du Guide du voyageur galactique dont il ne vit pas le résultat. Depuis, tous les 25 mai, est célébré le Towel Day en hommage à l''écrivain.\r\n\r\nLe 11 mars 2013, un Google Doodle, est créé en hommage à son soixante et unième anniversaire.', '2015-06-07 09:14:48', '0000-00-00 00:00:00'),
(4, 'Follet', 'Ken', 'a_follet.jpg', '1949-06-05', NULL, 'Ken Follett est né au Pays de Galles. A l’âge de dix ans sa famille déménage à Londres et Ken Follett y termine ses études secondaires. Il poursuit ensuite des études de philosophie à l’"University College".\r\n\r\nEn 1970, après la faculté et des études de journalisme. Il travaille comme reporter au "South Wales Echo" à Cardiff et à l’"Evening News" à Londres. N’étant pas devenu un reporter d’investigation reconnu, Ken Follett écrit des romans, la nuit et pendant les week-ends ; en 1974, il quitte définitivement ses emplois de journaliste et rejoint les éditions "Everest Books."\r\n\r\nSes livres se vendent relativement bien, mais c''est avec "Eye of the Needle" que Ken Follett connait le succès ; le livre publié en 1978 reçoit le "Prix Edgar" et est vendu à plus de 10 millions d’exemplaires. A cette époque il fait la connaissance d’une jeune membre du Parti Socialiste qu’il épousera en 1985 : Barbara Follett-Broer, membre du Parlement.', '2015-06-07 09:23:19', '0000-00-00 00:00:00'),
(5, 'Veronica', 'Roth', 'a_roth.jpg', '1988-08-19', NULL, 'Née le 19 août 1988 à New York mais a grandi à Chicago dans l''Illinois, elle est la fille de Barbara Ross, une peintre et elle a un frère et une soeur. Ses parents ont divorcé alors qu''elle n''avait que cinq ans. Sa mère s''est remariée avec Frank Ross. Son père est d''origine allemande et sa mère d''origine polonaise.\r\n\r\nAprès avoir obtenu son diplôme de la Barrington High School, elle intègre les rangs de Carleton College avant d''être transféré à l''Université Northwestern où elle en ressort diplômée en écriture créative.\r\n\r\nPendant ses études, elle a commencé à écrire Divergent basée sur une étude qu''elle a mené alors qu''elle était en première année de psychologie. Il s''agissait d''un travail sur une thérapie consistant à faire affronter aux patients leur phobie jusqu''à ce qu''ils la remettent en cause. Elle a ensuite transposé cette étude dans une dystopie où la société serait menée et organisée selon les différentes peurs de ses citoyens. Elle publie son premier roman à 22 ans. Le succès n''est pas immédiat. C''est le bouche à oreille qui va l''aider. De plus, Divergent et Insurgent sont cités par le New York Times dans sa liste de best-sellers. Ses romans remportent des prix de Goodreads Choice Award en 2011 et 2012.', '2015-06-07 09:23:19', '0000-00-00 00:00:00'),
(6, 'George', 'Martin', 'a_martin.jpg', '1948-09-20', NULL, 'George R. R. Martin grandit dans un environnement familial modeste avec un père docker. Il a deux sœurs cadettes, Darleen et Janet. Au lycée, il développe un intérêt pour les comics, et notamment les histoires de super-héros de Marvel4. Il écrit des fanfiction et remporte en 1965 un Alley Award, récompenses consacrées aux comics, de la meilleure fanfiction pour son histoire Powerman vs. the Blue Barrier5. En 1971, il sort diplômé en journalisme de l''université Northwestern6 mais, après être retourné dans sa ville natale, il ne peut y trouver un emploi de journaliste et passe l''été à écrire des nouvelles, se découvrant une vocation d''écrivain4.\r\n\r\nObjecteur de conscience, il accomplit au lieu de partir au Viêt Nam deux ans de volontariat dans le cadre du programme de la guerre contre la pauvreté entre 1972 et 1974. Entre 1973 et 1976, il est superviseur de tournois d''échecs, puis professeur de journalisme à la Clarke University de Dubuque de 1976 à 19786. Dans le même temps, il écrit des nouvelles de science-fiction qui lui valent une certaine reconnaissance. Il remporte en 1975 le prix Hugo du meilleur roman court pour Chanson pour Lya7. En 1975, il se marie avec Gale Burnick mais le couple divorce en 1979. La même année, Martin devient écrivain à plein temps6. En 1980, il remporte le prix Hugo, le prix Locus et le prix Nebula pour sa nouvelle Les Rois des sables. Outre ses nombreux récits de science-fiction, Martin aborde aussi le genre de l''horreur avec ses romans Riverdream (1982) et Armageddon Rag (1983).\r\n\r\n\r\nGeorge R R Martin au gala du Time 100 en 2011\r\nAu milieu des années 1980, il travaille pour la télévision comme scénariste pour les séries télévisées La Cinquième Dimension et La Belle et la Bête, participant aussi à la production de cette dernière série6. Une de ses nouvelles, Le Volcryn, est adaptée au cinéma avec le film Nightflyers en 1987. Parallèlement à ces travaux, il entame dès 1987 un travail d''éditeur avec une série nommée Wild Cards et composée de recueils de nouvelles et de romans de science-fiction mettant en œuvre des super-héros.\r\n\r\nAu début des années 1990, las de voir son imagination restreinte par les limitations imposées par le format télévisé, il revient à l''écriture en entamant le cycle de fantasy Le Trône de Fer (A Song of Ice and Fire)8,9. Le premier volume, A Game of Thrones est publié en 1996. Il est assez rapidement suivi de A Clash of Kings (1999) et A Storm of Swords (2001). Ces trois romans remportent le prix Locus du meilleur roman de fantasy et la saga connaît un succès commercial grandissant10. Martin connaît ensuite des difficultés pour écrire les volumes suivants, A Feast for Crows et A Dance with Dragons, qui sortent respectivement en 2005 et 2011 et se classent tous les deux à la première place de la liste des bestsellers du New York Times. A Dance with Dragons reçoit le prix Locus du meilleur roman de fantasy11.\r\n\r\nEn janvier 2007, la chaîne de télévision HBO acquiert les droits d''adaptation du Trône de fer dans l''intention d''en faire une série télévisée12. Le pilote est tourné à la fin 2009 et la série commence à être diffusée en avril 2011. Martin participe à sa production et écrit le scénario d''un épisode par saison.\r\n\r\nMartin vit désormais à Santa Fe, où il possède un cinéma13, et s''est marié le 15 février 2011 avec Parris McBride, sa compagne depuis les années 1980.', '2015-06-07 09:23:19', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `author_book`
--

CREATE TABLE `author_book` (
  `author_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `author_book`
--

INSERT INTO `author_book` (`author_id`, `book_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6);

-- --------------------------------------------------------

--
-- Structure de la table `books`
--

CREATE TABLE `books` (
`id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `cover` varchar(255) COLLATE utf8_bin NOT NULL,
  `alt` varchar(225) COLLATE utf8_bin NOT NULL,
  `summary` text COLLATE utf8_bin NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `genre_id` int(11) NOT NULL,
  `editor_id` int(11) NOT NULL,
  `classification_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `books`
--

INSERT INTO `books` (`id`, `title`, `cover`, `alt`, `summary`, `created_at`, `updated_at`, `genre_id`, `editor_id`, `classification_id`) VALUES
(1, 'Le Seigneur des Anneaux', 'i_sda.jpg', 'Image de la couverture du Seigneur des Anneaux.', 'Après un long prologue décrivant les Hobbits et leurs mœurs, le passé de la Terre du Milieu et un rapide résumé des aventures de Bilbon Sacquet, le Livre I s''ouvre sur le cent onzième anniversaire de ce dernier, soixante années après les événements décrits dans Le Hobbit. Au cours de la réception, Bilbon s''éclipse grâce à l''invisibilité que lui confère son anneau magique et quitte Hobbitebourg, laissant tous ses biens, anneau compris, à son neveu et héritier désigné, Frodon Sacquet. Dix-sept ans plus tard, leur vieil ami, le magicien Gandalf le Gris, révèle à Frodon que son anneau est en réalité l''Anneau unique, instrument du pouvoir de Sauron, le Seigneur Ténèbreux, qui l''a perdu jadis ; s''il devait le retrouver, son pouvoir deviendrait insurmontable. Gandalf presse Frodon de quitter la Comté, qui n''est plus sûre pour lui, et de se mettre en route pour le refuge qu''est Fondcombe, la demeure d''Elrond le Semi-elfe.', '2015-06-07 09:50:47', '2015-06-05 22:00:00', 1, 1, 2),
(2, 'Harry Potter à l''école des sorciers', 'i_hp1.jpg', 'Couverture de Harry Potter à l''école des sorciers', 'Après la mort tragique de Lily et James Potter, leur fils Harry est recueilli par sa tante Pétunia, la sœur de Lily et son oncle Vernon. Son oncle et sa tante, possédant une haine féroce envers les parents d''Harry, le maltraitent et laissent leur fils Dudley l''humilier. Harry ne sait rien sur ses parents. On lui a toujours dit qu’ils étaient morts dans un accident de voiture.\r\n\r\nLe jour de ses onze ans, un demi-géant du nom de Rubeus Hagrid vient le chercher pour l’emmener à Poudlard, une école de sorcellerie, où il est attendu pour la rentrée. Hagrid lui révèle qu’il est un sorcier comme ses parents et que ses parents ont en réalité été tués par l''un des plus grands mages noirs du monde de la sorcellerie, Voldemort (son vrai nom étant Tom Jedusor ou Riddle en version originale), surnommé Celui-Dont-On-Ne-Doit-Pas-Prononcer-le-Nom ou Vous-Savez-Qui. Voldemort a cherché à tuer Harry, mais ce dernier a survécu, en gardant une cicatrice en forme d’éclair sur le front. Harry découvre alors qu''il est un héros dans le monde des sorciers, car le sort que Voldemort lui a lancé pour le tuer s''est retourné contre lui et le règne du mage noir s''est arrêté, grâce à lui. Harry est ainsi adulé par la communauté des sorciers pour les avoir débarassé de Voldemort.', '2015-06-07 09:50:47', '2015-06-05 22:00:00', 6, 4, 1),
(3, 'Le Guide du voyageur galactique', 'i_h2g2.jpg', 'Couverture du Guide du Voyageur galactique', 'Le Guide du voyageur galactique (titre original The Hitchhiker''s Guide to the Galaxy, H2G2) est une œuvre de science-fiction humoristique multidisciplinaire imaginée par l’écrivain britannique Douglas Adams. Son nom provient de l’objet symbolique de la série : un livre électronique nommé Le Guide du voyageur galactique. Née en 1978 sous forme de feuilleton radiophonique, la série a depuis été déclinée dans de nombreux médiums au cours de différentes adaptations : romans, série télévisée, pièces de théâtre, long métrage pour le cinéma.', '2015-06-07 09:50:47', '2015-06-05 22:00:00', 4, 2, 2),
(4, 'Les piliers de la terre', 'i_pdlt.jpg', 'Couverture des Piliers de la Terre', 'L''action se situe dans l''Angleterre du xiie siècle et tourne autour de la construction d''une cathédrale par le prieur du village (fictif) de Kingsbridge1. L''intrigue couvre une période allant du naufrage de la Blanche-Nef (nom d''origine traduit en anglais par White Ship, littéralement « Navire Blanc ») en 1120, qui laissa la couronne d''Angleterre sans héritier et eut pour conséquence la guerre civile, jusqu''à l''assassinat de l''archevêque Thomas Becket dans la cathédrale de Cantorbéry en 1170. Elle mêle les tensions entre le pouvoir monarchique et l''Église, l''un et l''autre convoitant le pouvoir de l''autre, les rivalités familiales et amoureuses entre des personnages issus de couches sociales très différentes, allant du hors-la-loi au comte en passant par l''artisan en quête de travail. Le roman bénéficie manifestement de recherches approfondies effectuées préalablement par l''auteur concernant le développement de l''architecture gothique et l''histoire du royaume d’Angleterre.', '2015-06-07 09:50:47', '2015-06-05 22:00:00', 3, 2, 3),
(5, 'Games of Thrones', 'i_got.jpg', 'Couverture de Games of Thrones', 'Le Trône de fer (A Song of Ice and Fire) est une série de romans de fantasy de George R. R. Martin, dont l''écriture et la parution sont en cours. Martin a commencé à l''écrire en 1991 et le premier volume est paru en 1996. Prévue à l''origine comme une trilogie, la série compte désormais cinq volumes publiés et deux autres sont attendus (les tomes ont ensuite été redécoupés dans la traduction française).\r\n\r\nL''histoire se déroule dans un monde imaginaire où la société est de type féodal et où la magie et des créatures légendaires (telles les dragons) ont existé mais sont supposées avoir disparu. Trois intrigues principales s''y entremêlent : dans le royaume des Sept Couronnes, plusieurs maisons nobles rivalisent pour l''obtention du trône ; dans les contrées glacées situées au nord du royaume, une race de créatures supposée appartenir aux légendes se réveille ; et sur le continent oriental, Essos, la dernière héritière des Targaryen, la dynastie royale de Westeros renversée quinze ans auparavant, cherche à reconquérir le trône.', '2015-06-07 09:50:47', '2015-06-05 22:00:00', 8, 3, 3),
(6, 'Divergente', 'i_divergente.jpg', 'Couverture de Divergente', 'L''histoire a lieu dans un monde post-apocalyptique, non daté explicitement, dans la région de Chicago. Cette nouvelle société est organisée en 5 factions selon le trait de caractère dominant des personnes qui les composent : Altruiste, Audacieux, Érudit, Sincère et Fraternel et enfin un sixième groupe, qui regroupe toutes les personnes qui ont échoué aux épreuves d''initiation ou qui quittent la société, les « Sans Faction ».\r\n\r\nLe périmètre géographique est entouré de murs, gardés par les Audacieux, pour protéger les habitants d''une menace extérieure éventuelle. Les Audacieux ont également en charge le maintien de l''ordre dans la société. La faction des Altruistes est tournée vers le dévouement total, dont les principales caractéristiques sont le port de l''uniforme gris, l''absence d''ambition personnelle, l''absence de curiosité... Le renoncement aux intérêts personnels au profit de l''intérêt collectif a conduit à la nomination systématique de membres Altruistes pour constituer le gouvernement. Chaque faction vit dans un quartier de la ville qui lui est dédié, et les contacts sont rares entre les factions. Seuls les enfants, jusqu''à leur 16 ans, se croisent puisqu''ils fréquentent la même école.\r\n\r\nBeatrice Prior, âgée de 16 ans, a grandi dans une famille de la faction Altruiste. Elle a désormais l''âge de choisir sa faction. Son frère, Caleb, a tout juste 9 mois de plus, et c''est ensemble qu''ils assistent à la Cérémonie et feront leurs choix. Les enfants choisissent en général la faction dans laquelle ils ont grandi et très peu changent de faction. Ces changements, appelés transferts, s''accompagnent d''un changement de quartier et d''une coupure avec la famille d''origine. Béatrice ne s''est jamais sentie réellement à sa place dans la faction des Altruistes. Lors du test d''aptitudes qui précède la Cérémonie du Choix, Béatrice est classée «divergente» par sa préparatrice, qui lui présente cette réalité comme un danger et lui conseille fortement de la cacher à tout le monde. Béatrice choisit la faction des Audacieux et Caleb la faction des Érudits.', '2015-06-07 09:50:47', '2015-06-05 22:00:00', 5, 1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `classifications`
--

CREATE TABLE `classifications` (
`id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `classifications`
--

INSERT INTO `classifications` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Enfant', '2015-06-05 22:00:00', '2015-06-05 22:00:00'),
(2, 'Adolescent', '2015-06-05 22:00:00', '2015-06-05 22:00:00'),
(3, 'Adulte', '2015-06-05 22:00:00', '2015-06-05 22:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `editors`
--

CREATE TABLE `editors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `website` varchar(255) COLLATE utf8_bin NOT NULL,
  `logo` varchar(255) COLLATE utf8_bin NOT NULL,
  `bio` text COLLATE utf8_bin NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `editors`
--

INSERT INTO `editors` (`id`, `name`, `website`, `logo`, `bio`, `created_at`, `updated_at`) VALUES
(1, 'Hachette Livre', 'http://www.hachette.com', 'e_hachette.jpg', 'Louis Hachette étudie à l''Ecole normale supérieure. Passionné par la littérature et les encyclopédies, il décide d''acheter la librairie Brédif. Située à Paris, cette dernière prend alors le nom de son propriétaire et commence à éditer quelques ouvrages pour les jeunes écoliers. Lorsque la loi Guizot est promulguée en 1833, les commandes de manuels scolaires affluent et la librairie se développe rapidement. C''est ainsi qu''est éditée l''Introduction à l''histoire universelle de Michelet. Hachette édite également les oeuvres de quelques grands écrivains de l''époque, tels qu''Hugo ou Georges Sand. Il lance parallèlement les collections la Bibliothèque des merveilles, le Tour du monde ou encore la Bibliothèque rose qui remporte un franc succès auprès des enfants. Dès lors, la librairie connaît une croissance remarquable et devient la plus grande maison d''édition française. A la mort d''Hachette, ses gendres reprendront le flambeau.   ', '2015-06-07 09:29:40', '0000-00-00 00:00:00'),
(2, 'Eyrolles', 'http://www.eyrolles.com', 'e_eyrolles.jpg', 'Le groupe Eyrolles est un groupe français d''édition spécialisé dans les domaines du livre professionnel et technique (entreprise-management, BTP, informatique, sciences et techniques, audiovisuel et graphisme, loisirs et vie quotidienne) avec les marques Éditions Eyrolles, Éditions d''Organisation, Éditions VM et Éditions GEP.\r\n\r\nLe groupe est également diffuseur d''une soixantaine d''éditeurs (avec son service GEODIF) et possède plusieurs librairies dont la Librairie Eyrolles, à Paris et la Librairie de Provence, à Aix-en-Provence.', '2015-06-07 09:31:27', '0000-00-00 00:00:00'),
(3, 'Gallimard', 'http://www.gallimard.fr', 'e_gallimard.jpg', 'Son père, Paul Gallimard (1850-1929), est un rentier qui traduit les œuvres de John Keats pour Le Mercure de France et collectionne les livres rares, comme il le fait des tableaux impressionnistes. Il est ami avec Auguste Renoir. Il fréquente aussi les théâtres. Il a épousé Lucie Duché (1858-1942). Son grand-père est Gustave Gallimard (1821-1918), d''une famille originaire de Saint-Florentin en Bourgogne et sa grand-mère Henriette Chabrier (1829-1918), originaire d''Auvergne. Son arrière-grand-père, Sébastien Gallimard (1794-1873), avait épousé Eugénie Martineau (1799-1878), petite-fille de Louis-Simon Martineau, avocat, député de Paris aux États généraux et à la Constituante, rapporteur du comité sur la Constitution civile du clergé en 1790.\r\n\r\nGaston Gallimard étudie pendant sept ans au Lycée Condorcet, où il fait la connaissance de Roger Martin du Gard. Il arrête ses études après avoir obtenu son baccalauréat en 1898. À vingt ans, Gaston Gallimard est un dandy qui semble destiné à suivre les traces de son père. Il devient secrétaire de l’auteur dramatique Robert de Flers. Alors qu''il passe ses vacances d''été dans la villa familiale de Benerville-sur-Mer (Calvados), il rencontre Marcel Proust en 1907 ou 1908.', '2015-06-07 09:34:00', '0000-00-00 00:00:00'),
(4, 'Livre de Poche', 'http://www.livredepoche.com', 'e_poche.jpg', 'Les livres de poche dont le principe est de tenir dans une poche, avaient déjà existé. Au xviie et xviiie siècles, les livres de colportage sont des ouvrages qui par leur format et dans une certaine mesure leur conception rappellent le livre de poche actuel. Dans les années 1830, certains éditeurs de Bruxelles, pour des raisons politiques et de censure, publient de petits livres. Dès 1856, la maison d''édition Michel Lévy frères crée la « collection Michel Lévy » à un franc et en petit format. Dans les premières année du xxe siècle, la collection Nelson publie des ouvrages de petit format, cartonnés, toilés et recouverts d''une jaquette illustrée. En 1905, Fayard lance le « Livre populaire », romans populaires à 65 centimes de petit format et en 1916 les éditions Jules Tallandier commercialisent une collection concurrente, Livre de poche, des romans populaires encore moins chers, dont Hachette devra d''ailleurs racheter le nom, comme Le Livre Plastic, collection créée en 1948 par Marabout1. Dans les années 1930, la maison d''édition britannique Penguin Books publie des livres de poche et l''éditeur américain Simon & Schuster lance sur le même modèle en 1939 les Pocket Books (en)2. Mais le succès rencontré par Le Livre de poche tient à la conjonction de ce nouvel objet de consommation avec l''époque et la demande populaire et estudiantine d''un livre bon marché (en 1953, il est six fois moins cher qu''un ouvrage grand format grâce à un papier en bobines peu coûteux3, à une reliure arraphique4 d''une nouvelle machine, le perfect binder, qui fabrique un brochage résistant avec le dos du volume collé, et à une couverture glacée recouverte d''un vernis transparent qui la rend résistante5) et désacralisé, présenté sous des couvertures rappelant les affiches de cinéma, mais néanmoins véhicule d''une littérature de qualité.\r\n\r\nUne légende veut que Filipacchi ait eu l''idée de ce format en voyant un jour un soldat américain acheter un livre dans une librairie française, et le déchirer en deux pour qu’il puisse entrer dans les poches de son battle dress6.\r\n\r\nHenri Filipacchi réussit à convaincre ses amis éditeurs Albin Michel, Calmann-Lévy, Grasset et Gallimard de s''associer à son projet et de devenir ainsi les « pères fondateurs » du Livre de poche qui selon son vœu doit publier le texte intégral de grands auteurs tombés dans le domaine public7.\r\n\r\nLes libraires sont d''abord réticents face à ce « livre industriel » au prix agressif qui risque de faire chuter leur chiffre d''affaires et qui est présenté en libre service sur un tourniquet placé près de l''entrée de leur boutique, ce qui est ressenti comme une menace à leur vocation culturelle8.', '2015-06-07 09:36:54', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `genres`
--

INSERT INTO `genres` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Fantastique', '2015-06-07 09:37:44', '0000-00-00 00:00:00'),
(2, 'Horreur', '2015-06-07 09:37:53', '0000-00-00 00:00:00'),
(3, 'Historique', '2015-06-07 09:38:04', '0000-00-00 00:00:00'),
(4, 'Humour', '2015-06-07 09:38:11', '0000-00-00 00:00:00'),
(5, 'Roman', '2015-06-07 09:38:27', '0000-00-00 00:00:00'),
(6, 'Aventure', '2015-06-07 09:39:10', '0000-00-00 00:00:00'),
(7, 'Espionnage', '2015-06-07 09:39:24', '0000-00-00 00:00:00'),
(8, 'Erotique', '2015-06-07 09:39:47', '0000-00-00 00:00:00');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `authors`
--
ALTER TABLE `authors`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `books`
--
ALTER TABLE `books`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `classifications`
--
ALTER TABLE `classifications`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `editors`
--
ALTER TABLE `editors`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `genres`
--
ALTER TABLE `genres`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `books`
--
ALTER TABLE `books`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `classifications`
--
ALTER TABLE `classifications`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
