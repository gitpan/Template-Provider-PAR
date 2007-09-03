use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new
    (module_name         => 'Template::Provider::PAR',
     license             => 'perl',
     dist_author         => 'Nick Woolley <npw@cpan.org>',
     dist_version_from   => 'lib/Template/Provider/PAR.pm',
     dist_abstract       => 'Load templates from an embedded PAR archive',
     create_readme       => 1,
     create_makefile_pl  => 'traditional',
     requires => 
     {
      'Test::More' => 0,
      'version'    => 0,
      'Module::Build' => 0,
      'Template::Provider'   => '2.93',
      'PAR' => 0,
      'Archive::Zip' => 0,
      'File::Spec' => 0,
      'Scalar::Util' => 0,
     },
     recommends => 
     {
      'Test::Differences' => '0.47',
      'Test::Pod::Coverage' => 0,
      'Test::Perl::Critic' => 0,
      'Test::Pod' => 0,
      'Test::Prereq::Build' => 0,
     },
     test_files         => [ glob('t/*.t') ],
     add_to_cleanup      => [ 'Template-Provider-PAR-*', 't/tmp/*' ],
    );

$builder->create_build_script();

