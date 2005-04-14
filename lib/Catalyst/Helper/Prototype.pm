package Catalyst::Helper::Prototype;

use strict;
use File::Spec;
use HTML::Prototype;

=head1 NAME

Catalyst::Helper::Prototype - Helper to generate Prototype library

=head1 SYNOPSIS

    script/create.pl Prototype

=head1 DESCRIPTION

Helper to generate Prototype library.

=head2 METHODS

=over 4

=item mk_stuff

Make the Prototype library.

=back 

=cut

sub mk_stuff {
    my ( $self, $helper ) = @_;
    my $file = File::Spec->catfile( $helper->{base}, 'root', 'prototype.js' );
    $helper->mk_file( $file, $HTML::Prototype::prototype );
}

=head1 SEE ALSO

L<Catalyst::Manual>, L<Catalyst::Test>, L<Catalyst::Request>,
L<Catalyst::Response>, L<Catalyst::Helper>

=head1 AUTHOR

Sebastian Riedel, C<sri@oook.de>

=head1 LICENSE

This library is free software . You can redistribute it and/or modify it under
the same terms as perl itself.

=cut

1;
