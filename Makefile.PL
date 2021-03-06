use inc::Module::Install 1.06;
use strict;
use warnings;

use 5.006;

perl_version '5.006';
name 'SQL-Abstract';
author 'Nathan Wiger <nate@wiger.org>';
resources 'license'     => 'http://dev.perl.org/licenses/';
resources 'repository'  => 'https://github.com/dbsrgits/sql-abstract/';
resources 'bugtracker'  => 'http://rt.cpan.org/NoAuth/Bugs.html?Dist=SQL-Abstract';
resources 'IRC'         => 'irc://irc.perl.org/#dbix-class';

all_from 'lib/SQL/Abstract.pm';

dynamic_config 0;

requires 'List::Util'     => '0';
requires 'Scalar::Util'   => '0';
requires 'Exporter'       => '5.57';
requires 'MRO::Compat'    => '0.12';
requires 'Moo'            => '2.000001';
requires 'Sub::Quote'     => '2.000001';
requires 'Hash::Merge'    => '0.12';
requires 'Text::Balanced' => '2.00';

test_requires "Test::More"      => '0.88';
test_requires "Test::Exception" => '0.31';
test_requires "Test::Warn"      => '0';
test_requires "Test::Deep"      => '0.101';
test_requires "Storable"        => '0';   # for cloning in tests

no_index package => 'DBIx::Class::Storage::Debug::PrettyPrint';
no_index directory => 'examples';

tests_recursive 't';

auto_install();

WriteAll();
