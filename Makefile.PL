use inc::Module::Install;

name     'LinkAdder';
all_from 'lib/LinkAdder.pm';
author   'Raimon Grau <raimonster@gmail.com>';
license  'perl';

build_requires 'Test::More';

auto_install;

WriteAll;

