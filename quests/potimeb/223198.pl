# 223198.pl an_abhorrent

sub EVENT_DEATH {
	quest::signalwith(223158,1234,0); #signals phase5_trigger.pl with signal 1234
}