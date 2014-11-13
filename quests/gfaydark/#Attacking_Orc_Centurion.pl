## Resqu Lower Level GM event ##
sub EVENT_SPAWN{
quest::start(260);
quest::moveto(204,150,10,0,0);
}

sub EVENT_SIGNAL{
 if ($signal == 747){
	quest::shout("Run, Fools, Run!");
	quest::depop();
}
}
sub EVENT_DEATH {
  quest::signalwith(54299,737,0);
  my $a = quest::ChooseRandom(54298,54301,54300,54298,54301,54300,54298,54301,54300,54298,54301,54300,54298,54301,54300,54298,54301);
  my $b = quest::ChooseRandom(54298,54301,54300,54298,54301,54300,54298,54301,54300,54298,54301,54300,54298,54301,54300,54298,54301);
  my $x = $npc->GetX();
  my $y = $npc->GetY();
  my $z = $npc->GetZ();
  my $h = $npc->GetHeading();
  quest::spawn2($a,0,0,$x,$y,$z,$h);
  quest::spawn2($b,0,0,$x,$y,$z,$h); 
}

