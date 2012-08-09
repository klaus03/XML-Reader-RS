use strict;
use warnings;
use 5.014;

use Module::Build;

Module::Build->new(
  module_name        => 'XML::Reader::RS',
  license            => 'perl',
  configure_requires => { 'Module::Build' => 0.30 },
  requires           => { 'XML::Reader' => 0.48, 'XML::Parser' => 0 },
  dist_abstract      => 'Importing XML::Reader using XML::Parser',
)->create_build_script;
