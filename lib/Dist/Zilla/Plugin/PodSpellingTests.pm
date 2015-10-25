package Dist::Zilla::Plugin::PodSpellingTests;
# vim: set ts=8 sts=4 sw=4 tw=115 et :

use strict;
use warnings;

our $VERSION = '2.006010';

use Moose;
extends 'Dist::Zilla::Plugin::Test::PodSpelling';

before register_component => sub {
    warnings::warnif('deprecated',
        "!!! [PodSpellingTests] is deprecated and will be removed in a future release; replace it with [Test::PodSpelling]\n",
    );
};

no Moose;
__PACKAGE__->meta->make_immutable;
1;

# ABSTRACT: (DEPRECATED) The old name of the PodSpelling plugin
=head1 MODULE VERSION

version 1.112140

I<note: this version is statically defined for this module, and does not
follow that of the dist>

=head1 SYNOPSIS

This Plugin extends L<Dist::Zilla::Test::PodSpelling> and adds nothing. It is the old
name for C<[Test::PodSpelling]> and will be removed in a few versions.

=head1 SEE ALSO

L<Dist::Zilla::Plugin::Test::PodSpelling>

=head1 SUPPORT

=for stopwords irc

Bugs may be submitted through L<the RT bug tracker|https://rt.cpan.org/Public/Dist/Display.html?Name=Dist-Zilla-PluginTest-PodSpelling>
(or L<bug-Dist-Zilla-Plugin-Test-PodSpelling@rt.cpan.org|mailto:bug-Dist-Zilla-Plugin-Test-PodSpelling@rt.cpan.org>).
I am also usually active on irc, as 'ether' at C<irc.perl.org>.

=cut
