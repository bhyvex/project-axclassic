# #The_Fabled_Tserrina_Syl`Tor NPCID 111185 (use - to replace ` in filename)

sub EVENT_SPAWN{
	$x = $npc->GetX();
	$y = $npc->GetY();
	quest::set_proximity($x - 50, $x + 50, $y - 50, $y + 50);
}

sub EVENT_ENTER{
	if($ulevel <= 40){
		quest::shout("We shall meet again $name! When you are a worthy opponent!!");
		quest::depop();
	}
}

sub EVENT_AGGRO{
	if($ulevel <= 40){
		quest::shout("We shall meet again $name! When you are a worthy opponent!!");
		quest::depop();
	}
}
sub EVENT_DEATH {

}