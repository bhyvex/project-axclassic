#1_an_erudite_spirit (224238) Female  spawn Temperance quest
#npc - a_vicious_skeleton
#zone - Gunthak

sub EVENT_DEATH{
 my $random_result = int(rand(100));
 my $a=224238;
 if(($random_result<=15) && ($Alina==2)){
  quest::emote("'s corpse shatters into fragments before you.");
  quest::spawn2($a,0,0,-670.0,-856.1,19.2,192.6);
  quest::delglobal("Alina");
  quest::setglobal("Alina",3,3,"F");
  $Alina=undef;
 }else{
 quest::emote("'s corpse shatters into fragments before you.");
 }
}