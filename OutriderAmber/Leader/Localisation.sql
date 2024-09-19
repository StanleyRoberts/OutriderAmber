-- Localisation
-- Author: stanr
-- DateCreated: 8/1/2024 7:30:36 PM
--------------------------------------------------------------


INSERT INTO LocalizedText
			(Language, Tag, Text)
VALUES

	
	('en_US',	'LOC_LEADER_SR_AMBER_NAME',  'Amber'	),
	
	('en_US',	'LOC_TRAIT_LEADER_SR_MISSING_PERSON_POSTER_NAME',	'Missing Person Posters'	),
	('en_US',	'LOC_TRAIT_LEADER_SR_MISSING_PERSON_POSTER_DESCRIPTION',	
	'Patronage of Great People [ICON_GreatPerson] with Gold [ICON_Gold] or Faith [ICON_Faith] is 50% cheaper.[NEWLINE]Domestic Trade Routes produce +2 Faith [ICON_Faith] for each passed Era.'	),


	('en_US',	'LOC_AGENDA_SR_AMBER_NAME',	'Wind Riding Knight'	),
	('en_US',	'LOC_AGENDA_SR_AMBER_DESCRIPTION',	'Respects civilisations that explore. Dislikes warring civilisations'	),
	
	('en_US',	'LOC_DIPLO_KUDO_LEADER_SR_AMBER_REASON_ANY',	'(You have high exploration)'	),
	('en_US',	'LOC_DIPLO_MODIFIER_SR_AMBER_HAPPY',	'I would like to explore the other worlds beyond. I wanna see how deep the rabbit hole goes! You''ll keep me company right, right?'	),
	
	('en_US',	'LOC_DIPLO_WARNING_LEADER_SR_AMBER_REASON_ANY',	'(You are at war)'	),
	('en_US',	'LOC_DIPLO_MODIFIER_SR_AMBER_UNHAPPY',	'Remember that I don''t go easy on anyone, even you!'	),


	('en_US',	'LOC_LOADING_INFO_LEADER_SR_AMBER',
	'Outrider Amber! Your amazing mastery of the glider has made you a three-time winner of the Gliding Championship in Mondstadt. As a rising star within the Knights of Favonius, you are always ready for any challenging tasks. Now set out to lead Mondstadt to glory!'  	),


	-- First AI Line (ANY)
	('en_US',	'LOC_DIPLO_FIRST_MEET_LEADER_SR_AMBER_ANY',
	' I am Amber, Outrider for the Knights of Favonius. Greetings strange, yet respectable, traveler' ),
	
	-- AI invitation to visit nearby City (ANY)
	('en_US',	'LOC_DIPLO_FIRST_MEET_VISIT_RECIPIENT_LEADER_SR_AMBER_ANY',
	'There''s been a large dragon sighted around Mondstadt recently. Best you get inside the city as soon as possible. But not to worry, I can keep you safe'	),
	
	-- AI accepts human invitation (ANY)
	('en_US',	'LOC_DIPLO_FIRST_MEET_NEAR_INITIATOR_POSITIVE_LEADER_SR_AMBER_ANY',
	'Agreed, getting rest is essential!'	),
	
	-- AI invitation to exchange Capital Information (ANY)
	('en_US',	'LOC_DIPLO_FIRST_MEET_NO_MANS_INFO_EXCHANGE_LEADER_SR_AMBER_ANY',
	'The view from the Mondstadt Cathedral''s clock tower is amazing! Do you want to check it out?'	),

-----------------------------------------------
-- Diplomacy Text: Greetings
-----------------------------------------------	

	-- (HAPPY)
	('en_US',	'LOC_DIPLO_GREETING_LEADER_SR_AMBER_HAPPY',
	'This breeze... so refreshing!'	),

	-- (UNHAPPY)
	('en_US',	'LOC_DIPLO_GREETING_LEADER_SR_AMBER_UNHAPPY',
	'If only the wind was a little stronger...'	),
	
-----------------------------------------------
-- Diplomacy Text: Delegation
-----------------------------------------------	

	-- AI Accepts (ANY)
	('en_US',	'LOC_DIPLO_ACCEPT_DELEGATION_FROM_HUMAN_LEADER_SR_AMBER_ANY',
	'Wow! This is delicious, you''re an amazing cook!'	),
	
	-- AI Rejects (ANY)
	('en_US',	'LOC_DIPLO_REJECT_DELEGATION_FROM_HUMAN_LEADER_SR_AMBER_ANY',
	'I''m still not sure if I can trust you just yet!'	),
	
	-- AI Requests (ANY)
	('en_US',	'LOC_DIPLO_DELEGATION_FROM_AI_LEADER_SR_AMBER_ANY',
	'Here, I have a gift for you: an exclusive, custom-made version of Baron Bunny that I sewed for you myself. Uh... don''t worry, "custom-made" means that it won''t explode!'	),
	
-----------------------------------------------
-- Diplomacy Text: Open Borders
-----------------------------------------------	

	-- AI accepts from human (ANY)	
	('en_US',	'LOC_DIPLO_ACCEPT_OPEN_BORDERS_FROM_HUMAN_LEADER_SR_AMBER_ANY',
	'Okay! Let me finish my other stuff first, and then I can help you put up posters around the city...'	),
	
	-- AI rejects from human (ANY)	
	('en_US',	'LOC_DIPLO_REJECT_OPEN_BORDERS_FROM_HUMAN_LEADER_SR_AMBER_ANY',
	'No way! Oh, ahh... I''m sorry. Probably not something I should say as a knight.'	),
	
	-- AI requests from human (ANY)	
	('en_US',	'LOC_DIPLO_OPEN_BORDERS_FROM_AI_LEADER_SR_AMBER_ANY',
	'I''m a pro at hunting, you know! How about I show you some of my skills? Or even better... how about a little competition?'	),
	
-----------------------------------------------
-- Diplomacy Text: Declare Friendship
-----------------------------------------------	

	-- AI accepts from human (ANY)
	('en_US',	'LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_HUMAN_LEADER_SR_AMBER_ANY',
	'Yeah! As fast as riding the wind!'	),
	
	-- AI rejects from human (ANY)	
	('en_US',	'LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_HUMAN_LEADER_SR_AMBER_ANY',
	'Uh, I''m just not ready to commit to that yet, sorry! Nothing to do with you of course!'	),
	
	-- AI Requests friendship from human (ANY)	
	('en_US',	'LOC_DIPLO_DECLARE_FRIEND_FROM_AI_LEADER_SR_AMBER_ANY',
	'Outrider Amber reporting for duty! Just say the word if you ever need my help!'	),
	
	-- Human accepts AI requests, AI responds (ANY)	
	('en_US',	'LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_AI_LEADER_SR_AMBER_ANY',
	'That''s more like it!'	),
	
	-- Human rejects AI requests, AI responds (ANY)	
	('en_US',	'LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_AI_LEADER_SR_AMBER_ANY',
	'Must keep... training...'	),

-----------------------------------------------
-- Diplomacy Text: Alliance
-----------------------------------------------	

	-- AI Requests an alliance from human (ANY)
	('en_US',	'LOC_DIPLO_MAKE_ALLIANCE_FROM_AI_LEADER_SR_AMBER_ANY',
	'Come with me! A responsible knight must make sure to keep you safe.'	),

-----------------------------------------------
-- Diplomacy Text: Kudos & Warnings
-----------------------------------------------	
	
	-- AI Kudos (ANY)
	('en_US',	'LOC_DIPLO_KUDO_EXIT_LEADER_SR_AMBER_ANY',
	'I joined the Knights because of my grandpa, I stayed because of Jean. And now, you''re the one that showed me the world beyond Mondstadt. I couldn''t be happier.'	),
	
	-- AI Warnings (ANY)
	('en_US',	'LOC_DIPLO_WARNING_EXIT_LEADER_SR_AMBER_ANY',
	'The skies over Mondstadt seem to have gotten smaller... or is it that my sight reaches further than ever before?'	),

-----------------------------------------------
-- Diplomacy Text: Troops Near Border
-----------------------------------------------	
	
	-- AI warns player for border troops (HAPPY)
	('en_US',	'LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_LEADER_SR_AMBER_HAPPY',
	'Are you here to hunt?'	),

	-- AI warns player for border troops (UNHAPPY)
	('en_US',	'LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_LEADER_SR_AMBER_UNHAPPY',
	'There''s something weird-looking about your military so close'	),
	
	-- AI accepts player's warning for border troops warning (HAPPY)
	('en_US',	'LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_SR_AMBER_HAPPY',
	'I won''t let you down!'	),
	
	-- AI accepts player's warning for border troops warning (UNHAPPY)
	('en_US',	'LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_SR_AMBER_UNHAPPY',
	'At the ready!'	),
	
	-- AI rejects player's warning for border troops warning (ANY) ~ DECLARES WAR
	('en_US',	'LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_AI_RESPONSE_NEGATIVE_LEADER_SR_AMBER_ANY',
	'Another target tracked down by Outrider Amber!'	),

-----------------------------------------------
-- Diplomacy Text: Settling Too Close
-----------------------------------------------	
	
	-- AI warns player for settling too close (HAPPY)
	('en_US',	'LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_LEADER_SR_AMBER_HAPPY',
	'That''s cheating!'	),
	
	-- AI warns player for settling too close (UNHAPPY)
	('en_US',	'LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_LEADER_SR_AMBER_UNHAPPY',
	'...I''m feeling uneasy all of a sudden!'	),
	
	-- Positive AI response to human request (HAPPY)
	('en_US',	'LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_SR_AMBER_HAPPY',
	'Leave it to me!'	),
	
	-- Positive AI response to human request (UNHAPPY)
	('en_US',	'LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_SR_AMBER_UNHAPPY',
	'At this speed, no one can keep up with me!'	),
	
	-- Negative AI response to human request (HAPPY)
	('en_US',	'LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_NEGATIVE_LEADER_SR_AMBER_HAPPY',
	'I''ll race you there!'	),
	
	-- Negative AI response to human request (UNHAPPY)
	('en_US',	'LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_NEGATIVE_LEADER_SR_AMBER_UNHAPPY',
	'Betcha can''t keep up with me!'	),
	
-----------------------------------------------
-- Diplomacy Text: Trade
-----------------------------------------------	

	-- AI Accepts Deal (HAPPY)
	('en_US',	'LOC_DIPLO_ACCEPT_MAKE_DEAL_FROM_AI_LEADER_SR_AMBER_HAPPY',
	'Hmm~ hmm~ hmm~ hmm~ hmm~'	),
	
	-- AI Accepts Deal (Unhappy)
	('en_US',	'LOC_DIPLO_ACCEPT_MAKE_DEAL_FROM_AI_LEADER_SR_AMBER_UNHAPPY',
	'You got me...'	),

	-- AI Rejects Deal (HAPPY)
	('en_US',	'LOC_DIPLO_REJECT_MAKE_DEAL_FROM_AI_LEADER_SR_AMBER_HAPPY',
	'Hey!'	),
	
	-- AI Rejects Deal (Unhappy)
	('en_US',	'LOC_DIPLO_REJECT_MAKE_DEAL_FROM_AI_LEADER_SR_AMBER_UNHAPPY',
	'Not this time...'	),

-----------------------------------------------
-- Diplomacy Text: Denounce
-----------------------------------------------	

	-- Human denounce, AI responds
	('en_US',	'LOC_DIPLO_DENOUNCE_FROM_HUMAN_LEADER_SR_AMBER_ANY',
	'Ouch! Meanie...'	),
	
	-- From AI
	('en_US',	'LOC_DIPLO_DENOUNCE_FROM_AI_LEADER_SR_AMBER_ANY',
	'Go go Baron Bunny! (Denounces You)'	),
	
-----------------------------------------------
-- Diplomacy Text: Declarations of War
-----------------------------------------------	

	-- Human Declares War, AI responds
	('en_US',	'LOC_DIPLO_DECLARE_WAR_FROM_HUMAN_LEADER_SR_AMBER_ANY',
	'Ugh... You''ll... pay for that!'	),
	
	-- AI Declares War
	('en_US',	'LOC_DIPLO_DECLARE_WAR_FROM_AI_LEADER_SR_AMBER_ANY',
	'No one escapes my sights!'	), 

-----------------------------------------------
-- Diplomacy Text: Make Peace
-----------------------------------------------	
	
	-- AI accepts from human
	('en_US',	'LOC_DIPLO_MAKE_PEACE_AI_ACCEPT_DEAL_LEADER_SR_AMBER_ANY',
	'Told you I''d win.'	),
	
	-- AI refuses human
	('en_US',	'LOC_DIPLO_MAKE_PEACE_AI_REFUSE_DEAL_LEADER_SR_AMBER_ANY',
	'I''ll never surrender!'	),
	
	-- AI requests from human
	('en_US',	'LOC_DIPLO_MAKE_PEACE_FROM_AI_LEADER_SR_AMBER_ANY',
	'Ugh, not so hard!'	),

-----------------------------------------------
-- Diplomacy Text: Defeat
-----------------------------------------------	
	
	-- AI is Defeated
	('en_US',	'LOC_DIPLO_DEFEAT_FROM_AI_LEADER_SR_AMBER_ANY',
	'You got me...'	),

	-- Human is Defeated (will see this in hotseat)
	('en_US',	'LOC_DIPLO_DEFEAT_FROM_HUMAN_LEADER_SR_AMBER_ANY',
	'{LOC_DIPLO_DEFEAT_FROM_AI_LEADER_SR_AMBER_ANY}'	),

--------------------------------------------------------------------
-- Leader Quote and Civilopedia Text
--------------------------------------------------------------------

	('en_US',	'LOC_PEDIA_LEADERS_PAGE_SR_AMBER_QUOTE',
	'Get ready for the Gliding Champion of Mondstadt!'  ),
	
	('en_US',	'LOC_PEDIA_LEADERS_PAGE_SR_AMBER_TITLE',
	'Amber'),
	
	('en_US',	'LOC_PEDIA_LEADERS_PAGE_SR_AMBER_SUBTITLE',
	'Outrider of the Knight of Favonius'	),
	
	('en_US',	'LOC_PEDIA_LEADERS_PAGE_LEADER_SR_AMBER_CHAPTER_CAPSULE_BODY',
	'Amber is an Outrider of the Knights of Favonius. In an age where Outriders are becoming obsolete, she continues on with her responsibilities.'),
	
	('en_US',	'LOC_PEDIA_LEADERS_PAGE_LEADER_SR_AMBER_CHAPTER_DETAILED_BODY',
	'It takes a newcomer only a few days to feel right at home with this passionate girl. Whether it''s before the Good Hunter''s signboard, the banks of Cider Lake, or the tree tops at Windrise, one can find traces of this vigilant Outrider in red anywhere. Once spotted by her, no suspicious individual can ever escape her interrogation.'	),

	('en_US',	'LOC_PEDIA_LEADERS_PAGE_LEADER_SR_AMBER_CHAPTER_HISTORY_PARA_1',
	'From a young age, Amber has always had boundless energy and a positive outlook on life. Each day, she burns with a fiery enthusiasm that sees her go about her life like a whirlwind, smashing through any obstacle that stands in her way. At times, however, her excessive energy can make her quite the troublemaker.'),

	('en_US',	'LOC_PEDIA_LEADERS_PAGE_LEADER_SR_AMBER_CHAPTER_HISTORY_PARA_2',
	'Needless to say, she was quite a handful when she was young. Her infamous deeds include accidentally dropping a bird''s nest on her grandpa''s head while trying to steal the eggs from it and setting a Dendro Slime''s leaves on fire, causing it to scurry about like a wild animal. These minor offenses gained her some notoriety among hunters'' camps.'),

	('en_US',	'LOC_PEDIA_LEADERS_PAGE_LEADER_SR_AMBER_CHAPTER_HISTORY_PARA_3',
	'Somehow, Amber was always able to escape the scene of the crime whenever she caused an incident, and not even a veteran Outrider could catch up with her. Invariably, it was Amber''s grandpa who ended up on damage control duty each time his granddaughter''s misbehavior caused yet another incident.'),
	
	('en_US',	'LOC_PEDIA_LEADERS_PAGE_LEADER_SR_AMBER_CHAPTER_HISTORY_PARA_4',
	'To Amber, her grandpa''s silent, unconditional love was like a warm breeze that wrapped around her like a blanket. She knew that it was because of this love that he accepted her and took responsibility for her deeds, and she embraced it silently.'),

	('en_US',	'LOC_PEDIA_LEADERS_PAGE_LEADER_SR_AMBER_CHAPTER_HISTORY_PARA_5',
	'But it was only on the day that her grandpa resigned from the Knights of Favonius that she finally understood the full extent of the responsibility he had borne all those years.'),

	('en_US',	'LOC_PEDIA_UNITS_PAGE_UNIT_SR_AMBER_UU_CHAPTER_HISTORY_PARA_1',  	
	'The Outriders are headed by Amber, who is also the only member. They are the archers and scouts of the Knights. They were a subdivision of the Knights established and led by Amber''s grandfather, trained in his style of archery and use of wind gliders, and were renowned for their skill. However, after his abrupt disappearance, the Outriders lost their discipline and skill while rumors milled that he had defected from the Knights of Favonius. Eventually, they were all but obsolete, with Amber remaining as the division''s sole member.'	);

