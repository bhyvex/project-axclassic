sub EVENT_SPAWN {
  my $a = quest::ChooseRandom(102207,102188,102189,102190,102191,102207,102188,102189,102190,102191,102188,102189,102190,102191,102188,102189,102190,102191,102188,102189,102190,102191,102188,102189,102190,102191,102200);
  quest::spawn2($a,0,0,-520.4,78.1,5.6,64);
  }
  sub EVENT_SIGNAL {
  if ($signal == 115){
  quest::depopall(102200);
  quest::depopall(102207);
  quest::depopall(102188);
  quest::depopall(102189);
  quest::depopall(102190);
  quest::depopall(102191);
  quest::depop();
  }
  }