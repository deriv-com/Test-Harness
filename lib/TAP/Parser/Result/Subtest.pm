package TAP::Parser::Result::Subtest;

use strict;
use warnings;

use base 'TAP::Parser::Result';

=head1 NAME
TAP::Parser::Result::Subtest - Subtest result token.
=head1 VERSION
Version 3.48
=cut

our $VERSION = '3.48';

=head1 DESCRIPTION
This is a subclass of L<TAP::Parser::Result>.  A token of this class will be
returned if a subtest line is encountered.
 1..1
 ok 1 - woo hooo!
 # this is a subtest
=head1 OVERRIDDEN METHODS
Mainly listed here to shut up the pitiful screams of the pod coverage tests.
They keep me awake at night.
=over 4
=item * C<as_string>
Note that this method merely returns the subtest preceded by a '# '.
=back
=cut

##############################################################################

=head2 Instance Methods
##############################################################################
=head3 C<description>
  my $description = $result->description;
Returns the description of the test, if any.  This is the portion after the
test number but before the directive.
=cut

sub description { shift->{description} }

1;
