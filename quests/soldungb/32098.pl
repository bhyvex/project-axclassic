sub EVENT_SPAWN {
  my $a = quest::ChooseRandom(32077,32095,32096,32097,32045,32095,32096,32097,32045,32095,32096,32097);
  quest::spawn2($a,0,0,-345,-652,-69,50);
  }
  sub EVENT_SIGNAL {
  if ($signal == 635){
  quest::depopall(32077);
  quest::depopall(32045);
  quest::depopall(32095);
  quest::depopall(32096);
  quest::depopall(32097);
  quest::depop();
  }
  }