use Test::More qw(no_plan);
use Test::Command;
use File::Next;

#This is more than I want the questioner to do but it works for now.

my $iter = File::Next::files( { file_filter => sub { /\.*test$/ } }, '../../solution' );
while ( defined ( my $file = $iter->() ) ) {
	stdout_is_eq($file, "Hello, World!\n");
}
