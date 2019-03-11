/*
	Localisation
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT OR REPLACE INTO LocalizedText (Language, Tag, Text)
VALUES

-----------------------------------------------
-- Leader
-----------------------------------------------	
	
	("en_US",	"LOC_LEADER_CVS_ISKANDAR_NAME",  "Iskandar"	),
	
-----------------------------------------------
-- UA
-----------------------------------------------	

	("en_US",	"LOC_TRAIT_LEADER_CVS_ISKANDAR_UA_NAME",  "Genealogy of Kings"	),
	("en_US",	"LOC_TRAIT_LEADER_CVS_ISKANDAR_UA_DESCRIPTION",
	"Receive the [ICON_GREATPERSON] Great Person points from specialty districts constructed by allied City-States. Cities settled within 3 tiles of coast start with additional [ICON_CITIZEN] Population."	),

-----------------------------------------------
-- Agenda
-----------------------------------------------	

	("en_US",	"LOC_AGENDA_CVS_ISKANDAR_NAME",	"Bersatu Teguh"	),
	("en_US",	"LOC_AGENDA_CVS_ISKANDAR_DESCRIPTION",	"Likes Civilizations with high population and many Great People. Dislikes those those with a weak economy."	),
	("en_US",	"LOC_DIPLO_KUDO_LEADER_CVS_ISKANDAR_REASON_ANY",	"(You have high population cities and many great people.)"	),
	("en_US",	"LOC_DIPLO_MODIFIER_CVS_ISKANDAR_HAPPY",	"Iskandar admires a populace filled with great people"	),
	("en_US",	"LOC_DIPLO_WARNING_LEADER_CVS_ISKANDAR_REASON_ANY",	"(You have a weak economy.)"	),
	("en_US",	"LOC_DIPLO_MODIFIER_CVS_ISKANDAR_UNHAPPY",	"Iskandar is disappointed in your weak economy"	),
		
-----------------------------------------------
-- DOM
-----------------------------------------------	

	("en_US",	"LOC_LOADING_INFO_LEADER_CVS_ISKANDAR",
	"The merchants of Malacca await your call, legendary Iskandar, usurped shah of Temasek. Cultivate relationships with the City-States that surround you, and in time the greatest merchants, scholars and artisans shall surely flock to the golden peninsula. Set a precedent in controlling maritime trade, expand Malacca's power and influence, and she will write a legend of her own."  	),

-----------------------------------------------
-- Diplos | First Meet
-----------------------------------------------	

	-- First AI Line (ANY)
	("en_US",	"LOC_DIPLO_FIRST_MEET_LEADER_CVS_ISKANDAR_ANY",
	"Greetings traveller! I am Iskandar, first Sultan of Malacca. Tell me, what shores do you call your own?" ),
	
	-- AI invitation to visit nearby City (ANY)
	("en_US",	"LOC_DIPLO_FIRST_MEET_VISIT_RECIPIENT_LEADER_CVS_ISKANDAR_ANY",
	"You must be tired from your travels. If you wish, you may visit our city nearby. Take a rest, enjoy the hospitality, and share with us stories of your culture. What do you say?"	),
	
	-- AI accepts human invitation (ANY)
	("en_US",	"LOC_DIPLO_FIRST_MEET_NEAR_INITIATOR_POSITIVE_LEADER_CVS_ISKANDAR_ANY",
	"Excellent!"	),
	
	-- AI invitation to exchange Capital Information (ANY)
	("en_US",	"LOC_DIPLO_FIRST_MEET_NO_MANS_INFO_EXCHANGE_LEADER_CVS_ISKANDAR_ANY",
	"Let us exchange information on our capital cities and perhaps we can map out a prosperous trade route?"	),

-----------------------------------------------
-- Diplos | Greetings
-----------------------------------------------	

	-- (HAPPY)
	("en_US", "LOC_DIPLO_GREETING_LEADER_CVS_ISKANDAR_HAPPY",
	"It's good to see you again, friend. What can I do for you?"	),

	-- (UNHAPPY)
	("en_US","LOC_DIPLO_GREETING_LEADER_CVS_ISKANDAR_UNHAPPY",
	"I'm listening."	),
	
-----------------------------------------------
-- Diplos | Delegation
-----------------------------------------------	

	-- AI Accepts (ANY)
	("en_US","LOC_DIPLO_ACCEPT_DELEGATION_FROM_HUMAN_LEADER_CVS_ISKANDAR_ANY",
	"I gladly accept. Your delegates are welcome to stay and enjoy their time in Malacca."	),
	
	-- AI Rejects (ANY)
	("en_US","LOC_DIPLO_REJECT_DELEGATION_FROM_HUMAN_LEADER_CVS_ISKANDAR_ANY",
	"I'm sorry, but I cannot allow that at this time."	),
	
	-- AI Requests (ANY)
	("en_US","LOC_DIPLO_DELEGATION_FROM_AI_LEADER_CVS_ISKANDAR_ANY",
	"I have sent a delegation with mangosteen, congee and the finest kuih dishes to express my gratitude for your kindness. I hope you enjoy them."	),
	
-----------------------------------------------
-- Diplos | Open Borders
-----------------------------------------------	

	-- AI accepts from human (ANY)	
	("en_US","LOC_DIPLO_ACCEPT_OPEN_BORDERS_FROM_HUMAN_LEADER_CVS_ISKANDAR_ANY",
	"Of course, please enjoy your time here."	),
	
	-- AI rejects from human (ANY)	
	("en_US","LOC_DIPLO_REJECT_OPEN_BORDERS_FROM_HUMAN_LEADER_CVS_ISKANDAR_ANY",
	"I'm sorry, but I cannot allow that at this time."	),
	
	-- AI requests from human (ANY)	
	("en_US","LOC_DIPLO_OPEN_BORDERS_FROM_AI_LEADER_CVS_ISKANDAR_ANY",
	"What will become of trade if we cannot travel with free passage? I humbly request that you open your borders. What say you?"	),
	
-----------------------------------------------
-- Diplos | Declare Friendship
-----------------------------------------------	

	-- AI accepts from human (ANY)
	("en_US","LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_HUMAN_LEADER_CVS_ISKANDAR_ANY",
	"The pleasure would be all mine."	),
	
	-- AI rejects from human (ANY)	
	("en_US","LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_HUMAN_LEADER_CVS_ISKANDAR_ANY",
	"I see no friend in you."	),
	
	-- AI Requests friendship from human (ANY)	
	("en_US","LOC_DIPLO_DECLARE_FRIEND_FROM_AI_LEADER_CVS_ISKANDAR_ANY",
	"You are a gifted ruler who knows the value of good relations. I formally extend to you my hand in friendship."	),
	
	-- Human accepts AI requests, AI responds (ANY)	
	("en_US","LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_AI_LEADER_CVS_ISKANDAR_ANY",
	"What a fine day! May this become the start of something wonderful."	),
	
	-- Human rejects AI requests, AI responds (ANY)	
	("en_US","LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_AI_LEADER_CVS_ISKANDAR_ANY",
	"That is a pity."	),

-----------------------------------------------
-- Diplos | Alliance
-----------------------------------------------	

	-- AI Requests an alliance from human (ANY)
	("en_US","LOC_DIPLO_MAKE_ALLIANCE_FROM_AI_LEADER_CVS_ISKANDAR_ANY",
	"There are dangers in this world that will destroy us if we allow them. Let us form an alliance as a deterrent to those with opportunistic tendencies."	),

-----------------------------------------------
-- Diplos | Kudos & Warnings
-----------------------------------------------	
	
	-- AI Kudos (ANY)
	("en_US","LOC_DIPLO_KUDO_EXIT_LEADER_CVS_ISKANDAR_ANY",
	"Your enthusiasm for the brightest minds this world has to offer is an example to the world."	),
	
	-- AI Warnings (ANY)
	("en_US","LOC_DIPLO_WARNING_EXIT_LEADER_CVS_ISKANDAR_ANY",
	"Doomed is the nation that ignores its economy. Do you not care for the prosperity of your people?"	),

-----------------------------------------------
-- Diplos | Troops Near Border
-----------------------------------------------	
	
	-- AI warns player for border troops (HAPPY)
	("en_US","LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_LEADER_CVS_ISKANDAR_HAPPY",
	"I say this with good will; please remove your troops from my borders or it will be seen as an act of aggression."	),

	-- AI warns player for border troops (UNHAPPY)
	("en_US","LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_LEADER_CVS_ISKANDAR_UNHAPPY",
	"My my, what a magnificent display of force. Of course, if it is war you are looking for, know that our power extends beyond the ports of Malacca."	),
	
	-- AI accepts player's warning for border troops warning (HAPPY)
	("en_US","LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_CVS_ISKANDAR_HAPPY",
	"I do apologise for startling you. I can assure you that this was a routine military exercise, not an act of aggression."	),
	
	-- AI accepts player's warning for border troops warning (UNHAPPY)
	("en_US","LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_CVS_ISKANDAR_UNHAPPY",
	"Very well. This will not be forgotten."	),
	
	-- AI rejects player's warning for border troops warning (ANY) ~ DECLARES WAR
	("en_US","LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_AI_RESPONSE_NEGATIVE_LEADER_CVS_ISKANDAR_ANY",
	"In defending the interests of the weak and persecuted anywhere in this world, I needn't achknowledge political borders. Your tyranny must end."	),

-----------------------------------------------
-- Diplos | Settling Too Close
-----------------------------------------------	
	
	-- AI warns player for settling too close (HAPPY)
	("en_US","LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_LEADER_CVS_ISKANDAR_HAPPY",
	"It would seem that I have a new neighbor. However, I feel borders may become blurred should we continue to encroach on each other's territory. Please do not let this happen again."	),
	
	-- AI warns player for settling too close (UNHAPPY)
	("en_US","LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_LEADER_CVS_ISKANDAR_UNHAPPY",
	"I have noticed you that you settled in Malaccan territory. Wars have been started over less. Let this be a warning."	),
	
	-- Positive AI response to human request (HAPPY)
	("en_US","LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_CVS_ISKANDAR_HAPPY",
	"My sincere apologies, we didn't mean to intrude. We shall look elsewhere next time."	),
	
	-- Positive AI response to human request (UNHAPPY)
	("en_US","LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_CVS_ISKANDAR_UNHAPPY",
	"I didn't realise you were the apparent owner of this land. Very well, but you may want mark out your territory next time."	),
	
	-- Negative AI response to human request (HAPPY)
	("en_US","LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_NEGATIVE_LEADER_CVS_ISKANDAR_HAPPY",
	"Don't be silly, friend. There is enough room for the both of us."	),
	
	-- Negative AI response to human request (UNHAPPY)
	("en_US","LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_NEGATIVE_LEADER_CVS_ISKANDAR_UNHAPPY",
	"I shall settle cities where I please. If you have a problem with that, I'll meet your army at the gates."	),
	
-----------------------------------------------
-- Diplos | Trade
-----------------------------------------------	

	-- AI Accepts Deal (HAPPY)
	("en_US","LOC_DIPLO_ACCEPT_MAKE_DEAL_FROM_AI_LEADER_CVS_ISKANDAR_HAPPY",
	"Excellent!"	),
	
	-- AI Accepts Deal (Unhappy)
	("en_US","LOC_DIPLO_ACCEPT_MAKE_DEAL_FROM_AI_LEADER_CVS_ISKANDAR_UNHAPPY",
	"This shall suffice, for now."	),

	-- AI Rejects Deal (HAPPY)
	("en_US","LOC_DIPLO_REJECT_MAKE_DEAL_FROM_AI_LEADER_CVS_ISKANDAR_HAPPY",
	"I'd appreciate a better deal than this."	),
	
	-- AI Rejects Deal (Unhappy)
	("en_US","LOC_DIPLO_REJECT_MAKE_DEAL_FROM_AI_LEADER_CVS_ISKANDAR_UNHAPPY",
	"Do you presume me to be a fool?"	),

-----------------------------------------------
-- Diplos | Denounce
-----------------------------------------------	

	-- Human denounce, AI responds
	("en_US","LOC_DIPLO_DENOUNCE_FROM_HUMAN_LEADER_CVS_ISKANDAR_ANY",
	"Words often fall on deaf ears when they are spoken by those who deserve no respect. Who are you again?"	),
	
	-- From AI
	("en_US","LOC_DIPLO_DENOUNCE_FROM_AI_LEADER_CVS_ISKANDAR_ANY",
	"A strong economy today is how we prepare for tomorrow. I see no future for your kingdom. (Denounces You)"	),
	
-----------------------------------------------
-- Diplos | Declarations of War
-----------------------------------------------	

	-- Human Declares War, AI responds
	("en_US","LOC_DIPLO_DECLARE_WAR_FROM_HUMAN_LEADER_CVS_ISKANDAR_ANY",
	"I applaud your bravery, but your intelligence leaves much to be desired."	),
	
	-- AI Declares War
	("en_US","LOC_DIPLO_DECLARE_WAR_FROM_AI_LEADER_CVS_ISKANDAR_ANY",
	"I take no pleasure in this decision, but you have forced my hand. Your tyranny ends here."	), 

-----------------------------------------------
-- Diplos | Make Peace
-----------------------------------------------	
	
	-- AI accepts from human
	("en_US","LOC_DIPLO_MAKE_PEACE_AI_ACCEPT_DEAL_LEADER_CVS_ISKANDAR_ANY",
	"I agree, a peace treaty seems to be in both our interests."	),
	
	-- AI refuses human
	("en_US","LOC_DIPLO_MAKE_PEACE_AI_REFUSE_DEAL_LEADER_CVS_ISKANDAR_ANY",
	"No, you will learn nothing should this war end now."	),
	
	-- AI requests from human
	("en_US","LOC_DIPLO_MAKE_PEACE_FROM_AI_LEADER_CVS_ISKANDAR_ANY",
	"The time has come to lay down arms. Let there be peace between us."	),

-----------------------------------------------
-- Diplos | Defeat
-----------------------------------------------	
	
	-- AI is Defeated
	("en_US","LOC_DIPLO_DEFEAT_FROM_AI_LEADER_CVS_ISKANDAR_ANY",
	"Today you may have glory, but tomorrow you will come sooner than you think."	),

	-- Human is Defeated (will see this in hotseat)
	("en_US","LOC_DIPLO_DEFEAT_FROM_HUMAN_LEADER_CVS_ISKANDAR_ANY",
	"Today you may have glory, but tomorrow you will come sooner than you think."	),

--------------------------------------------------------------------
-- Quote and Pedia
--------------------------------------------------------------------

	("en_US","LOC_PEDIA_LEADERS_PAGE_CVS_ISKANDAR_QUOTE",
	"Whoever is lord of Malacca shall have his hands on the throat of Venice."  ),
	
	("en_US","LOC_PEDIA_LEADERS_PAGE_CVS_ISKANDAR_TITLE",
	"Iskandar"),
	
	("en_US","LOC_PEDIA_LEADERS_PAGE_CVS_ISKANDAR_SUBTITLE",
	"Paremeswara, First Sultan of Malacca"	),
	
	("en_US","LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_ISKANDAR_CHAPTER_CAPSULE_BODY",
	"A wealth of Great People will lead to grand cities under Iskandar."),
	
	("en_US","LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_ISKANDAR_CHAPTER_DETAILED_BODY",
	"Taking advantage of Malaysia's ability to obtain additional envoys upon completing quests from City-States allied to others, Iskandar will never find himself short of a few great people with which to grow his cities. Receiving additional population and border growth through great people, Iskandar may find himself suited to any victory he so chooses but is likely to capitalise on the Rumah's housing bonuses to support populous cities and ideally set himself up for a cultural or scientific victory."	),

	("en_US","LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_ISKANDAR_CHAPTER_HISTORY_PARA_1",
	"The Sultanate of Malacca is a Malay dynasty that ruled the great entrepôt of Malacca, its dependencies, and heralded the golden age for Alam Melayu. The founder and first ruler of Malacca was a Sumatran prince who fled his native Palembang under Javanese attack and established himself briefly in Temasek (modern Singapore) before settling in Malacca."),
	("en_US","LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_ISKANDAR_CHAPTER_HISTORY_PARA_2",
	"Often referred to as Parameswara in Hindu and Tamil legend, Iskandar Shah, who took the title of Sultan in 1414, established early tributary relations with Ming China and benefitted greatly from the kingdom’s newly aroused interested in trade with the West. By the 1430’s, Malacca had become the preeminent commercial emporium in Southeast Asia, resorted to alike by local traders, Indian, Arab and Persian merchants, and Chinese trade missions."),
	("en_US","LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_ISKANDAR_CHAPTER_HISTORY_PARA_3",
	"The original site of Malacca had no cultivation of any sort except for fish and jungle produce. However, located on a fine natural harbour strategically positioned for maritime trade, within decades after its foundation Malacca grew into an international trading port and came to dominate the main sea routes between India and China through the strait that now bears its name."),
	("en_US","LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_ISKANDAR_CHAPTER_HISTORY_PARA_4",
	"The prosperity of Malacca as an international port changed the entire Maritime Southeast Asia and its success admired by kings and traders as far away as Europe. Malacca used its wealth to assert political dominance over many City-States in Southeast Asia, rivalling that of great European merchant empires. It was famously said by Portuguese writer and trader, Tome Pires, that ‘whoever is lord of Malacca shall have his hands on the throat of Venice’.");
	




	
	
	