BEGIN {
    if ($ENV{PERL_CORE}) {
	chdir 't' if -d 't';
	@INC = ("../lib", "lib/compress");
    }
}

use lib qw(t t/compress);
use strict;
use warnings;

use IO::Compress::Lzop     qw($LzopError) ;
use IO::Uncompress::UnLzop qw($UnLzopError) ;

sub identify
{
    'IO::Compress::Lzop';
}

require "multi.pl" ;
run();
