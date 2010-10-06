use strict;
use warnings;
use Test::More;

BEGIN { use_ok 'Catalyst::Test', 'RestTest' }
BEGIN { use_ok 'RestTest::Controller::API::REST::CD' }

ok( request('/api/rest')->is_success, 'Request should succeed' );
done_testing();
