##Tibor 302044 Berserkers receive Wrathbringer's Chain Chestguard of the Vindicator, Rangers receive Bladewhisper Chain Vest of Journeys, Rogues receive Whispering tunic of Shadows, and Shaman receive Ritualchanter's Tunic of the Ancestors. ##
sub EVENT_SAY{
my $fell = quest::saylink("fell", 1);
my $armor = quest::saylink("armor", 1);
my $problem = quest::saylink("problem", 1);
my $breastplate = quest::saylink("breastplate", 1);
  if($text=~/hail/i) {
   quest::say("I have been expecting a creature like you for sometime now as I have heard rumors of strangers in our lands. Powerful strangers that, shall we say, do not find the Muramites to be the most tasteful of folk. I am Tibor, former officer from the Dragorn militia. It was my army that held off the Muramites at the wall during those dark days. Many fine warriors under my command $fell to those that came out of that portal near the wall. Many more in the days after that became infected with the sickness of thought that came from the influence of Discord. Brother turned on brother, friend turned on friend."); 
  }
  elsif($text=~/fell/i) {
   quest::say("Many of us had no choice but to flee rather than face striking down our own brethren and risk making our enemy stronger. So here I have been, waiting and watching . . . biding my time, gathering information. And now I am ready to put a plan into action. With your help, the dragorn can reclaim their dignity and honor by finding the courage to rise up against our enemy. I cannot promise riches for I only have a few meager pieces of $armor to trade for your valiance. What say you?");
  } 
  elsif($text=~/armor/i) {
   quest::say("I have been slowly collecting implements of war, but have not found many weapons due in part to the Muramites destroying most of our forges. What weapons I have I cannot part with as the force I am building needs them. I do, however, have several pieces of chain armor that you may be interested in for helping me solve my $problem.");
  } 
  elsif($text=~/problem/i) {
   quest::say("The simple fact of the matter is that I cannot risk attracting attention to myself or those I still command and yet I cannot allow the Muramites that remain to do so uncontested. No, we must strike back, but if the Muramites learn that dragorns are behind the attacks, they will crush our resistance. But if someone else were to carry out the attacks they would have no cause to believe it was us. Therefore, in exchange for your help, I will give you a piece of $breastplate armor that I have. While you can not wear it, having it in your inventory may be helpful to you."); 
  }
  elsif($text=~/breastplate/i) {
   quest::say("At this critical time, it is crucial that my scouts are able to spy on the enemy without fear of being discovered. One of my people's most famous hunters was Jayruk. He was rumored to wear a vest of shadowy swiftness that helped him perform his duties when protecting our people. I want you to recover this vest for me so I may put it to good use. I also need you to bring me three kyv short bows so that my scouts may protect themselves."); 
  }
  elsif(defined $qglobals{"FTibor"} == 1 && $text=~/Berserker/i) {
    quest::ding();
	quest::exp(10000);
	quest::summonitem(70963);
	quest::delglobal("FTibor");
  }
  elsif(defined $qglobals{"FTibor"} == 1 && $text=~/Rogue/i) {
    quest::ding();
	quest::exp(10000);
	quest::summonitem(70914);
	quest::delglobal("FTibor");
  }
  elsif(defined $qglobals{"FTibor"} == 1 && $text=~/Shaman/i) {
    quest::ding();
	quest::exp(10000);
	quest::summonitem(70921);
	quest::delglobal("FTibor");
  }
  elsif(defined $qglobals{"FTibor"} == 1 && $text=~/Ranger/i) {
    quest::ding();
	quest::exp(10000);
	quest::summonitem(70879);
	quest::delglobal("FTibor");
  }
  else {
   #Do nothing
  }
 } 
sub EVENT_ITEM {
my $Berserker = quest::saylink("Berserker", 1);
my $Ranger = quest::saylink("Ranger", 1);
my $Rogue = quest::saylink("Rogue", 1);
my $Shaman = quest::saylink("Shaman", 1);
  if (plugin::check_handin(\%itemcount, 51476 => 1, 51490 => 3)) {
   quest::emote("takes the items from you before handing you your reward."); #made up
   quest::say("Forgive my old eyes but what class are you? You all look the same to me.");
   quest::say("well? Dont you know? Be ye a 4$Berserker, $Ranger, $Rogue or $Shaman?"); 
   quest::setglobal("FTibor", 1, 5, "M2");
   }
 }	  