#!/usr/bin/perl

$_ = join('', <>);

s/(?<!^)(?<!\n\n)(From [^@]+@[^ ]+  \w{3} \w{3} (?: |\d)\d \d\d:\d\d:\d\d \d{4})(?=\n)/\n\n$1/g;

print $_;
