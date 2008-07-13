# $Id$
use ExtUtils::MakeMaker;

require 5.006;

eval "use Test::Manifest 1.14";
	
WriteMakefile(
	'NAME'		    => 'Tie::Toggle',
	'ABSTRACT'      => 'False and true, alternately, ad infinitum',
	'VERSION_FROM'	=> 'Toggle.pm',

	'LICENSE'       => 'perl',
	'AUTHOR'        => 'brian d foy <bdfoy@cpan.org>',

	'PREREQ_PM'		=> {
		'Tie::Cycle'       => '1.05',
		},

	'MAN3PODS'      => {
		'Toggle.pm'  => '$(INST_MAN3DIR)/Tie::Toggle.3',
		},

	'clean' => { FILES => 'Tie-Toggle-*' },
	);
