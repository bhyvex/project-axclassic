sub EVENT_SPAWN {
  my $a = quest::ChooseRandom(102134,102135,102136,102134,102135,102136,102132,102008,102134,102135,102136,102008);
  quest::spawn2($a,0,0,-611,102,38.7,128);
  }
  sub EVENT_SIGNAL {
  if ($signal == 102){
  quest::depopall(102132);
  quest::depopall(102008);
  quest::depopall(102134);
  quest::depopall(102135);
  quest::depopall(102136);
  quest::depop();
  }
  }