# $Id$
use ExtUtils::MakeMaker;

WriteMakefile(
    'NAME'		    => 'Tie::Toggle',
    'VERSION_FROM'	=> 'Toggle.pm',

    'PREREQ_PM'		=> {
    	'Tie::Cycle'  => '1.0',
    	},
    
    'MAN3PODS'      => {
    	'Toggle.pm'  => '$(INST_MAN3DIR)/Tie::Toggle.3',
    	},
    	
    'clean' => { FILES => 'Tie-Toggle-*' },
);
