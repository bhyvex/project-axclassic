##317146 spawns adds##
sub EVENT_SIGNAL {  
  if($signal == 503) {
    quest::spawn2(317018,0,0,388.6,4322.2,207.7,20);
    quest::spawn2(317017,0,0,381.1,4391.2,207.7,65.9);
    quest::spawn2(317016,0,0,386.7,4460.1,207.7,105.1);
    quest::spawn2(317015,0,0,465.3,4448.7,207.7,150.4);
    quest::spawn2(317018,0,0,457.7,4320.9,207.7,242.5);
	quest::depop(317139);
	quest::spawn2(317142,0,0,439.6,4387.7,207.7,70);
	quest::signalwith(317142,514,0);
   }
   if($signal == 504) {
    quest::spawn2(317017,0,0,388.6,4322.2,207.7,20);
    quest::spawn2(317018,0,0,381.1,4391.2,207.7,65.9);
    quest::spawn2(317016,0,0,386.7,4460.1,207.7,105.1);
    quest::spawn2(317015,0,0,465.3,4448.7,207.7,150.4);
    quest::spawn2(317017,0,0,457.7,4320.9,207.7,242.5);
	quest::depop(317140);
	quest::spawn2(317142,0,0,439.6,4387.7,207.7,70);
	quest::signalwith(317142,515,0);
   }
   if($signal == 505) {
    quest::spawn2(317016,0,0,388.6,4322.2,207.7,20);
    quest::spawn2(317018,0,0,381.1,4391.2,207.7,65.9);
    quest::spawn2(317017,0,0,386.7,4460.1,207.7,105.1);
    quest::spawn2(317015,0,0,465.3,4448.7,207.7,150.4);
    quest::spawn2(317016,0,0,457.7,4320.9,207.7,242.5);
	quest::depop(317141);
	quest::spawn2(317142,0,0,439.6,4387.7,207.7,70);
	quest::signalwith(317142,516,0);
   }
  }