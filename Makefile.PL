# $Id$
use ExtUtils::MakeMaker;

eval "use Test::Manifest";

unless( $@ )
	{
	* ExtUtils::MM_Any::test_via_harness = sub
		{
		my($self, $perl, $tests) = @_;
		
		return qq|\t$perl "-MTest::Manifest" | .
			qq|"-e" "run_t_manifest(\$(TEST_VERBOSE), '\$(INST_LIB)', | .
			qq|'\$(INST_ARCHLIB)')"\n|;
		}
	}
	
WriteMakefile(
	'NAME'		    => 'Tie::Toggle',
	'VERSION_FROM'	=> 'Toggle.pm',

	'PREREQ_PM'		=> {
		'Test::More'       => '0',
		'Tie::Cycle'       => '1.05',
		},

	'MAN3PODS'      => {
		'Toggle.pm'  => '$(INST_MAN3DIR)/Tie::Toggle.3',
		},

	'clean' => { FILES => 'Tie-Toggle-*' },
	);
