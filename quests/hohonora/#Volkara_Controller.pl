##Volkara_Controller 211162##
sub EVENT_SPAWN {
my $volkara_event = 0;
 $counter = undef;
    quest::settimer("spiders",1800);
    quest::spawn2(211163,1008168,0,-2471.3,-467.3,1,85);
    quest::spawn2(211163,1008167,0,-2452.3,-451.8,1,104.1);
    quest::spawn2(211163,1008166,0,-2474.7,-526,1,73.5);
    quest::spawn2(211163,1008165,0,-2479.7,-550.3,1,66.8);
    quest::spawn2(211163,1008164,0,-2463.1,-540.3,1,62.6);
    quest::spawn2(211163,1008163,0,-2451.4,-464.4,1,83.5);
    quest::spawn2(211163,1008162,0,-2475.6,-447.3,1,85.3);
    quest::spawn2(211163,1008161,0,-2492.3,-533.4,1,74.8);
    quest::spawn2(211163,1008160,0,-2499.9,-607.8,1,61.4);
    quest::spawn2(211163,1008159,0,-2502,-586,1,53);
    quest::spawn2(211163,1008158,0,-2476.7,-498.7,1,64.6);
    quest::spawn2(211163,1008157,0,-2464,-487.5,1,68.6);
	}
sub EVENT_SIGNAL {
   if($signal == 260) { ##signal 260 is from each mob who dies##
         $counter += 1;
   if($counter == 12) {   
   quest::spawn2(211164,1008168,0,-2471.3,-467.3,1,85);
   quest::spawn2(211164,1008167,0,-2452.3,-451.8,1,104.1);
   quest::spawn2(211164,1008166,0,-2474.7,-526,1,73.5);
   quest::spawn2(211164,1008165,0,-2479.7,-550.3,1,66.8);
   quest::spawn2(211164,1008164,0,-2463.1,-540.3,1,62.6);
   quest::spawn2(211164,1008163,0,-2451.4,-464.4,1,83.5);
   quest::spawn2(211164,1008162,0,-2475.6,-447.3,1,85.3);
   quest::spawn2(211164,1008161,0,,-2492.3,-533.4,1,74.8);
   }
   if($counter == 20) {
   quest::spawn2(211165,1008168,0,-2471.3,-467.3,1,85);
   quest::spawn2(211165,1008167,0,-2452.3,-451.8,1,104.1);
   quest::spawn2(211165,1008166,0,-2474.7,-526,1,73.5);
   quest::spawn2(211165,1008165,0,-2479.7,-550.3,1,66.8);
   quest::spawn2(211165,1008164,0,-2463.1,-540.3,1,62.6);
   quest::spawn2(211165,1008163,0,-2451.4,-464.4,1,83.5);
   }
   if($counter == 26) {
   quest::spawn2(211166,1008168,0,-2471.3,-467.3,1,85);
   quest::spawn2(211166,1008167,0,-2452.3,-451.8,1,104.1);
   quest::spawn2(211166,1008166,0,-2474.7,-526,1,73.5);
   quest::spawn2(211166,1008165,0,-2479.7,-550.3,1,66.);
   }
    if($counter == 30) {
   quest::spawn2(211121,0,0,-2445.2,-513.6,1,64.6);
     $counter = 0;
    quest::depop();	 
  }
 }
}
 sub EVENT_TIMER {
   if($timer eq "spiders") {
     quest::stoptimer("spiders");
     quest::depopall(211163);
	 quest::depopall(211164);
	 quest::depopall(211165);
	 quest::depopall(211166);
	 quest::depop(211121);
	 quest::ze(14, "You have failed the Queen Volkara event.");
	 $counter = 0;
     quest::depop();	 
 }
 }
