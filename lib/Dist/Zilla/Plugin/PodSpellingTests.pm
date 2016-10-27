use strict;
use warnings;
package Dist::Zilla::Plugin::PodSpellingTests;
# ABSTRACT: (DEPRECATED) The old name of the PodSpelling plugin
# vim: set ts=8 sts=4 sw=4 tw=115 et :

our $VERSION = '2.007004';

use Moose;
extends 'Dist::Zilla::Plugin::Test::PodSpelling';

# use warnings categories from the caller, not these modules
use Carp ();
local $Carp::Internal{'Class::Load'} = 1;
local $Carp::Internal{'Module::Runtime'} = 1;
warnings::warnif('deprecated',
    '!!! [PodSpellingTests] is deprecated and will be removed in a future release; replace it with [Test::PodSpelling]',
);

no Moose;
__PACKAGE__->meta->make_immutable;
1;

=pod

=head1 SYNOPSIS

This is a plugin that runs at the L<gather files|Dist::Zilla::Role::FileGatherer> stage,
providing the file:

  xt/author/pod-spell.t - a standard Test::Spelling test

THIS MODULE IS DEPRECATED. Please use
L<Dist::Zilla::Plugin::Test::PodSpelling> instead. it may be removed at a
later time (but not before April 2016).

=head1 SEE ALSO

L<Dist::Zilla::Plugin::Test::PodSpelling>

=cut
