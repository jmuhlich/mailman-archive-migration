#!/usr/bin/perl

# Filters an mbox file, generating random message-id headers.  Helpful when
# testing, to trick a mail system into thinking that a previously-seen set of
# messages is new.  For example, in Google Groups, even if a message is
# deleted, Google's mail handling system still remembers old message-ids and
# will discard the same messages when resent.  This script will let you resend
# old messages so that Google will accept them.

use strict;

while (<>) {
  if (/^message-id: (.*)$/i) {
    my $id_base = rand() * 1e6;
    $_ = "Message-Id: <$id_base\@bogus>\n";
  }
  print;
}
