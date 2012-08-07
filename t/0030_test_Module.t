use strict;
use warnings;

use Test::More;

use XML::Reader::Testcases qw(Get_TestCntr Get_TestProg);

my $name = '0030_test_Module.t';

my $TCntr = Get_TestCntr($name);

unless (defined $TCntr) {
    die "Test-Abort-0010: Can't find \$XML::Reader::Testcases::TestCntr{'$name'}";
}

unless ($TCntr =~ m{\A \d+ \z}xms) {
    die "Test-Abort-0020: \$XML::Reader::Testcases::TestCntr{'$name'} = '$TCntr' is not numeric";
}

plan tests => $TCntr;

my $TProg = Get_TestProg($name);

unless (defined $TProg) {
    die "Test-Abort-0030: Can't find \$XML::Reader::Testcases::TestProg{'$name'}";
}

unless (ref($TProg) eq 'CODE') {
    die "Test-Abort-0040: ref(\$XML::Reader::Testcases::TestProg{'$name'}) is '".ref($TProg)."', but should be 'CODE'";
}

$TProg->('XML::Reader::RS');
