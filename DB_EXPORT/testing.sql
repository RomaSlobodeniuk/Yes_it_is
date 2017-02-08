-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Фев 08 2017 г., 17:44
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
(1, 1, 'Designing antivirus for nuclear power plants to fend off cyber-terrorism', 'post_1.jpg', 'Why sheltering automated systems against cyber-attacks in the nuclear industry is not trivial.', 'In 2008, a software virus replicating the automatic process control system (APCS) of a nuclear facility was recorded for the first time. Back then, the STUXNET worm hit the Bushehr nuclear power plant in Iran. It affected 1,368 out of 5,000 centrifuge systems at the uranium enrichment plant and upset plans for the plant’s launch. This attack demonstrated one of the downsides of automation. The more processes we delegate to a computer, the more serious the consequences in the event of a cyber attack. So what can be done to prevent exposing the safety of nuclear plants?', '2017-02-01', 'In 2008, a software virus replicating the automatic process control system (APCS) of a nuclear facility was recorded for the first time.', 'antivirus, nuclear power', 0, 0, 1),
(2, 1, 'Nightmare on Academia Street: an English horror story coming to a campus near you', 'post_2.png', 'Any politician that dangles the carrot of a graduate premium on future earnings to justify increases in student fees, interest rates on loans, or adjusting student loan repayment thresholds, should be challenged for gross mis-selling. These are the findings of a recent report by the UK Intergenerational Foundation. In this opinion piece, the author of the report warns of the possible financial implications of postgraduate student loans for the future financial health of students and their career prospects. This phenomenon, particularly acute in the UK, could soon reach other countries in Europe, should they be tempted to follow suit.', 'Throughout Europe, earning a postgraduate degree can be expensive. Even in countries where tuition is free or cheap, students may have to pay accommodation and other living costs, particularly at private institutions. Those who cannot afford to pay upfront will have to take on student loans with interest. They will thus incur debt…lots of it, even before they set foot on the career ladder.\r\n\r\nBesides, careers in science are not always financially rewarding enough for students to get out of debt easily after they complete their studies. The lessons learned from the case study of the UK, recently published by a charitable body, called The Intergenerational Foundation, London, UK, entitled The Graduate Premium: manna, myth or plain mis-selling?, should give food for thought to other European countries thinking about going down that route.\r\n\r\nIndeed, the UK Government has been selling student loan book at a huge discount to private finance institutions. Due to lack of parliamentary oversight these institutions could fairly easily raise repayment charges in the future. And where debts have already been purchased, these institutions have already changed the terms and conditions of repayment to make profits and satisfy the need of their shareholders. This, in turn, will place further pressure on to the financially impoverished–albeit intellectually enriched–postgraduate students. For many PhD students, things will get worse. Some postgraduates go on to receive a stipend by the time they start their PhDs. However, it may not cover all the costs of students and lead to further debt.', '2017-02-02', 'Ever increasing postgraduate debt without salary upside', 'NIGHTMARE, ENGLISH HORROR STORY, CAMPUS', 0, 0, 1),
(3, 1, 'UK scientists’ loss of influence to be felt at home and across Europe', 'post_3.jpg', 'Brexit keeps resounding in the many aspects that its implications may have for European research. In this opinion piece, Thomas König, Austrian social scientist, who was previously scientific advisor to former ERC president Helga Nowotny, examines the consequences of the predicted fall of influence of British scientists on the future of European science. He believes the consequences of Brexit are likely to be felt, not only in UK science itself, but also at the level of pan-European research endeavours, such as ERC-backed activities. This shows that scientists are not sheltered from the vagaries of politics when policies emanating from the popular vote forces them to defend their interests.', 'In the last days of 2016, the Swiss parliament adopted a compromise immigration law. As a result, the move consolidates various agreements of Switzerland with the European Union (EU). The law guarantees access to the European single market, on which Swiss industry and businesses heavily depend on. As a key consequence, Switzerland is now also reinstated as one of sixteen so-called ‘associated countries‘ of the EU. This means that Swiss research institutions will be eligible again to apply for funding under the current EU Framework Programme.\r\n\r\nThe Swiss law was adopted in response to the demands of a plebiscite directed “against mass immigration” in early 2014. That vote has shocked Swiss academia in a similar way that the Brexit vote to leave the EU has shaken scientists’ community in Britain. Paul Nurse, 2001 Physiology and Medicine Nobel laureate, currently director of the London, UK-based Francis Crick Institute, has been quick to call it “a poor outcome for British science”.\r\n\r\nMost of his peers seem to share his opinion. The Swiss and the British referenda unveiled a more general concern in the science community. Namely, how to resolve the obvious gap between a growing nationalistic–and isolationist–mood among a growing number of citizens and the thriving appetite for the inherently international activities of academics.', '2017-02-03', 'Do not underestimate the role of UK science in pan-European research endeavours', 'UK SCIENTISTS, European research', 0, 0, 1),
(4, 1, 'Webinar: “What can scholars do about the refugee crisis?”', 'post_4.jpg', 'The Marie Curie Alumni Association, in collaboration with EuroScientist, is hosting a round table “What can scholars do about the refugee crisis?” on February 15 2017 at 17:00h CET.', 'The devastation of Syria and countries in the region, and the resulting forced migration, is having a massive impact on its higher education system. Amongst the refugee population, there are as many as 2.000 university professionals and 100.000 university students, according to an estimate of the Institute of International Education made last year. This situation is the acute version of the broader problem of refugee science: when human rights are violated, academic freedom is always one of the first victims. But the situation is also an example of the flip side of the coin. That is, the creative ways that the scientific community has devised to tackle such tragedies.\r\n\r\nConfirmed speakers include:\r\n\r\nAllan E. Goodman, president and CEO of the Institute of International Education, a leading organization in monitoring academic freedom and in providing concrete solutions.\r\nRose Anderson, Acting director of protection services of Scholars at Risk, a leading organization in helping scholars exposed to violation of human and academic rights.\r\nEnno Aufderheide, Secretary General of the Humboldt Foundation, promoter of the recently launched Philipp Schwartz Initiative, that will allow up to 20 scientists and scholars who are under threat from political persecution to continue their research at German universities and research institutions\r\nRenata Suter, head of research of Kiron (Berlin, Istambul) a mixed online-offline system to provide world-class education to displaced students.\r\nThe round table will be moderated by Dr. Michele Catanzaro (Editorial Board, Euroscientist).\r\n\r\nThis is an online event. Updates with the access link will be sent to the registered attendees before the event.', '2017-02-04', 'MCAA/Euroscientist 2017 webinar series', 'WEBINAR, REFUGEE CRISIS', 0, 0, 1);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
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
