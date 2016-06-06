#####################################
##The_Guardian_Construct 1 of 5 bosses.
##accessing plane of time B
##associated with doorid 9
##preliminary testing by patrikpatrik
## 2nd revision 6/01/2016
## Files associated player.pl
#####################################

sub EVENT_SAY {

}#END sub EVENT_SAY

sub EVENT_DEATH {
#If player manages to kill the final blow
if (!defined $qglobals{$name."boss1"}){
		quest::setglobal($name."boss1", 1, 7, "M60");
		#$client->Message(15, "boss1 not defined, so you get a point!");	
	} else {
		#$client->Message(15, "boss1 qglobal already up and running.");
	}
	if ((!defined $qglobals{$name."boss2"}) || (!defined $qglobals{$name."boss3"}) || 
		(!defined $qglobals{$name."boss4"}) || (!defined $qglobals{$name."boss5"})) {
		$client->Message(15, "A booming echo bellows from across the sky, 'You have more to dispatch to appease the gods...'");
	}
	else {
		$client->Message(14, "A booming echo bellows from across the sky, 'Congratulations! You feel an overwhelming urge to pass 
			through the portals. Make haste before it's too late...'");
	}
}#END sub EVENT_DEATH

sub EVENT_NPC_SLAY {
#If BOTS get last kill
	@clientarray = $entity_list->GetClientList();
	$values = @clientarray; #Numerical amount of clients
	foreach $ent(@clientarray) {
		$clientlist = $ent->GetName();
#Checking to see if qglobals are already defined or not, if not assign to client(s)
		if (!defined $qglobals{$clientlist."boss1"}) {
			quest::setglobal($clientlist."boss1", 1, 7, "M60");
		}
		#$ent->Message(15, "Testing. and ent is $ent. and clientlist is $clientlist.");
		#Upon Death the messages come..	
		if((defined $qglobals{$clientlist."boss2"}) && (defined $qglobals{$clientlist."boss3"}) &&
			(defined $qglobals{$clientlist."boss4"}) && (defined $qglobals{$clientlist."boss5"})) {
			$ent->Message(14, "A booming echo bellows from across the sky, 'Congratulations! You feel an overwhelming urge to pass 
			through the portals. Make haste before it's too late...'");
		} else {
		$ent->Message(15, "A booming echo bellows from across the sky, 'You have more to dispatch to appease the gods...'");
		}
	}
}#END Sub EVENT_NPC_SLAY