package RestTest::Controller::API::REST::Tag;

use strict;
use warnings;
use JSON::XS;

use parent qw/RestTest::ControllerBase::REST/;

__PACKAGE__->config(
    action                  =>  { setup => { PathPart => 'tags', Chained => '/api/rest/rest_base' } },
                                # define parent chain action and partpath
    class                   =>  'DB::Tag', # DBIC result class
    create_requires         =>  [qw/cd tag/], # columns required to create
    create_allows           =>  [qw//], # additional non-required columns that create allows
    update_allows           =>  [qw/cd tag/], # columns that update allows
    list_returns            =>  [qw/tagid cd tag/], # columns that list returns


    list_prefetch_allows    =>  [ # every possible prefetch param allowed
        [qw/cds/], {  'cds' => [qw/cd_to_producer tags tracks/] },

    ],

    list_ordered_by         => [qw/tagid/], # order of generated list
    list_search_exposes     => [
        qw/tagid cd tag/,

    ], # columns that can be searched on via list
);

=head1 NAME

 - REST Controller for

=head1 DESCRIPTION

REST Methods to access the DBIC Result Class tags

=head1 AUTHOR

amiri,,,

=head1 SEE ALSO

L<Catalyst::Controller::DBIC::API>
L<Catalyst::Controller::DBIC::API::REST>
L<Catalyst::Controller::DBIC::API::RPC>

=head1 LICENSE



=cut

1;
