use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'		=> 'Tie::Toggle',
    'VERSION_FROM'	=> 'Toggle.pm', # finds $VERSION
    'PREREQ_PM'		=> {'Tie::Cycle' => 0}, # e.g., Module::Name => 1.1
);
