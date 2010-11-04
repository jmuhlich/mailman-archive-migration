#!/usr/bin/perl

if (!@ARGV) {
  print STDERR "reading mbox contents from stdin...\n";
}

$_ = join('', <>);

s/(?<!^)(?<!\n\n)(From [^@]+@[^ ]+  \w{3} \w{3} (?: |\d)\d \d\d:\d\d:\d\d \d{4})(?=\n)/\n\n$1/g;

print $_;
