sub EVENT_SAY {
  if ($text=~/Hail/i) {
   quest::say("Why are you talking to me? Don't you know where you are? Don't make me release my pet upon you or shall I call the guards and let them take into the next life? Unless you have something for me I suggest you run for your life!");  
    }
  }
sub EVENT_ITEM {
if (plugin::check_handin(\%itemcount, 18850 => 1) && $class eq "Magician") { 
   quest::say("So you think you are a Bloodsaber eh? Well he is your robe, Mind you many outside our order won't understand you and will think the world would be better off without you in it. Be careful where you go and who you talk to young recruit.");
   quest::summonitem(13597);
   quest::ding();
   quest::faction(282,10); #Bloodsabers
   quest::faction(193,10); #Corrupt Qeynos Guards
   quest::faction(282,10); #Opal Dark Briar
   quest::faction(193,-10); #Guards of Qeynos
   quest::faction(193,-10); #Priests of Life
   quest::exp(1000);
   quest::rebind(45,-370,-389,-38.2);
   }
   else {
   quest::say("I have no use for this.");
   plugin::return_items(\%itemcount);
   }
}
# EOF Zone: qcat ID: 45081 NPC: Perkon Malok