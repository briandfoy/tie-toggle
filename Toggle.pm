package Tie::Toggle;

require 5.6.0;
use strict;
use warnings;

use Tie::Cycle;

our $VERSION = 0.02;
our @ISA     = qw(Tie::Cycle);

sub TIESCALAR
	{
	my $class    = shift;

	my $self = [ 0, 2, [ 0 == 1, 1 == 1] ];

	bless $self, $class;
	}

__END__

=pod

=head1 NAME

Tie::Toggle - False and true, alternately, ad infinitum.

=head1 SYNOPSIS

    use Tie::Toggle;

    tie my $toggle, 'Tie::Toggle';

	foreach my $number ( 0 .. 10 )
		{
		next unless $toggle;
		
		print $number, "\n";
		}
		
=head1 DESCRIPTION

You use C<Tie::Toggle> to go back and forth between false
and true over and over again. You don't have to worry about
any of this since the magic of tie does that for you by
using C<Tie::Cycle>.

You can also use C<Tie::FlipFlop> by Abigail to do the same
thing, but with any two values.

=head1 AUTHOR

brian d foy <brian+cpan@smithrenaud.com>.

=head1 COPYRIGHT and LICENSE

Copyright 2000 by brian d foy.

This software is available under the same terms as perl.

=cut

