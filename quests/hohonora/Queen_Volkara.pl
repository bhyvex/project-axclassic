##Queen Volkara 211121##
sub EVENT_DEATH {
    my $x = $npc->GetX(); 
    my $y = $npc->GetY(); 
    my $z = $npc->GetZ();  
    my $h = $npc->GetHeading(); 
  quest::spawn2(211194,0,0,$x,$y,$z,$h); 
}