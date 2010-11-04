#!/bin/bash

MBOX=$1
LIST=$2

if [ -z "$MBOX" -o -z "$LIST" ]; then
  cat <<-USAGE
	Usage: $(basename $0) oldlist.mbox newlist@example.com
	Clean up a MailMan archive and resend all messages to a new list.
	USAGE
  exit 1
fi

perl filter.pl $MBOX | formail -s ./send.sh $LIST
