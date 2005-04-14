package Catalyst::Plugin::Prototype;

use strict;
use base 'Class::Data::Inheritable';
use HTML::Prototype;

our $VERSION = '0.01';

__PACKAGE__->mk_classdata('prototype');
__PACKAGE__->prototype( HTML::Prototype->new );

=head1 NAME

Catalyst::Plugin::Prototype - Plugin for Prototype

=head1 SYNOPSIS

    # use it
    use Catalyst qw/Prototype/;

    # ...add this to your tt2 template...
    [% c.prototype.define_javascript_functions %]

    # ...and use the helper methods...
    <div id="view"></div>
    <textarea id="editor" cols="80" rows="24"></textarea>
    [% uri = base _ 'edit/' _ page.title %]
    [% c.prototype.observe_field( 'editor', uri, { 'update' => 'view' } ) %]

=head1 DESCRIPTION

Some stuff to make Prototype fun.

This plugin replaces L<Catalyst::Helper::Prototype>.

=head2 METHODS

=head3 prototype

    Returns a ready to use L<HTML::Prototype> object.

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
