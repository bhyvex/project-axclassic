#Scholar_Private_Nylaen_Kel'Ther NPC ID 337270#
sub EVENT_SAY {
my $Turn = quest::saylink("Turn", 1);
my $Greed = quest::saylink("Greed", 1);
my $protect = quest::saylink("Protect", 1);
my $Snowfoot = quest::saylink("Snowfoot", 1);
my $Scrolls = quest::saylink("Scrolls", 1);
my $Revover = quest::saylink("Recover", 1);
my $Defend = quest::saylink("Defend", 1);
    if ($ulevel <= 20 && $text=~/Hail/i){
    quest::say("I am sorry but I have nothing you could possibly do. Check with the others in the camp as they may have work that someone of your experiance might be able to help the Norrath Keepers with.");
    }
    if ($ulevel <= 30 && $ulevel >= 21 && $text=~/Hail/i){
    quest::say("Welcome young traveler, I have a project that someone of your bravery may be able to help me with.");
	quest::say("I must ask you to go within the great volcano. We need to obtain a rather potent poison from the lavaspinners there in order to create an antidote. Yes, we have learned the Dark Reign intends to poison us using the lava spiders' venom somehow. Be careful and swift. We are not sure when they may execute their plans!");
    quest::say("collect 4 Boiling Lavaspinner Bloodsand return them to me.");	
    }
	if ($ulevel <= 40 && $ulevel >= 31 && $text=~/Hail/i){
    quest::say("Welcome traveler, I have a project that someone of your skill may be able to help me with.");
	quest::say("In the caverns leading to the dragon's lair in Tirranun's Delve are the deadly lava goblins. We have been amassing their teeth, oddly enough, as our archers have been using them for arrowheads to drive back any advancing Dark Reign. They have proven extremely effective. Please gather more so you may aid our efforts!");
	quest::say("I assk for you to bring to me four of the Delvian Goblin Tooth. For this our rangers will thank you and you shall be rewarded.");
	}
	if ($ulevel <= 50 && $ulevel >= 41 && $text=~/Hail/i){
    quest::say("I am sorry but I have nothing you could possibly do. Check with the others in the camp as they may have work that someone of your experiance might be able to help the Norrath Keepers with.");
    }
    if ($ulevel <= 60 && $ulevel >= 51 && $text=~/Hail/i){
    quest::say("Welcome traveler, I have a few quests you may be able to help me with. $Turn the Tides of the Sands, $Protect the Waters nad $Greed of the Goblins.");
	}
    if ($ulevel >= 61 && $text=~/Hail/i){
   quest::say("Welcome traveler, I have a few quests you may be able to help me with. The Sacred $Scrolls, $Snowfoot Revenge, $Defend the Kirin Contact nad $Recover the Lost Map.");
    }
    if ($ulevel <= 60 && $ulevel >= 51 && $text=~/Turn/i){
    quest::say("The goblins of the Stillmoon Temple are still battling with us, but we believe we may have learned a way to turn the tides of their anger. It is not a pleasant task and may seem counterproductive at first, but do heed my words. Their blood seems to be made partly of earth and with that blood, we can create an enchanted potion and perhaps make them see the error of their ways. Go loot 4 Sandy Goblin Blood so we can once and for all end the danger to the Keepers."); 
    }
    if ($ulevel <= 60 && $ulevel >= 51 && $text=~/Greed/i){
    quest::say("We all have the opportunity to rise to greatness with Norrath's Keepers and our honorable allies across the lands.");
	quest::say("As sad as it makes us all, it would seem the Dark Reign has made a bargain with the goblins of the Stillmoon Temple. Whatever the deal that was made, the goblins have been extremely hostile toward Norrath's Keepers. Their numbers are so great that many of our beloved kin have been slaughtered. We need to lessen the threat of the goblins to us all and I believe you are perfect for this task, so please kill 4 Stillmoon laborers.");
    quest::say("bring me 4 of the Cracked Goblin Skulls as proof to recieve your reward.");
    }
    if ($ulevel <= 60 && $ulevel >= 51 && $text=~/Protect/i){
    quest::say("Some of the goblins of the Stillmoon Temple are rumored to have in thier possesion some purified nest water, not the normal stuff but some very specific water that has properties we do not fully understand.");
    quest::say("Bring me 4 of these special waters so we can study them further.");	
    }
   if ($ulevel >= 61 && $text=~/Snowfoot/i){
   quest::say("It appears as though there are Snowfoot goblins in the Ascent that do not discern between the Norrathians of good and ill will. We have heard that the Snowfoot wanted to punish the creatures that killed the kirin of the mountains. It seems clear that the Dark Reign are responsible for that, or perhaps it was us when we aimed to protect our source. In any case, the do plan an attack on any mortal and our very enclave here. You must go and kill 10 Snowfoot goblins.");
   quest::SAY("Loot ten Rough Patch of Goblin Skin and combine them in this bag. Return to me with the finished bag and I shall reward you.");
   quest::summonitem(120128);
   }
   if ($ulevel >= 61 && $text=~/Scrolls/i){
   quest::say("The disruption in the Thundercrest Isles has left many artifacts of sacred knowledge to become strewn about and in disarray. This knowledge is valuable and could be terrifying and dangerous if it fell into the wrong hands. Go to the isles and loot 4 Ancient Scroll of Wisdom so we may protect them from the Dark Reign."); 
   }
   if ($ulevel >= 61 && $text=~/Recover/i){
   quest::say("As much as most of us respect and revere all life, we have come up against a problem that does tax our beliefs and we need assistance. The pumas of the temple are not to blame for their anger toward us. Norrathians are to blame for disturbing the sacred lands of the dragons and stirring hatred of us. We must accept this error and deal with the consequences. The pumas have killed one of our cartographers in Stillmoon Temple who was sent to create maps to guide you in tasks there. Sadly, those maps have not been found and may be used against the sacred creatures of the temple, as well as the Keepers.");
   quest::say("Collect the eight pieces of the map and combine them in this, Return to me with the intact map to claim your reward.");
   quest::summonitem(120169);
   }
   if ($ulevel >= 61 && $text=~/Defend/i){
   quest::say("We'd thought we made headway against the Dark Reign, but it would appear that the source that helped us stay a step ahead is endangered. One of our scouts was able to find a sympathetic ear with a kirin in the mountain pass known as The Ascent. The agreement was that this kirin would warn us of any of the Dark Reign's advances and plans. We were told that some kirin students learned of the arrangement and have been attempting to kill our ally. As beautiful as the creatures are, some are dark and deadly in their intentions. We believe if we protect our source, the other kirin may decide to abandon their anger for our ally.");
   quest::say("Bring to me 4 of the tails of the cursed Kirin.");
   }
}
sub EVENT_ITEM {
if ($ulevel == 21 && plugin::check_handin(\%itemcount, 52492 => 4)) {
    quest::say("Good. Good! The Lavaspinner Blood, I will turn these samples over to our Alchemists for further study.");
    quest::ding();
    quest::exp(126100);
    quest::givecash(0,0,0,30);
   }
   elsif ($ulevel == 22 && plugin::check_handin(\%itemcount, 52492 => 4)) {
    quest::say("Good. Good! The Lavaspinner Blood, I will turn these samples over to our Alchemists for further study.");
    quest::ding();
    quest::exp(138700);
    quest::givecash(0,0,0,30);
   }
   elsif ($ulevel == 23 && plugin::check_handin(\%itemcount, 52492 => 4)) {
    quest::say("Good. Good! The Lavaspinner Blood, I will turn these samples over to our Alchemists for further study.");
    quest::ding();
    quest::exp(151900);
    quest::givecash(0,0,0,30);
   }
   elsif ($ulevel == 24 && plugin::check_handin(\%itemcount, 52492 => 4)) {
    quest::say("Good. Good! The Lavaspinner Blood, I will turn these samples over to our Alchemists for further study.");
    quest::ding();
    quest::exp(165700);
    quest::givecash(0,0,0,30);
   }
   elsif ($ulevel == 25 && plugin::check_handin(\%itemcount, 52492 => 4)) {
    quest::say("Good. Good! The Lavaspinner Blood, I will turn these samples over to our Alchemists for further study.");
    quest::ding();
    quest::exp(180100);
    quest::givecash(0,0,0,30);
   }
   elsif ($ulevel == 26 && plugin::check_handin(\%itemcount, 52492 => 4)) {
    quest::say("Good. Good! The Lavaspinner Blood, I will turn these samples over to our Alchemists for further study.");
    quest::ding();
    quest::exp(195100);
    quest::givecash(0,0,0,30);
   }
   elsif ($ulevel == 27 && plugin::check_handin(\%itemcount, 52492 => 4)) {
    quest::say("Good. Good! The Lavaspinner Blood, I will turn these samples over to our Alchemists for further study.");
    quest::ding();
    quest::exp(2107000);
    quest::givecash(0,0,0,30);
   }
   elsif ($ulevel == 28 && plugin::check_handin(\%itemcount, 52492 => 4)) {
    quest::say("Good. Good! The Lavaspinner Blood, I will turn these samples over to our Alchemists for further study.");
    quest::ding();
    quest::exp(226900);
    quest::givecash(0,0,0,30);
   }
   elsif ($ulevel == 29 && plugin::check_handin(\%itemcount, 52492 => 4)) {
    quest::say("Good. Good! The Lavaspinner Blood, I will turn these samples over to our Alchemists for further study.");
    quest::ding();
    quest::exp(243700);
    quest::givecash(0,0,0,30);
   }
   elsif ($ulevel == 30 && plugin::check_handin(\%itemcount, 52492 => 4)) {
    quest::say("Good. Good! The Lavaspinner Blood, I will turn these samples over to our Alchemists for further study.");
    quest::ding();
    quest::exp(531100);
    quest::givecash(0,0,0,30);
   }
elsif ($ulevel == 31 && plugin::check_handin(\%itemcount, 52493 => 4)) {
    quest::say("Excelent! The Norrath Keepers thank you for your continued support!.");
    quest::ding();
    quest::exp(307010);
    quest::givecash(0,0,0,30);
   }
   elsif ($ulevel == 32 && plugin::check_handin(\%itemcount, 52493 => 4)) {
    quest::say("Excelent! The Norrath Keepers thank you for your continued support!.");
    quest::ding();
    quest::exp(327470);
    quest::givecash(0,0,0,30);
   }
   elsif ($ulevel == 33 && plugin::check_handin(\%itemcount, 52493 => 4)) {
    quest::say("Excelent! The Norrath Keepers thank you for your continued support!.");
    quest::ding();
    quest::exp(348590);
    quest::givecash(0,0,0,30);
   }
   elsif ($ulevel == 34 && plugin::check_handin(\%itemcount, 52493 => 4)) {
    quest::say("Excelent! The Norrath Keepers thank you for your continued support!.");
    quest::ding();
    quest::exp(370370);
    quest::givecash(0,0,0,30);
   }
   elsif ($ulevel == 35 && plugin::check_handin(\%itemcount, 52493 => 4)) {
    quest::say("Excelent! The Norrath Keepers thank you for your continued support!.");
    quest::ding();
    quest::exp(479640);
    quest::givecash(0,0,0,30);
   }
   elsif ($ulevel == 36 && plugin::check_handin(\%itemcount, 52493 => 4)) {
    quest::say("Excelent! The Norrath Keepers thank you for your continued support!.");
    quest::ding();
    quest::exp(453720);
    quest::givecash(0,0,0,30);
   }
   elsif ($ulevel == 37 && plugin::check_handin(\%itemcount, 52493 => 4)) {
    quest::say("Excelent! The Norrath Keepers thank you for your continued support!.");
    quest::ding();
    quest::exp(479640);
    quest::givecash(0,0,0,30);
   }
   elsif ($ulevel == 38 && plugin::check_handin(\%itemcount, 52493 => 4)) {
    quest::say("Excelent! The Norrath Keepers thank you for your continued support!.");
    quest::ding();
    quest::exp(506280);
    quest::givecash(0,0,0,30);
   }
   elsif ($ulevel == 39 && plugin::check_handin(\%itemcount, 52493 => 4)) {
    quest::say("Excelent! The Norrath Keepers thank you for your continued support!.");
    quest::ding();
    quest::exp(533640);
    quest::givecash(0,0,0,30);
   }
   elsif ($ulevel == 40 && plugin::check_handin(\%itemcount, 52493 => 4)) {
    quest::say("Excelent! The Norrath Keepers thank you for your continued support!.");
    quest::ding();
    quest::exp(1201720);
    quest::givecash(0,0,0,30);
   }
elsif ($ulevel == 51 && plugin::check_handin(\%itemcount, 52496 => 4)) {
    quest::say("Ah! The water is said to have special healing properties. Our Alchemists will study these samples and see if the rumor is true.");
    quest::ding();
    quest::exp(2397650);
    quest::givecash(0,0,0,60);
   }
   elsif ($ulevel == 52 && plugin::check_handin(\%itemcount, 52496 => 4)) {
    quest::say("Ah! The water is said to have special healing properties. Our Alchemists will study these samples and see if the rumor is true.");
    quest::ding();
    quest::exp(2599630);
    quest::givecash(0,0,0,60);
   }
   elsif ($ulevel == 53 && plugin::check_handin(\%itemcount, 52496 => 4)) {
    quest::say("Ah! The water is said to have special healing properties. Our Alchemists will study these samples and see if the rumor is true.");
    quest::ding();
    quest::exp(2811810);
    quest::givecash(0,0,0,60);
   }
   elsif ($ulevel == 54 && plugin::check_handin(\%itemcount, 52496 => 4)) {
    quest::say("Ah! The water is said to have special healing properties. Our Alchemists will study these samples and see if the rumor is true.");
    quest::ding();
    quest::exp(4609070);
    quest::givecash(0,0,0,60);
   }
   elsif ($ulevel == 55 && plugin::check_handin(\%itemcount, 52496 => 4)) {
    quest::say("Ah! The water is said to have special healing properties. Our Alchemists will study these samples and see if the rumor is true.");
    quest::ding();
    quest::exp(3356840);
    quest::givecash(0,0,0,60);
   }
   elsif ($ulevel == 56 && plugin::check_handin(\%itemcount, 52496 => 4)) {
    quest::say("Ah! The water is said to have special healing properties. Our Alchemists will study these samples and see if the rumor is true.");
    quest::ding();
    quest::exp(3604360);
    quest::givecash(0,0,0,60);
   }
   elsif ($ulevel == 57 && plugin::check_handin(\%itemcount, 52496 => 4)) {
    quest::say("Ah! The water is said to have special healing properties. Our Alchemists will study these samples and see if the rumor is true.");
    quest::ding();
    quest::exp(38631000);
    quest::givecash(0,0,0,60);
   }
   elsif ($ulevel == 58 && plugin::check_handin(\%itemcount, 52496 => 4)) {
    quest::say("Ah! The water is said to have special healing properties. Our Alchemists will study these samples and see if the rumor is true.");
    quest::ding();
    quest::exp(4133300);
    quest::givecash(0,0,0,60);
   }
   elsif ($ulevel == 59 && plugin::check_handin(\%itemcount, 52496 => 4)) {
    quest::say("Ah! The water is said to have special healing properties. Our Alchemists will study these samples and see if the rumor is true.");
    quest::ding();
    quest::exp(6468990);
    quest::givecash(0,0,0,60);
   }
   elsif ($ulevel == 60 && plugin::check_handin(\%itemcount, 52496 => 4)) {
    quest::say("Ah! The water is said to have special healing properties. Our Alchemists will study these samples and see if the rumor is true.");
    quest::ding();
    quest::exp(4815250);
    quest::givecash(0,0,0,60);
   }
elsif ($ulevel == 51 && plugin::check_handin(\%itemcount, 54497 => 4)) {
    quest::say("Excelent work $name, that should show the goblins we mean business.");
    quest::ding();
    quest::exp(2397650);
    quest::givecash(0,0,0,60);
   }
   elsif ($ulevel == 52 && plugin::check_handin(\%itemcount, 54497 => 4)) {
    quest::say("Excelent work $name, that should show the goblins we mean business.");
    quest::ding();
    quest::exp(2599630);
    quest::givecash(0,0,0,60);
   }
   elsif ($ulevel == 53 && plugin::check_handin(\%itemcount, 54497 => 4)) {
    quest::say("Excelent work $name, that should show the goblins we mean business.");
    quest::ding();
    quest::exp(2811810);
    quest::givecash(0,0,0,60);
   }
   elsif ($ulevel == 54 && plugin::check_handin(\%itemcount, 54497 => 4)) {
    quest::say("Excelent work $name, that should show the goblins we mean business.");
    quest::ding();
    quest::exp(4609070);
    quest::givecash(0,0,0,60);
   }
   elsif ($ulevel == 55 && plugin::check_handin(\%itemcount, 54497 => 4)) {
    quest::say("Excelent work $name, that should show the goblins we mean business.");
    quest::ding();
    quest::exp(3356840);
    quest::givecash(0,0,0,60);
   }
   elsif ($ulevel == 56 && plugin::check_handin(\%itemcount, 54497 => 4)) {
    quest::say("Excelent work $name, that should show the goblins we mean business.");
    quest::ding();
    quest::exp(3604360);
    quest::givecash(0,0,0,60);
   }
   elsif ($ulevel == 57 && plugin::check_handin(\%itemcount, 54497 => 4)) {
    quest::say("Excelent work $name, that should show the goblins we mean business.");
    quest::ding();
    quest::exp(3863100);
    quest::givecash(0,0,0,60);
   }
   elsif ($ulevel == 58 && plugin::check_handin(\%itemcount, 54497 => 4)) {
    quest::say("Excelent work $name, that should show the goblins we mean business.");
    quest::ding();
    quest::exp(4133300);
    quest::givecash(0,0,0,60);
   }
   elsif ($ulevel == 59 && plugin::check_handin(\%itemcount, 54497 => 4)) {
    quest::say("Excelent work $name, that should show the goblins we mean business.");
    quest::ding();
    quest::exp(6468990);
    quest::givecash(0,0,0,60);
   }
   elsif ($ulevel == 60 && plugin::check_handin(\%itemcount, 54497 => 4)) {
    quest::say("Excelent work $name, that should show the goblins we mean business.");
    quest::ding();
    quest::exp(4815250);
    quest::givecash(0,0,0,60);
   }
elsif ($ulevel == 51 && plugin::check_handin(\%itemcount, 52494 => 4)) {
    quest::say("Excelent work $name, I will hand these over to our alchemists so they can begin creating the enchanted potion.");
    quest::ding();
    quest::exp(2397650);
    quest::givecash(0,0,0,66);
   }
   elsif ($ulevel == 52 && plugin::check_handin(\%itemcount, 52494 => 4)) {
    quest::say("Excelent work $name, I will hand these over to our alchemists so they can begin creating the enchanted potion.");
    quest::ding();
    quest::exp(2599630);
    quest::givecash(0,0,0,66);
   }
   elsif ($ulevel == 53 && plugin::check_handin(\%itemcount, 52494 => 4)) {
    quest::say("Excelent work $name, I will hand these over to our alchemists so they can begin creating the enchanted potion.");
    quest::ding();
    quest::exp(2811810);
    quest::givecash(0,0,0,66);
   }
   elsif ($ulevel == 54 && plugin::check_handin(\%itemcount, 52494 => 4)) {
    quest::say("Excelent work $name, I will hand these over to our alchemists so they can begin creating the enchanted potion.");
    quest::ding();
    quest::exp(4609070);
    quest::givecash(0,0,0,66);
   }
   elsif ($ulevel == 55 && plugin::check_handin(\%itemcount, 52494 => 4)) {
    quest::say("Excelent work $name, I will hand these over to our alchemists so they can begin creating the enchanted potion.");
    quest::ding();
    quest::exp(3356840);
    quest::givecash(0,0,0,66);
   }
   elsif ($ulevel == 56 && plugin::check_handin(\%itemcount, 52494 => 4)) {
    quest::say("Excelent work $name, I will hand these over to our alchemists so they can begin creating the enchanted potion.");
    quest::ding();
    quest::exp(3604360);
    quest::givecash(0,0,0,66);
   }
   elsif ($ulevel == 57 && plugin::check_handin(\%itemcount, 52494 => 4)) {
    quest::say("Excelent work $name, I will hand these over to our alchemists so they can begin creating the enchanted potion.");
    quest::ding();
    quest::exp(38631000);
    quest::givecash(0,0,0,66);
   }
   elsif ($ulevel == 58 && plugin::check_handin(\%itemcount, 52494 => 4)) {
    quest::say("Excelent work $name, I will hand these over to our alchemists so they can begin creating the enchanted potion.");
    quest::ding();
    quest::exp(4133300);
    quest::givecash(0,0,0,66);
   }
   elsif ($ulevel == 59 && plugin::check_handin(\%itemcount, 52494 => 4)) {
    quest::say("Excelent work $name, I will hand these over to our alchemists so they can begin creating the enchanted potion.");
    quest::ding();
    quest::exp(6468990);
    quest::givecash(0,0,0,66);
   }
   elsif ($ulevel == 60 && plugin::check_handin(\%itemcount, 52494 => 4)) {
    quest::say("Excelent work $name, I will hand these over to our alchemists so they can begin creating the enchanted potion.");
    quest::ding();
    quest::exp(4815250);
    quest::givecash(0,0,0,66);
   }
elsif ($ulevel == 61 && plugin::check_handin(\%itemcount, 52497 => 4)) {
    quest::say("Well done $name, I will keep the scrolls safe. As promised , here is your reward.");
    quest::ding();
    quest::exp(2855560);
    quest::givecash(0,0,0,60);
   } 
   elsif ($ulevel == 62 && plugin::check_handin(\%itemcount, 52497 => 4)) {
    quest::say("Well done $name, I will keep the scrolls safe. As promised , here is your reward.");
    quest::ding();
    quest::exp(2950220);
    quest::givecash(0,0,0,60);
   } 
   elsif ($ulevel == 63 && plugin::check_handin(\%itemcount, 52497 => 4)) {
    quest::say("Well done $name, I will keep the scrolls safe. As promised , here is your reward.");
    quest::ding();
    quest::exp(30429400);
    quest::givecash(0,0,0,60);
   } 
   elsif ($ulevel == 64 && plugin::check_handin(\%itemcount, 52497 => 4)) {
    quest::say("Well done $name, I will keep the scrolls safe. As promised , here is your reward.");
    quest::ding();
    quest::exp(3145220);
    quest::givecash(0,0,0,60);
   } 
   elsif ($ulevel == 65 && plugin::check_handin(\%itemcount, 52497 => 4)) {
    quest::say("Well done $name, I will keep the scrolls safe. As promised , here is your reward.");
    quest::ding();
    quest::exp(3245060);
    quest::givecash(0,0,0,60);
   } 
elsif ($ulevel == 61 && plugin::check_handin(\%itemcount, 120129 =>1 )) {
   quest::ding();
   quest::exp(2855560);
   quest::say("These are exactly what we needed. Thank you $name.");
   quest::givecash(0,0,0,60);
   }
   elsif ($ulevel == 62 && plugin::check_handin(\%itemcount, 120129 =>1 )) {
   quest::ding();
   quest::exp(2950220);
   quest::say("These are exactly what we needed. Thank you $name.");
   quest::givecash(0,0,0,60);
   }
   elsif ($ulevel == 63 && plugin::check_handin(\%itemcount, 120129 =>1 )) {
   quest::ding();
   quest::exp(3042940);
   quest::say("These are exactly what we needed. Thank you $name.");
   quest::givecash(0,0,0,60);
   }
   elsif ($ulevel == 64 && plugin::check_handin(\%itemcount, 120129 =>1 )) {
   quest::ding();
   quest::exp(3145220);
   quest::say("These are exactly what we needed. Thank you $name.");
   quest::givecash(0,0,0,60);
   }
   elsif ($ulevel == 65 && plugin::check_handin(\%itemcount, 120129 =>1 )) {
   quest::ding();
   quest::exp(3245060);
   quest::say("These are exactly what we needed. Thank you $name.");
   quest::givecash(0,0,0,60);
   }
elsif ($ulevel == 61 && plugin::check_handin(\%itemcount, 120170 =>1 )) {
   quest::ding();
   quest::exp(2855560);
   quest::say("The coplete map! Excelent work $name, he is your reward as promised.");
   quest::givecash(0,0,0,60);
   }
   elsif ($ulevel == 62 && plugin::check_handin(\%itemcount, 120170 =>1 )) {
   quest::ding();
   quest::exp(2950220);
   quest::say("The coplete map! Excelent work $name, he is your reward as promised.");
   quest::givecash(0,0,0,60);
   }
   elsif ($ulevel == 63 && plugin::check_handin(\%itemcount, 120170 =>1 )) {
   quest::ding();
   quest::exp(3042940);
   quest::say("The coplete map! Excelent work $name, he is your reward as promised.");
   quest::givecash(0,0,0,60);
   }
   elsif ($ulevel == 64 && plugin::check_handin(\%itemcount, 120170 =>1 )) {
   quest::ding();
   quest::exp(3145220);
   quest::say("The coplete map! Excelent work $name, he is your reward as promised.");
   quest::givecash(0,0,0,60);
   }
   elsif ($ulevel == 65 && plugin::check_handin(\%itemcount, 120170 =>1 )) {
   quest::ding();
   quest::exp(3245060);
   quest::say("The coplete map! Excelent work $name, he is your reward as promised.");
   quest::givecash(0,0,0,60);
   }
elsif ($ulevel == 61 && plugin::check_handin(\%itemcount, 120171 => 4)) {
    quest::say("Hopfully that will show the rest of the Kirin that the Norrath Keepers will not stand for evil and they will think twice before siding with the Dark Reign.");
    quest::ding();
    quest::exp(2855560);
    quest::givecash(0,0,0,60);
   }
   elsif ($ulevel == 62 && plugin::check_handin(\%itemcount, 120171 => 4)) {
    quest::say("Hopfully that will show the rest of the Kirin that the Norrath Keepers will not stand for evil and they will think twice before siding with the Dark Reign.");
    quest::ding();
    quest::exp(2950220);
    quest::givecash(0,0,0,60);
   }
   elsif ($ulevel == 63 && plugin::check_handin(\%itemcount, 120171 => 4)) {
    quest::say("Hopfully that will show the rest of the Kirin that the Norrath Keepers will not stand for evil and they will think twice before siding with the Dark Reign.");
    quest::ding();
    quest::exp(3042940);
    quest::givecash(0,0,0,60);
   }
   elsif ($ulevel == 64 && plugin::check_handin(\%itemcount, 120171 => 4)) {
    quest::say("Hopfully that will show the rest of the Kirin that the Norrath Keepers will not stand for evil and they will think twice before siding with the Dark Reign.");
    quest::ding();
    quest::exp(3145220);
    quest::givecash(0,0,0,60);
   }
   elsif ($ulevel == 65 && plugin::check_handin(\%itemcount, 120171 => 4)) {
    quest::say("Hopfully that will show the rest of the Kirin that the Norrath Keepers will not stand for evil and they will think twice before siding with the Dark Reign.");
    quest::ding();
    quest::exp(3245060);
    quest::givecash(0,0,0,60);
   }
elsif ($ulevel == 61 && plugin::check_handin(\%itemcount, 120129 =>1 )) {
   quest::ding();
   quest::exp(2855560);
   quest::say("These are exactly what we needed. Thank you $name");
   quest::givecash(0,0,0,60);
   }
   elsif ($ulevel == 62 && plugin::check_handin(\%itemcount, 120129 =>1 )) {
   quest::ding();
   quest::exp(2950220);
   quest::say("These are exactly what we needed. Thank you $name");
   quest::givecash(0,0,0,60);
   }
   elsif ($ulevel == 63 && plugin::check_handin(\%itemcount, 120129 =>1 )) {
   quest::ding();
   quest::exp(3042940);
   quest::say("These are exactly what we needed. Thank you $name");
   quest::givecash(0,0,0,60);
   }
   elsif ($ulevel == 64 && plugin::check_handin(\%itemcount, 120129 =>1 )) {
   quest::ding();
   quest::exp(3145220);
   quest::say("These are exactly what we needed. Thank you $name");
   quest::givecash(0,0,0,60);
   }
   elsif ($ulevel == 65 && plugin::check_handin(\%itemcount, 120129 =>1 )) {
   quest::ding();
   quest::exp(3245060);
   quest::say("These are exactly what we needed. Thank you $name");
   quest::givecash(0,0,0,60);
   }
       else {
    plugin::return_items(\%itemcount);
    quest::say("I have no use for this.");
   }
}