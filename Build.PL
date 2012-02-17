use strict;
use warnings;

use Module::Build;

Module::Build->new(
    module_name       => 'Data::Page::Pagination',
    license           => 'perl',
    dist_abstract     => 'Data::Page::Pagination - calculates the pagination view',
    dist_author       => 'Steffen Winkler <steffenw at cpan.org>',
    dist_version_from => 'lib/Data/Page/Pagination.pm',
    requires          => {
        perl                           => 5.006,
        version                        => 0,
        Moose                          => 0,
        'Moose::Util::TypeConstraints' => 0,
        'MooseX::StrictConstructor'    => 0,
        'MooseX::Types::Moose'         => 0,
        'List::Util'                   => 0,
        'namespace::autoclean'         => 0,
        syntax                         => 0,
        'Syntax::Feature::Method'      => 0,
    },
    build_requires => {
        'Test::NoWarnings' => 0,
        'Test::More'       => 0, # dist Test-Simple
        'Data::Page'       => 0,
    },
    recommends => {
        'Test::Pod'           => '1.14',
        'Test::Pod::Coverage' => '1.04',
    },
    create_makefile_pl   => 'traditional',
    recursive_test_files => 1,
    add_to_cleanup       => [ qw(
        META.yml *.bak *.gz Makefile.PL
    ) ],
)->create_build_script;
