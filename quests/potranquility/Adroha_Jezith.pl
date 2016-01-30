sub EVENT_SAY{
my $poverty = quest::saylink("poverty", 1);
my $jeweled = quest::saylink("jeweled", 1);
my $Tranquility = quest::saylink("Tranquility", 1);
my $nightmares = quest::saylink("nightmares", 1);
  if ($text=~/coma/i){
  quest::say("My pity onto Thelin. His life on Norrath was a miserable one. As a young man he began to study the workings of fear inspired by Cazic-Thule. The workings had been translated for mortals by Zebuxoruk. Pouring over the texts, Thelin felt his mind being invaded by Cazic. This information was not for mortal usage and the malevolent god stripped him of all his earthly belongings and cursed him to live in $poverty and ruin.");
  }
  if ($text=~/poverty/i){
   quest::say("Aye, he lived in the streets of Eastern Freeport, begging from those passing through the port. He sat quivering, propped up against a wall with one hand out as he watched the travelers pass by. None of them even gave him a second glance. Several years would pass before a female dwarf would arrive to trade some of her family's armor and weapons. She saw and took pity on Thelin. She knelt down, scratched her beard then began to rummage through her backpack. She then placed a $jeweled dagger in his hand, smiled and returned to her former business.");
  }
  if ($text=~/jeweled/i){
   quest::say("This was the only gift that Thelin had received since the curse. It was beautifully crafted and would likely have fetched a handsome price upon the market. He decided to keep the dagger as it was such a kind gesture. Later that eve, Thelin heard the calling of others that studied Zebuxoruk's workings. He recognized the language they called out in. He approached the men and explained he had studied the writings of Zebuxoruk. One of the shaded figures then began to mutter an incantation. Suddenly, there was a bright flash, lush vegetation and a peaceful breeze surrounded them. They had ascended here, to the Plane of $Tranquility where they could further study the works without interference from the gods and mortals alike.");
  }
  if ($text=~/Tranquility/i){
   quest::say("Thelin enjoyed it here. He assisted the other followers by using all his mana to open a portal to the Plane of Nightmares, the demi-plane ruled by the child of The Faceless, Terris-Thule. Spent from using all his energies, he went to bed early after his victory had been achieved in this task. As he laid in bed, he looked over the dagger that had been given to him by the female dwarf. He smiled at the new peace he had found here and began to fall asleep. Drifting away into the realm of dreams, his subconscious was assulted by the horrors of a nightmare. He tossed and turned from the visions that came before him. So bad did he writhe in his subconscious torment that he turned on the dagger. He was critically injured, and let out a wrenching scream. We found him and were able to heal his wound enough to keep him alive. However, he still lies in a deep coma seemingly tortured by $nightmares.");
  }
  if ($text=~/nightmares/i){
   quest::say("It is our belief that Terris-Thule is punishing him for allowing entrance into her plane. She seems to have an exceedingly strong tie to him. Since her father has already punished him, she likely found that he was easily tormented by her own powers. Sometimes he talks while tossing and turning. We have taken note of everything he has said. He has said 'I accept your offer Terris-Thule', 'I must find the pieces', and 'It never ends'. You must help him. Go through the portal that he has helped to create. Try to find his planar projection in Terris' plane. Help him wake from this torment. Please, I beg you. I cannot stand to watch him suffer any longer.");
   quest::flagclient(1510,1);
  }
 }   
sub EVENT_SIGNAL{
my $coma = quest::saylink("coma", 1);
  if($signal == 1500){
   quest::emote(" gives a soft sigh of woe");
   quest::say("You won't be getting any response from Thelin. Ever since his injury he has been in a deep $coma with no sign of ever recovering.");
   quest::signalwith(203074,1501,1000);
   }
 }


