#
#  ~/myproject/tests/Makefile
#
#  Run our tests, either quietly or with verbose output
#
#  This is a Makefile - so the indented lines start with a TAB!
#
#  Whoever came up with the wonderful idea that whitespace was significant..?
#
all:
	perl -MTest::Harness -e '$$Test::Harness::verbose=0; runtests @ARGV;' tests/*.t
build:
	perl data-to-json.pl
	cat VERSION
build-props-lauer:
	./build_props_lauer.sh
test:
	perl -MTest::Harness -e '$$Test::Harness::verbose=1; runtests @ARGV;' tests/*.t
clean:
	find . -name '*~' -exec rm -f \{\} \;
check:
	perlcritic data-to-json.pl
