#############
#Quest Name: Bard Mail Quest
#Author: RealityIncarnate
#NPCs Involved: Tralyn Marsinger, Eve Marsinger, Lislia Goldtune, Felisity Starbright, Jakum Webdancer, Ton Twostring, Idia, Sivina Lutewhisper, Ticar Lorestring, Marton Stringsinger, Drizda Tunesinger, Travis Two Tone, Silna Songsmith, Siltria Marwind, Tacar Tissleplay, Kilam Oresinger, Lyra Lyrestringer 
#Items Involved: Bardic letters: 18150-18167
#################

sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Hail. $name - Are you [interested] in helping the League of Antonican Bards by delivering some mail?");
}

if($text=~/interested/i){
quest::say("I have messages that need to go to Freeport and to Qeynos.  Will you deliver mail [Freeport] or [Qeynos] for me?"); 
}

if($text=~/freeport/i) {
quest::say("Take this pouch of mail to Ton Twostring. You can find him at the bard guild hall. I'm sure he will compensate you for your trouble.");
quest::summonitem("18164");
}

if($text=~/qeynos/i) {
quest::say("Take this letter to Tralyn Marsinger. You can find him at the bard guild hall. I'm sure she will compensate you for your trouble.");
quest::summonitem("18154");
}
}

sub EVENT_ITEM { 

  if (plugin::check_handin(\%itemcount, 18152 => 1) || plugin::check_handin(\%itemcount, 18156 => 1)) {
    quest::say("More mail - you have done us a noteworthy service!  Please take this gold for your troubles.  If you are interested in more work, just ask me.");
    quest::givecash(0,0,quest::ChooseRandom(8,9,10,11,12),0);
    quest::ding(); quest::exp(100);
    quest::faction(192,10); #league of antonican bards
    quest::faction(184,10); #knights of truth
    quest::faction(135,10); #guards of qeynos
    quest::faction(273,-30); #ring of scale
    quest::faction(207,-30); #mayong mistmoore
     if(defined ($bard_spell_1)){
     return;
     }
     else{
     $client->Message(14,"Take this note and show it to Anita Thrall, she will provide you with Bard Speed - Keep the note, as we may later need you for another errand when we hear of the whereabouts of Natalia.");
     quest::summonitem("202");}
  }

else {
    quest::say("I have no need for that.");
    plugin::return_items(\%itemcount);
  }
}
#END of FILE Zone:highkeep