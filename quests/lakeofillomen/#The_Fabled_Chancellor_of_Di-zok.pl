# #The_Fabled_Chancellor_of_Di`zok (85230)
# Depopper script patrikpatrik 9/1/2017

sub EVENT_SPAWN {
	$x = $npc->GetX();
	$y = $npc->GetY();
	quest::set_proximity($x - 50, $x + 50, $y - 50, $y + 50);
	
	$tempa = $npc->GetNPCTypeID();
	
	if ($tempa == 85230) {
		quest::settimer("fabledchan", 600); #will remain for 10 minutes 600
	}
}

sub EVENT_COMBAT {
	if($npc->IsEngaged()) {
		quest::stoptimer($timer);
	} else {
		quest::settimer("fabledchan", 600);
	}
}

sub EVENT_TIMER {
	if($timer eq "fabledchan") {
		quest::depop();
	}
}