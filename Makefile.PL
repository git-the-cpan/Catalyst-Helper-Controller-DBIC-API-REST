
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "REST Controller for [% schema_class %]",
  "AUTHOR" => "Amiri Barksdale <amiri\@arisdottle.net>",
  "BUILD_REQUIRES" => {
    "Catalyst" => 0,
    "Catalyst::Controller" => 0,
    "Catalyst::Controller::DBIC::API::REST" => 0,
    "Catalyst::Helper" => 0,
    "Catalyst::Model::DBIC::Schema" => 0,
    "Catalyst::Utils" => 0,
    "DBIx::Class::Core" => 0,
    "DBIx::Class::ResultSet" => 0,
    "DBIx::Class::Schema" => 0,
    "English" => 0,
    "File::Copy::Recursive" => 0,
    "File::Find" => 0,
    "File::Path" => 0,
    "File::Temp" => 0,
    "HTTP::Request::Common" => 0,
    "JSON::XS" => 0,
    "Test::Deep" => 0,
    "Test::More" => 0,
    "Test::WWW::Mechanize::Catalyst" => 0,
    "URI" => 0,
    "base" => 0,
    "bytes" => 0,
    "parent" => 0
  },
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "Catalyst-Helper-Controller-DBIC-API-REST",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "Catalyst::Helper::Controller::DBIC::API::REST",
  "PREREQ_PM" => {
    "File::Spec" => 0,
    "FindBin" => 0,
    "namespace::autoclean" => 0,
    "strict" => 0,
    "warnings" => 0
  },
  "VERSION" => "0.08",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



