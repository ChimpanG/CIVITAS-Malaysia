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
	
	("en_US",	"LOC_LEADER_CVS_TUN_PERAK_NAME",  "Tun Perak"	),
	
-----------------------------------------------
-- UA
-----------------------------------------------	

	("en_US",	"LOC_TRAIT_LEADER_CVS_TUN_PERAK_UA_NAME",  "Kingmaker"	),
	("en_US",	"LOC_TRAIT_LEADER_CVS_TUN_PERAK_UA_DESCRIPTION",
	"One Economic policy slot in all governments is converted into a Wildcard policy slot. Receive +1 [ICON_FAVOR] Diplomatic Favor per turn for each Legacy policy card active in your government. Gains access to the Pesilat unique unit."	),

-----------------------------------------------
-- UU
-----------------------------------------------

	("en_US",	"LOC_UNIT_CVS_TUN_PERAK_UU_NAME",	"Pesilat"	),
	("en_US",	"LOC_UNIT_CVS_TUN_PERAK_UU_DESCRIPTION",	 
	"A Melee unit unique to Malaysia. Replaces the Swordsman, but has higher [ICON_STRENGTH] Combat Strength and ignores enemy Zone of Control."),

-----------------------------------------------
-- Agenda
-----------------------------------------------	

	("en_US",	"LOC_AGENDA_CVS_TUN_PERAK_NAME",	"Bendahara"	),
	("en_US",	"LOC_AGENDA_CVS_TUN_PERAK_DESCRIPTION",	"Will never declare war on Civilizations with the same Government as him, unless they attack a City-State under his protection. Likes those with a strong economy."	),
	("en_US",	"LOC_DIPLO_KUDO_LEADER_CVS_TUN_PERAK_REASON_ANY",	"(You have a strong economy.)"	),
	("en_US",	"LOC_DIPLO_MODIFIER_CVS_TUN_PERAK_HAPPY",	"Tun Perak is happy that you have a strong economy"	),
	("en_US",	"LOC_DIPLO_WARNING_LEADER_CVS_TUN_PERAK_REASON_ANY",	"(You attacked a City-State under his protection.)"	),
	("en_US",	"LOC_DIPLO_MODIFIER_CVS_TUN_PERAK_UNHAPPY",	"Tun Perak is enraged that you attacked a City-State under his protection"	),
		
-----------------------------------------------
-- DOM
-----------------------------------------------	

	("en_US", "LOC_LOADING_INFO_LEADER_CVS_TUN_PERAK",
	"Rise, Tun Perak, legendary Bendahara of Malacca. Always looking ahead at the future of your kingdom, distant lands hold opportunities for trade, but your shrewd governance will surely bring forth economic stability. Serve your people through diplomacy and shrewd expansion knowing that your actions shall bring forth a golden age of maritime prosperity for Malacca."  	),

-----------------------------------------------
-- Diplos | First Meet
-----------------------------------------------	

	-- First AI Line (ANY)
	("en_US", "LOC_DIPLO_FIRST_MEET_LEADER_CVS_TUN_PERAK_ANY",
	"Stand easy, stranger. You are in the presence of I, Tun Perak, great Bendahara of Malacca. Treat me as your equal and you will have my respect." ),
	
	-- AI invitation to visit nearby City (ANY)
	("en_US", "LOC_DIPLO_FIRST_MEET_VISIT_RECIPIENT_LEADER_CVS_TUN_PERAK_ANY",
	"I would like to invite your merchants to visit my city nearby. I can assure you, they will be made to feel most welcome."	),
	
	-- AI accepts human invitation (ANY)
	("en_US", "LOC_DIPLO_FIRST_MEET_NEAR_INITIATOR_POSITIVE_LEADER_CVS_TUN_PERAK_ANY",
	"I would be honored."	),
	
	-- AI invitation to exchange Capital Information (ANY)
	("en_US", "LOC_DIPLO_FIRST_MEET_NO_MANS_INFO_EXCHANGE_LEADER_CVS_TUN_PERAK_ANY",
	"I must get going, but I invite you to visit our nearby city. I am certain you will find many opportunities for trade there."	),

-----------------------------------------------
-- Diplos | Greetings
-----------------------------------------------	

	-- (HAPPY)
	("en_US", "LOC_DIPLO_GREETING_LEADER_CVS_TUN_PERAK_HAPPY",
	"Yes?"	),

	-- (UNHAPPY)
	("en_US", "LOC_DIPLO_GREETING_LEADER_CVS_TUN_PERAK_UNHAPPY",
	"You again..."	),
	
-----------------------------------------------
-- Diplos | Delegation
-----------------------------------------------	

	-- AI Accepts (ANY)
	("en_US", "LOC_DIPLO_ACCEPT_DELEGATION_FROM_HUMAN_LEADER_CVS_TUN_PERAK_ANY",
	"I gladly accept. Your delegates are welcome to stay and enjoy their time in Malacca."	),
	
	-- AI Rejects (ANY)
	("en_US", "LOC_DIPLO_REJECT_DELEGATION_FROM_HUMAN_LEADER_CVS_TUN_PERAK_ANY",
	"I'm sorry, but I cannot allow that at this time."	),
	
	-- AI Requests (ANY)
	("en_US", "LOC_DIPLO_DELEGATION_FROM_AI_LEADER_CVS_TUN_PERAK_ANY",
	"My delegates are en route to your Capital. With them they carry an assortment of rare metals with which your artisans may craft into weapons and jewellry. Feel free to send your merchants to Malacca if you'd like more."	),
	
-----------------------------------------------
-- Diplos | Open Borders
-----------------------------------------------	

	-- AI accepts from human (ANY)	
	("en_US", "LOC_DIPLO_ACCEPT_OPEN_BORDERS_FROM_HUMAN_LEADER_CVS_TUN_PERAK_ANY",
	"Of course, your merchants will be welcomed with open arms."	),
	
	-- AI rejects from human (ANY)	
	("en_US", "LOC_DIPLO_REJECT_OPEN_BORDERS_FROM_HUMAN_LEADER_CVS_TUN_PERAK_ANY",
	"No. Your merchants already have access to our ports. Why would you require anything else?"	),
	
	-- AI requests from human (ANY)	
	("en_US", "LOC_DIPLO_OPEN_BORDERS_FROM_AI_LEADER_CVS_TUN_PERAK_ANY",
	"I have always envisioned a world with free trade and open borders. Will you do me the honor of opening yours to my people?"	),
	
-----------------------------------------------
-- Diplos | Declare Friendship
-----------------------------------------------	

	-- AI accepts from human (ANY)
	("en_US", "LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_HUMAN_LEADER_CVS_TUN_PERAK_ANY",
	"You honor me. I gladly accept."	),
	
	-- AI rejects from human (ANY)	
	("en_US", "LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_HUMAN_LEADER_CVS_TUN_PERAK_ANY",
	"I do not indulge in politics without principle."	),
	
	-- AI Requests friendship from human (ANY)	
	("en_US", "LOC_DIPLO_DECLARE_FRIEND_FROM_AI_LEADER_CVS_TUN_PERAK_ANY",
	"Let our nations become a symbol of friendship, peace and prosperity. What do you say?"	),
	
	-- Human accepts AI requests, AI responds (ANY)	
	("en_US", "LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_AI_LEADER_CVS_TUN_PERAK_ANY",
	"The fruits of free trade are always sweeter when shared with a friend. I humbly accept."	),
	
	-- Human rejects AI requests, AI responds (ANY)	
	("en_US", "LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_AI_LEADER_CVS_TUN_PERAK_ANY",
	"Perhaps next time."	),

-----------------------------------------------
-- Diplos | Alliance
-----------------------------------------------	

	-- AI Requests an alliance from human (ANY)
	("en_US", "LOC_DIPLO_MAKE_ALLIANCE_FROM_AI_LEADER_CVS_TUN_PERAK_ANY",
	"Together we are strong enough to banish any chaos that may befall our kingdoms. What do you say to an alliance?"	),

-----------------------------------------------
-- Diplos | Kudos & Warnings
-----------------------------------------------	
	
	-- AI Kudos (ANY)
	("en_US", "LOC_DIPLO_KUDO_EXIT_LEADER_CVS_TUN_PERAK_ANY",
	"There is no better friend to any merchant than a fair competitor. You have my respect for that."	),
	
	-- AI Warnings (ANY)
	("en_US", "LOC_DIPLO_WARNING_EXIT_LEADER_CVS_TUN_PERAK_ANY",
	"It is not the unyielding gaze of pirates I fear, but instead the honest merchant that blinks."	),

-----------------------------------------------
-- Diplos | Troops Near Border
-----------------------------------------------	
	
	-- AI warns player for border troops (HAPPY)
	("en_US", "LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_LEADER_CVS_TUN_PERAK_HAPPY",
	"I would like you to remove your troops from borders. Do not mistake this as a request."	),

	-- AI warns player for border troops (UNHAPPY)
	("en_US", "LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_LEADER_CVS_TUN_PERAK_UNHAPPY",
	"If your troops along my borders are supposed to intimidate me, you're very much mistaken."	),
	
	-- AI accepts player's warning for border troops warning (HAPPY)
	("en_US", "LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_CVS_TUN_PERAK_HAPPY",
	"I will remove them at once. Apologies for the confusion."	),
	
	-- AI accepts player's warning for border troops warning (UNHAPPY)
	("en_US", "LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_CVS_TUN_PERAK_UNHAPPY",
	"They will move of their own accord, not yours."	),
	
	-- AI rejects player's warning for border troops warning (ANY) ~ DECLARES WAR
	("en_US", "LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_AI_RESPONSE_NEGATIVE_LEADER_CVS_TUN_PERAK_ANY",
	"It is but a shame that it has come to this, but you are a danger to my people and must be removed from power."	),

-----------------------------------------------
-- Diplos | Settling Too Close
-----------------------------------------------	
	
	-- AI warns player for settling too close (HAPPY)
	("en_US", "LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_LEADER_CVS_TUN_PERAK_HAPPY",
	"As a friend, I'd ask you to keep your distance from my cities. This is Malaccan territory."	),
	
	-- AI warns player for settling too close (UNHAPPY)
	("en_US", "LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_LEADER_CVS_TUN_PERAK_UNHAPPY",
	"It would serve you well not to encroach upon my territory any further."	),
	
	-- Positive AI response to human request (HAPPY)
	("en_US", "LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_CVS_TUN_PERAK_HAPPY",
	"My sincere apologies, friend. I shall send my settlers elsewhere next time."	),
	
	-- Positive AI response to human request (UNHAPPY)
	("en_US", "LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_CVS_TUN_PERAK_UNHAPPY",
	"I suppose I can look elsewhere next time. I wouldn't want your backward traditions influencing my people anyway."	),
	
	-- Negative AI response to human request (HAPPY)
	("en_US", "LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_NEGATIVE_LEADER_CVS_TUN_PERAK_HAPPY",
	"Listen friend, if you wanted that land then you should have settled it yourself."	),
	
	-- Negative AI response to human request (UNHAPPY)
	("en_US", "LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_NEGATIVE_LEADER_CVS_TUN_PERAK_UNHAPPY",
	"Make me."	),
	
-----------------------------------------------
-- Diplos | Trade
-----------------------------------------------	

	-- AI Accepts Deal (HAPPY)
	("en_US", "LOC_DIPLO_ACCEPT_MAKE_DEAL_FROM_AI_LEADER_CVS_TUN_PERAK_HAPPY",
	"When we are all prosperous, trade with each other becomes more valuable to us both. I accept your offer."	),
	
	-- AI Accepts Deal (Unhappy)
	("en_US", "LOC_DIPLO_ACCEPT_MAKE_DEAL_FROM_AI_LEADER_CVS_TUN_PERAK_UNHAPPY",
	"I'm not quite convinced this deal is in my best interests, but I hope you remember this next time."	),

	-- AI Rejects Deal (HAPPY)
	("en_US", "LOC_DIPLO_REJECT_MAKE_DEAL_FROM_AI_LEADER_CVS_TUN_PERAK_HAPPY",
	"Now, now. You can do better than that."	),
	
	-- AI Rejects Deal (Unhappy)
	("en_US", "LOC_DIPLO_REJECT_MAKE_DEAL_FROM_AI_LEADER_CVS_TUN_PERAK_UNHAPPY",
	"I know a bad deal when I see one. The answer is no."	),

-----------------------------------------------
-- Diplos | Denounce
-----------------------------------------------	

	-- From Human
	("en_US", "LOC_DIPLO_DENOUNCE_FROM_HUMAN_LEADER_CVS_TUN_PERAK_ANY",
	"My patience with you is wearing thin."	),
	
	-- From AI
	("en_US", "LOC_DIPLO_DENOUNCE_FROM_AI_LEADER_CVS_TUN_PERAK_ANY",
	"I will personally see that you pay for attacking City-States under our protection. (Denounces You)"	),
	
-----------------------------------------------
-- Diplos | Declarations of War
-----------------------------------------------	

	-- Human Declares War
	("en_US", "LOC_DIPLO_DECLARE_WAR_FROM_HUMAN_LEADER_CVS_TUN_PERAK_ANY",
	"Let your armies come. I shall meet them at the gates."	),
	
	-- AI Declares War
	("en_US", "LOC_DIPLO_DECLARE_WAR_FROM_AI_LEADER_CVS_TUN_PERAK_ANY",
	"For too long these lands have suffered your rule. Your kingdom will be brought to order."	), 

-----------------------------------------------
-- Diplos | Make Peace
-----------------------------------------------	
	
	-- AI accepts from human
	("en_US", "LOC_DIPLO_MAKE_PEACE_AI_ACCEPT_DEAL_LEADER_CVS_TUN_PERAK_ANY",
	"We have both proven our worth, and lost much in doing so. It is time for us to end the bloodshed."	),
	
	-- AI refuses human
	("en_US", "LOC_DIPLO_MAKE_PEACE_AI_REFUSE_DEAL_LEADER_CVS_TUN_PERAK_ANY",
	"This war is far from over."	),
	
	-- AI requests from human
	("en_US", "LOC_DIPLO_MAKE_PEACE_FROM_AI_LEADER_CVS_TUN_PERAK_ANY",
	"This war has borned a chaos that will tear us both asunder should we not allow it to cease. Let us lay down arms."	),

-----------------------------------------------
-- Diplos | Defeat
-----------------------------------------------	
	
	-- AI is Defeated
	("en_US", "LOC_DIPLO_DEFEAT_FROM_AI_LEADER_CVS_TUN_PERAK_ANY",
	"Malacca is lost. I know when I'm defeated, but at least I shall be remembered. Can you say the same?"	),

	-- Human is Defeated (will see this in hotseat)
	("en_US", "LOC_DIPLO_DEFEAT_FROM_HUMAN_LEADER_CVS_TUN_PERAK_ANY",
	"Malacca is lost. I know when I'm defeated, but at least I shall be remembered. Can you say the same?"	),

--------------------------------------------------------------------
-- Quote and Pedia
--------------------------------------------------------------------

	("en_US", "LOC_PEDIA_LEADERS_PAGE_CVS_TUN_PERAK_QUOTE",
	"One can trade goods for coin, but only an ideology can bring riches beyond imagination."  ),
	
	("en_US", "LOC_PEDIA_LEADERS_PAGE_CVS_TUN_PERAK_TITLE",
	"Tun Perak"),
	
	("en_US", "LOC_PEDIA_LEADERS_PAGE_CVS_TUN_PERAK_SUBTITLE",
	"Bendahara"	),
	
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_TUN_PERAK_CHAPTER_CAPSULE_BODY",
	"Tun Perak is no stranger to the virtues of capitalism."),
	
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_TUN_PERAK_CHAPTER_DETAILED_BODY",
	"Tun Perak places as much value on diplomacy as he does economy. With an economic policy card slot being replaced with a wildcard slot in any government, Tun Perak has enough versatility to support several victory types. He should look to establish the Malaysian unique harbor district, the Dermaga, quickly so that he can use its culture output to unlock key government civics. Establishing government plaza buildings will allow him to use the legacy policy cards in his wildcard slot to earn additional diplomatic favor. He is unlikely to find friends in those competing for city-state allegiance or perhaps those that find themselves a target of his political maneuvering in the world congress, but his unique unit, the Pesilat should safely see him through any conflict that may arise."	),

	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_TUN_PERAK_CHAPTER_HISTORY_PARA_1",
	"Bendara Seri Paduka Raja Tun Perak, or better known as Tun Perak, was the fifth and most famous bendahara, a Malay rank similar to a prime minister, during the Sultanate of Malacca. Early in his life, Perak was a soldier-statesman for Malaccan rulers. In 1445, he led the Malaccan army to victory by defeating Siamese invaders on two separate occasions, and as a result, he was made bendahara."),
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_TUN_PERAK_CHAPTER_HISTORY_PARA_2",
	"Serving as advisor to under the rule of four different Sultans due to his efficiency and wisdom, Tun Perak was the effective ruler in not only his protection of Alam Melayu, but was instrumental in colonising over a dozen states in the Strait of Malacca. A man of strong leadership qualities, Tun Perak's expansion helped elevate Malacca, strengthening its position politically, socially and economically where he established diplomatic relations with giant goverments like China, the Ottoman Empire, Saudi Arabia and Rome among others. The diplomatic relations practiced by Tun Perak's governance soon attracted yet more traders around the world to establish relations with Malacca."),
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_TUN_PERAK_CHAPTER_HISTORY_PARA_3",
	"Perak, who had become a renouned kingmaker during his lifespan, died in 1498 and was replaced by his younger brother Tun Perpatih Putih. Tun Perak's death is widely regarded to be the start of the Malaccan Sultanate's decline."),

	("en_US", "LOC_PEDIA_UNITS_PAGE_UNIT_CVS_TUN_PERAK_UU_CHAPTER_HISTORY_PARA_1",
	"The Silat tradition is mostly oral, having been passed down almost entirely by word of mouth. In the absence of written records, much of its history is known only through myth and archaeological evidence. The earliest weapons found in the Nusantara were sharpened stone tools such as axes."),
	("en_US", "LOC_PEDIA_UNITS_PAGE_UNIT_CVS_TUN_PERAK_UU_CHAPTER_HISTORY_PARA_2",
	"Some Silat practitioners, known as Pesilat, became nomadic boat-dwellers in Southeast Asia and south-eastern China and were described as fierce warriors armed with an arsenal of weapons who would attack passing boats around Singapore, Sumatra, Java, and the South China Sea. Local rulers like Iskandar Shah of Malacca, relied on the local boat-people to maintain control of their territory, and they played a key role in the region's power struggles even into the colonial era.");
	




	
	
	