# $Id$
use ExtUtils::MakeMaker;

sub ExtUtils::MM_Any::test_via_harness
		{
		my($self, $perl, $tests) = @_;

		return qq|\t$perl "-MTest::Manifest" | .
			qq|"-e" "run_t_manifest(\$(TEST_VERBOSE), '\$(INST_LIB)', | .
			qq|'\$(INST_ARCHLIB)')"\n|;
		}

WriteMakefile(
    'NAME'		    => 'Tie::Toggle',
    'VERSION_FROM'	=> 'Toggle.pm',

    'PREREQ_PM'		=> {
		'File::Find::Rule' => '0',
		'Test::Manifest'   => '0.91',
		'Test::More'       => '0',
		'Test::Pod'        => '0.90',
    	'Tie::Cycle'       => '1.05',
    	},
    
    'MAN3PODS'      => {
    	'Toggle.pm'  => '$(INST_MAN3DIR)/Tie::Toggle.3',
    	},
    	
    'clean' => { FILES => 'Tie-Toggle-*' },
	);
