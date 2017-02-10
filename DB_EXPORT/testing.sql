-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Фев 10 2017 г., 17:18
-- Версия сервера: 10.1.13-MariaDB
-- Версия PHP: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `testing`
--

-- --------------------------------------------------------

--
-- Структура таблицы `bl_courses`
--

CREATE TABLE `bl_courses` (
  `id` int(10) UNSIGNED NOT NULL,
  `d_id` int(10) UNSIGNED DEFAULT NULL,
  `src_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bl_courses`
--

INSERT INTO `bl_courses` (`id`, `d_id`, `src_id`, `title`, `alias`, `description`, `price`) VALUES
(4, 1, 2, 'How to Pretend to Be an Assassin', 'assassins_1.jpg', 'Develop your sense of stealth. The steps outlines below will teach you how to be sneaky and stealthy, thereby making you a better assassin.\r\nBe able to walk quietly.\r\nBe able to move and breathe very quietly.\r\nRead up online on how to be a ninja. There are some tips on sneakiness in some of those articles that might help.\r\nDevelop your sense of hearing. Remember, always listen for audio cues and listen for anyone or anything that might give you away.', 1200500),
(5, 1, 3, 'How to Be Like Batman', 'batman_1.jpg', 'Thinking Like Batman.\r\n\r\nFight for justice. Batman is a super-hero, which means he fights against injustice in all its forms. He fights against evil. Batman has been known to take on gangsters, super-villains, human penguins, genetically-engineered monster alligators, evil clowns, and frozen men. Pretty much the basics. If you want to be like Batman, you''ve got to be good and fight for the side of justice.\r\nYou probably don''t have any Two-Faces or Penguins in your neighborhood, but that doesn''t mean there''s no injustice in your own world. Keep a close eye out for other kids being picked on, or anything unfair. Stand up for fairness and equality.\r\n\r\nDefend the innocent. \r\n\r\nBruce Wayne became Batman because his parents were killed in a robbery attempt. His parents were good, honest, hard-working people who cared about him very much. As Batman, his job is to defend those kinds of people. If you want to be like Batman, defend the innocent.\r\nTo be like Batman, you need to have a good sense of right and wrong. Look out for examples in your own life.', 1000000),
(3, 1, 1, 'How to Become a Real Life Superhero', 'superhero_1.jpg', 'The world is a dangerous place and sometimes there''s a need for superheroes. Regrettably, there''s no real way to gain super strength or to fly like in the comic books. However, that doesn''t mean that someone can''t become a real life superhero. Across the world, regular people are donning costumes and creating personas to prevent crime and help their communities.[1] Becoming a real life superhero isn''t easy, and you should consider the risks and effort that come with it. Before you can walk the streets protecting others, you need to create a persona and be physically and mentally prepared for the task.\r\n\r\nCreating Your Persona.\r\n\r\nAct with honor and integrity. As a real life superhero, you should aim to set the example for those around you, specifically the youth. You can do this by always remaining respectful, and report crimes when they occur. Being honorable means that you stand for the right thing, regardless of whether it impacts you negatively.\r\nTo prevent people from being scared of you, an outgoing and positive attitude may be best.\r\nTry to motivate others to live a better life.', 2000000),
(2, 0, 0, 'How to become enterprise star trek officer', 'enterprice_1.jpg', 'You should know these things:\r\n\r\nStar Trek uniforms.\r\nStar Trek uniforms are worn by crew members in the Star Trek science fiction franchise. While the Star Trek television series and motion pictures feature various costumes, those worn by actors portraying enlisted personnel and officers from the fictitious organization Starfleet are the ones most closely associated with Star Trek costuming. Though design varied among the successive costume designers, the uniforms costumes and insignia remained consistent within any one series or film. Costumes were re-designed to improve appearance when filmed and to improve the comfort for actors. Deliberately mixing styles of uniforms from the various series was occasionally used to enhance the sense of time travel or alternative universes.\r\n\r\nRank and insignia.\r\nThe rank system of the Star Trek universe resembles that of the United States Navy and the British Royal Navy in contrast to other science fiction franchises that use an army ranking system. In Star Trek: The Original Series (TOS) and Star Trek: The Motion Picture, ranks are indicated by sleeve stripes; in later movies based on The Original Series, ranks are indicated by pins on a shoulder strap and the left sleeve. In later television series, ranks are indicated by varying numbers of pips or bars on the individuals'' uniform collars.\r\n\r\nThe insignia are worn on the left breast by all personnel. Originally gold with a black border, but the shape differed based on the ship or base to which the person was assigned as seen in TOS episodes "Court Martial", "The Doomsday Machine", etc. In the case of the Enterprise, the insignia was a delta or arrowhead shape. A black symbol within the insignia (the same for most shapes) also indicated the wearer''s branch — a star with an elongated top point indicated command, a circle crossed by an oval (as a ringed planet) science and medical, and an angular spiral (a galaxy shape) operations and engineering. In the second pilot, the science/medical and engineering/operations symbols were reversed ("Where No Man Has Gone Before"), and there were other slight variations between the insignia as used in the pilots and in the regular series.\r\n\r\nA rank of fleet captain is mentioned in two episodes, but no insignia are shown. An August 3, 1978, memo describing the sleeve stripes for The Motion Picture does not mention the rank of lieutenant j.g., assigning its insignia to ensign, and identifies the rear admiral insignia as having one double-width stripe below one regular-width stripe.', NULL),
(1, 0, 0, 'How to STOP FUCKING AROUND and BRING YOUR DREAMS TO LIFE TODAY', 'chase_dreams.jpg', 'Can you imagine how much simpler and more AWESOME your life would be if, anytime you knew you REALLY wanted something you just made it happen that DAY?\r\n\r\nImagine if, the day you really decided you wanted to be in fucking amazing shape you started working out and eating like a shit hot fit person … and then you just kept going every day after that, whilst also cultivating the mindset of “I AM in great shape”, until practical reality caught up with you.\r\n\r\nImagine if, the day you decided you wanted to be an author, you started writing (regardless of whether you felt like it or felt like your writing was good or even felt like you knew HOW!) and then every day after that you kept writing, and then you also published and let people know about your writing …\r\n\r\nImagine if, the day you had that idea for your membership or online program, you took a deep breath, squeezed your eyes tightly shut, and ANNOUNCED that sucker and then also followed through and launched it …\r\n\r\nImagine if, the day you realised that relationship was so not right and no you could NOT ‘make it work’, you left …\r\n\r\nImagine if, the day you had that idea for that product –\r\n\r\nThat thing –\r\n\r\nThat LIFE you really wanted to live –\r\n\r\nYou got off your FINE but let’s face it somewhat scaredy-cat ass –\r\n\r\nAnd you did it.\r\n\r\nBoom.\r\n\r\nLike.\r\n\r\nThat.\r\n\r\nYou do realise, don’t you, that it’s POSSIBLE to live that way? And it’s actually EASIER as well! Oh sure, it might feel FUCKING TERRIFYING the first few times you leap before looking or preparing, but then it becomes normal … just how you ‘do’ things … automatic … and you get to a point where you don’t even think about it all, in fact you wonder with genuine curiosity WHY on earth other people spend so much time thinking –\r\n\r\nAnd wishing –\r\n\r\nAnd wondering –\r\n\r\nAnd getting ready for a readiness that never comes and therefore a LIFE they never actually ever get to live.\r\n\r\nIn fact, the more you DO think about it the more you realise how WEIRD it is that you wasted so much time like this! Why on earth would you NOT just do stuff as soon as the idea or the KNOWINGNESS of it came to you? We have one life to live, after all! One life, in which:\r\n\r\nAnything we set our minds to we can achieve.\r\nPeople are going to judge or dislike you no matter which path you choose.\r\nYOU get to make your own rules.\r\nYou have a true purpose and calling of AWESOME.\r\nYou can make shit happen SO much faster than you realise possible.\r\nMOST things can be brought to life with a click of your fingers; the time and the effort WASTED is from thinking about it and trying to figure out (aka be God) in advance all of the what ifs WHICH YOU CAN NEVER FIGURE OUT NO MATTER HOW MUCH YOU TRY.\r\n\r\nOne life which, if you’re like the very most people out there, yes even most entrepreneurs, you are currently –\r\n\r\nLetting –\r\n\r\nSlip –\r\n\r\nAway.\r\n\r\nAnd all of this busyness you claim so proudly as a badge of honour why simultaneously wondering WHEN you’re going to be free to do what you REALLY want, why it can’t just FLOW easier, why you can’t seem to just DO things, and what it is you need to ADD to yourself in order to get to where you want to go …\r\n\r\nWill mean nothing.\r\n\r\nThe truth is, it means nothing already.\r\n\r\nIt doesn’t MATTER how busy you are.\r\nIt doesn’t MATTER how much of the WRONG FUCKING STUFF you’re getting done.\r\nIt doesn’t MATTER how you used to show up.\r\n\r\n', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `bl_minicourses`
--

CREATE TABLE `bl_minicourses` (
  `id` int(10) UNSIGNED NOT NULL,
  `d_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `default_id` tinyint(1) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bl_posts`
--

CREATE TABLE `bl_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_release` tinyint(1) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `intro_text` text NOT NULL,
  `full_text` text NOT NULL,
  `date` date NOT NULL,
  `meta_desc` varchar(255) NOT NULL,
  `meta_key` varchar(255) NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL,
  `hide` tinyint(1) UNSIGNED NOT NULL,
  `no_form` tinyint(1) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bl_posts`
--

INSERT INTO `bl_posts` (`id`, `is_release`, `title`, `img`, `intro_text`, `full_text`, `date`, `meta_desc`, `meta_key`, `hits`, `hide`, `no_form`) VALUES
(1, 1, 'Designing antivirus for nuclear power plants to fend off cyber-terrorism', 'post_1.jpg', 'Why sheltering automated systems against cyber-attacks in the nuclear industry is not trivial.', 'In 2008, a software virus replicating the automatic process control system (APCS) of a nuclear facility was recorded for the first time. Back then, the STUXNET worm hit the Bushehr nuclear power plant in Iran. It affected 1,368 out of 5,000 centrifuge systems at the uranium enrichment plant and upset plans for the plant’s launch. This attack demonstrated one of the downsides of automation. The more processes we delegate to a computer, the more serious the consequences in the event of a cyber attack. So what can be done to prevent exposing the safety of nuclear plants?', '2017-02-01', 'In 2008, a software virus replicating the automatic process control system (APCS) of a nuclear facility was recorded for the first time.', 'antivirus, nuclear power', 26, 0, 1),
(2, 1, 'Nightmare on Academia Street: an English horror story coming to a campus near you', 'post_2.png', 'Any politician that dangles the carrot of a graduate premium on future earnings to justify increases in student fees, interest rates on loans, or adjusting student loan repayment thresholds, should be challenged for gross mis-selling. These are the findings of a recent report by the UK Intergenerational Foundation. In this opinion piece, the author of the report warns of the possible financial implications of postgraduate student loans for the future financial health of students and their career prospects. This phenomenon, particularly acute in the UK, could soon reach other countries in Europe, should they be tempted to follow suit.', 'Throughout Europe, earning a postgraduate degree can be expensive. Even in countries where tuition is free or cheap, students may have to pay accommodation and other living costs, particularly at private institutions. Those who cannot afford to pay upfront will have to take on student loans with interest. They will thus incur debt…lots of it, even before they set foot on the career ladder.\r\n\r\nBesides, careers in science are not always financially rewarding enough for students to get out of debt easily after they complete their studies. The lessons learned from the case study of the UK, recently published by a charitable body, called The Intergenerational Foundation, London, UK, entitled The Graduate Premium: manna, myth or plain mis-selling?, should give food for thought to other European countries thinking about going down that route.\r\n\r\nIndeed, the UK Government has been selling student loan book at a huge discount to private finance institutions. Due to lack of parliamentary oversight these institutions could fairly easily raise repayment charges in the future. And where debts have already been purchased, these institutions have already changed the terms and conditions of repayment to make profits and satisfy the need of their shareholders. This, in turn, will place further pressure on to the financially impoverished–albeit intellectually enriched–postgraduate students. For many PhD students, things will get worse. Some postgraduates go on to receive a stipend by the time they start their PhDs. However, it may not cover all the costs of students and lead to further debt.', '2017-02-02', 'Ever increasing postgraduate debt without salary upside', 'NIGHTMARE, ENGLISH HORROR STORY, CAMPUS', 32, 0, 1),
(3, 1, 'UK scientists’ loss of influence to be felt at home and across Europe', 'post_3.jpg', 'Brexit keeps resounding in the many aspects that its implications may have for European research. In this opinion piece, Thomas König, Austrian social scientist, who was previously scientific advisor to former ERC president Helga Nowotny, examines the consequences of the predicted fall of influence of British scientists on the future of European science. He believes the consequences of Brexit are likely to be felt, not only in UK science itself, but also at the level of pan-European research endeavours, such as ERC-backed activities. This shows that scientists are not sheltered from the vagaries of politics when policies emanating from the popular vote forces them to defend their interests.', 'In the last days of 2016, the Swiss parliament adopted a compromise immigration law. As a result, the move consolidates various agreements of Switzerland with the European Union (EU). The law guarantees access to the European single market, on which Swiss industry and businesses heavily depend on. As a key consequence, Switzerland is now also reinstated as one of sixteen so-called ‘associated countries‘ of the EU. This means that Swiss research institutions will be eligible again to apply for funding under the current EU Framework Programme.\r\n\r\nThe Swiss law was adopted in response to the demands of a plebiscite directed “against mass immigration” in early 2014. That vote has shocked Swiss academia in a similar way that the Brexit vote to leave the EU has shaken scientists’ community in Britain. Paul Nurse, 2001 Physiology and Medicine Nobel laureate, currently director of the London, UK-based Francis Crick Institute, has been quick to call it “a poor outcome for British science”.\r\n\r\nMost of his peers seem to share his opinion. The Swiss and the British referenda unveiled a more general concern in the science community. Namely, how to resolve the obvious gap between a growing nationalistic–and isolationist–mood among a growing number of citizens and the thriving appetite for the inherently international activities of academics.', '2017-02-03', 'Do not underestimate the role of UK science in pan-European research endeavours', 'UK SCIENTISTS, European research', 11, 0, 1),
(4, 0, 'Webinar: “What can scholars do about the refugee crisis?”', 'post_4.jpg', 'The Marie Curie Alumni Association, in collaboration with EuroScientist, is hosting a round table “What can scholars do about the refugee crisis?” on February 15 2017 at 17:00h CET.', 'The devastation of Syria and countries in the region, and the resulting forced migration, is having a massive impact on its higher education system. Amongst the refugee population, there are as many as 2.000 university professionals and 100.000 university students, according to an estimate of the Institute of International Education made last year. This situation is the acute version of the broader problem of refugee science: when human rights are violated, academic freedom is always one of the first victims. But the situation is also an example of the flip side of the coin. That is, the creative ways that the scientific community has devised to tackle such tragedies.\r\n\r\nConfirmed speakers include:\r\n\r\nAllan E. Goodman, president and CEO of the Institute of International Education, a leading organization in monitoring academic freedom and in providing concrete solutions.\r\nRose Anderson, Acting director of protection services of Scholars at Risk, a leading organization in helping scholars exposed to violation of human and academic rights.\r\nEnno Aufderheide, Secretary General of the Humboldt Foundation, promoter of the recently launched Philipp Schwartz Initiative, that will allow up to 20 scientists and scholars who are under threat from political persecution to continue their research at German universities and research institutions\r\nRenata Suter, head of research of Kiron (Berlin, Istambul) a mixed online-offline system to provide world-class education to displaced students.\r\nThe round table will be moderated by Dr. Michele Catanzaro (Editorial Board, Euroscientist).\r\n\r\nThis is an online event. Updates with the access link will be sent to the registered attendees before the event.', '2017-02-04', 'MCAA/Euroscientist 2017 webinar series', 'WEBINAR, REFUGEE CRISIS', 115, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `bl_reviews`
--

CREATE TABLE `bl_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `from_whom` varchar(255) NOT NULL,
  `video` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bl_sef`
--

CREATE TABLE `bl_sef` (
  `id` int(10) UNSIGNED NOT NULL,
  `link` varchar(255) NOT NULL,
  `link_sef` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bl_sites`
--

CREATE TABLE `bl_sites` (
  `id` int(10) UNSIGNED NOT NULL,
  `address` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `active` tinyint(1) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `post`
--

CREATE TABLE `post` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `excerpt` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `post`
--

INSERT INTO `post` (`id`, `title`, `excerpt`, `text`, `keyword`, `description`) VALUES
(1, 'Brain Cancer Patient Given Months to Live Improves With Malaria Drug', 'After her brain cancer became resistant to chemotherapy and then to targeted treatments, 26-year-old Lisa Rosendahl’s doctors gave her only a few months to live.', 'After her brain cancer became resistant to chemotherapy and then to targeted treatments, 26-year-old Lisa Rosendahl’s doctors gave her only a few months to live.\r\n\r\nBut now, a new drug combination has stabilized Rosendahl’s disease and increased both the quantity and quality of her life.\r\n\r\nBy adding anti-malaria drug chloroquine to her treatment, the combination stopped an essential process that Rosendahl’s cancer cells had been using to resist therapy, re-sensitizing her cancer to the targeted treatment that had previously stopped working. Along with Rosendahl, two other brain cancer patients were treated with the combination and both showed similar, dramatic improvement.', 'brain cancer', 'description of the first post'),
(2, 'Homeless Man Given Six Job Interviews Thanks to His Powerful Sign', 'This formerly homeless man is being blessed by strangers left and right thanks to a woman sharing his plea for help on Facebook.', 'This formerly homeless man is being blessed by strangers left and right thanks to a woman sharing his plea for help on Facebook.\r\n\r\nSherryn Jackson was walking through the city center in Melbourne, Australia when she saw Barry: an elderly homeless man holding a sign with a long message inscribed in marker.\r\nThe sign read: “Hi I’m from Perth W.A, I’ve been here three weeks looking for work. I’ve tried so hard to get work. I have my HR truck driving license and have done lots of driving. I will do anything. Even clean toilets. I am now homeless I just want to make a new life so if anybody can help it would be great. Just give me a go please.”', 'homeless man, blessed', 'description of the second post'),
(3, 'Watch Avalanche Airbag Save Snowboarder’s Life', 'This professional snowboarder was simply enjoying the slopes when the snow beneath his feet suddenly gave way into an avalanche.', 'This professional snowboarder was simply enjoying the slopes when the snow beneath his feet suddenly gave way into an avalanche.\r\nThe man had been maneuvering the back trails on Whistler Mountain in Vancouver. As he was coming over a ridge, the area around him started to slide down the hill.\r\nWATCH: Gymnast Falling on Her Head Saved By Coach With Ninja Moves\r\n\r\nThough we only hear a quick exclamation of surprise, his Go Pro camera captures every second of the heart-wrenching incident.', 'professional snowboarder', 'the description of the third post');

-- --------------------------------------------------------

--
-- Структура таблицы `publications`
--

CREATE TABLE `publications` (
  `id` tinyint(4) NOT NULL,
  `title` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `short_content` text NOT NULL,
  `content` text NOT NULL,
  `author_name` varchar(64) NOT NULL,
  `preview` varchar(255) NOT NULL,
  `type` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `publications`
--

INSERT INTO `publications` (`id`, `title`, `date`, `short_content`, `content`, `author_name`, `preview`, `type`) VALUES
(1, 'Swimming with dolphins may be banned', '2016-08-31', 'Authorities in Hawaii are proposing a ban on the popular tourist activity of swimming with dolphins off the Hawaiian coast.', 'Authorities in Hawaii are proposing a ban on the popular tourist activity of swimming with dolphins off the Hawaiian coast. The dolphins have served as a magnet for tourists over the past few decades. However, federal officials say the increasing tourism is harmful to the dolphins because they are supposed to be resting and socializing. The National Marine Fisheries Service of the National Oceanic and Atmospheric Administration proposes to prohibit swimming with, or approaching within 50 metres of, Hawaii''s spinner dolphins. That would put an end to many tour group activities, which involve sailing alongside the creatures in a boat and snorkeling with them.\r\nAnn Garrett, a spokeswoman for the National Marine Fisheries Service, said she didn''t think the ban would have a big impact on the tourist trade in Hawaii. Ms Garrett said: "We think that by identifying 50 metres as the minimum distance, there still can be a viable tourist industry in Hawaii." Tour operators disagreed with Garrett''s assessment. Tour company owner Kevin Merrill warned: "It would be the end of legitimate dolphin swimming. We couldn’t offer the people the quality interaction that they expect." Dolphins typically are most active at night and sleep and relax during the day, which is when the tourists interact with them. Garrett said the interaction disrupts the dolphins'' health and fitness.', 'David', './images/1.jpg', 'NewsPublication'),
(2, 'Colombia and FARC rebels sign peace deal', '2016-08-28', 'Colombias government signed a peace deal with the rebel group FARC. The deal ends 52 years of fighting.', 'The Colombian government and the country’s main rebel group signed a new peace deal on Thursday, hoping to salvage the accords and skip the ballot box after voters rejected the agreement in a referendum the month before.  If the ceremony had a sense of familiarity, it was because it had all been done before this year. In late September, the rebels — Revolutionary Armed Forces of Colombia, or FARC — and the government pledged a new start at a signing ceremony before world leaders in the port town of Cartagena after a half-century of war.  But on Oct. 2, only days after the signing, Colombians took to the polls for a referendum on the peace deal and knocked it down by a slim margin. In another twist, President Juan Manuel Santos was awarded the Nobel Peace Prize later that week, with the judges urging him to not let the agreement slip out of reach.  Hence, the need for a do-over.  “On signing this agreement, as president of all Colombians, I want to invite all, with an open mind and open heart, to give peace a chance,” Mr. Santos said at the ceremony, held in a theater in Bogotá, the capital.  Continue reading the main story Rodrigo Londoño, the top commander of the rebels, also spoke at the signing and asked Colombians to forgive the group for crimes during the conflict. He urged the government to enact the peace agreement swiftly.  This time, however, Mr. Santos will not be calling on voters to weigh in.', 'April', './images/2.jpg', 'NewsPublication'),
(3, 'Study shows there are two divorce seasons', '2016-08-25', 'Couples might want to put a little extra effort into their marriage just before March and August every year.', 'Couples might want to put a little extra effort into their marriage just before March and August every year. Sociologists have identified annual spikes in the number of divorces filed in these two months. Researchers from the University of Washington analysed data for divorces filed in the U.S. state of Washington between 2001 and 2015. There were almost 25,000 divorces filed in the state in 2014 alone. The scientists found that over the 14-year period of the study, divorce rates peaked in August, after the summer holidays, and in March, after the Christmas and New Year holidays. Some researchers said the divorces could be due to financial problems caused by the winter and summer holidays.\r\n\r\nResearcher Julie Brines suggested that the anti-climax felt after the build-up to holidays, and the holidays themselves, may leave couples feeling stressed and deflated. She said: "People tend to face the holidays with rising expectations, despite what disappointments they might have had in years past." She added: "[Holidays] represent periods in the year when there''s the anticipation or the opportunity for a new beginning, a new start, something different, a transition into a new period of life. It''s like an optimism cycle." Couples generally spend more time in closer proximity to each other during holidays, which may actually exacerbate tensions rather than rekindle romance.', 'George', './images/3.jpg', 'ArticlePublication'),
(4, 'What the 5,300-year-old Iceman wore', '2016-08-22', 'Scientists studied the pieces of material that were on the body of a man who died in Europe 5,300 years ago.', 'We now have a good idea of what kind of clothes people wore over 5,000 years ago. Scientists studied the pieces of material that were on the body of a man who died in Europe 5,300 years ago. His body was frozen under ice in the Alps Mountains. Archaeologists discovered his body in a glacier in 1991. They called him Otzi the Iceman. They also found bits of clothing and Otzi''s accessories and weapons. Scientists have analysed everything they found to get an idea of what early humans looked like, what they ate and what they wore. They even have an idea of what Otzi''s voice sounded like. The scientists said Otzi provided "rare and valuable information" about how humans used animals five millennia ago.\r\n\r\nThe research team said Otzi''s clothes were from several different animals. He had leggings that were made from goat leather. He wore a hat made from brown bear fur. Otzi''s leather coat was stitched together from at least four different kinds of animals. His shoes were made from different kinds of grass. Otzi''s body was also covered in 61 tattoos. Scientists say these were for pain relief for his aching joints and not for decoration. Otzi was 45 when he died, which was quite old for a man 5,000 years ago. He suffered from heart disease and had dental problems. Scientists say he did not die naturally. He was murdered. Someone killed him by firing an arrow at him, which hit him in the head.', 'Mikel', './images/4.jpg', 'ArticlePublication'),
(5, 'July was hottest month in recorded history', '2016-08-19', 'It is official – July was the hottest month on Earth since scientists started recording the planets temperatures.', 'It''s official – July was the hottest month on Earth since scientists started recording the planet''s temperatures. Data from America''s National Aeronautics and Space Administration (NASA) reveal that last month, the Earth hit its hottest temperatures since records began 136 years ago. NASA spokesman Gavin Schmidt tweeted: "July 2016 was absolutely the hottest month since the instrumental records began." It beat the previous hottest July in 2011 by 0.11 degrees Celsius, which scientists say is a substantial amount. According to NASA, July was the tenth straight month of record-breaking temperatures. It looks like the year 2016 might now become the hottest year on record.\r\n\r\nThe science website gizmodo.com stated that July could be the hottest month since prehistoric times. It said: "In all likelihood, it was the hottest month since the last interglacial period ended 125,000 years ago." Meteorology expert professor Jason Furtado said: "It''s a little alarming to me that we''re going through these records like nothing this year." The news organization Climate Central reported that the record temperatures of the past few years have been caused by the burning of fossil fuels and the occurrence of the El Niño weather phenomenon. However, Australian politician Malcolm Roberts recently rubbished climate change as a conspiracy theory and accused NASA of corrupting climate change data.', 'Sonia', './images/5.jpg', 'PhotoReportPublication');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `real_name` varchar(255) NOT NULL,
  `active` tinyint(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `real_name`, `active`) VALUES
(1, 'Roma', 'Roman', 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `bl_courses`
--
ALTER TABLE `bl_courses`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bl_minicourses`
--
ALTER TABLE `bl_minicourses`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bl_posts`
--
ALTER TABLE `bl_posts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bl_reviews`
--
ALTER TABLE `bl_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bl_sef`
--
ALTER TABLE `bl_sef`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `link` (`link`),
  ADD UNIQUE KEY `link_sef` (`link_sef`);

--
-- Индексы таблицы `bl_sites`
--
ALTER TABLE `bl_sites`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `publications`
--
ALTER TABLE `publications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `author_name` (`author_name`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `bl_courses`
--
ALTER TABLE `bl_courses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `bl_minicourses`
--
ALTER TABLE `bl_minicourses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `bl_posts`
--
ALTER TABLE `bl_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `bl_reviews`
--
ALTER TABLE `bl_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `bl_sef`
--
ALTER TABLE `bl_sef`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `bl_sites`
--
ALTER TABLE `bl_sites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `publications`
--
ALTER TABLE `publications`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
