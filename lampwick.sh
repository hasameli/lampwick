#!/bin/sh

# This is a simple script to scrape the contents of a given set of URLs, and to retrieve their first level of
# links as well. The original purpose is so that various important news stories can be retrieved for local
# reference and tracked in the case that their original sources are modified or removed.

FILENAME=sitestoclone.txt


# This first wget grabs the URLs listed in sitestoclone.txt and archives them locally.
wget --limit-rate=40k --random-wait -mkKpr -l3 -np -nc -E -t 3 -P ./archive/ -U="Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)" -N -i $FILENAME

# This second wget grabs the links from the top level of the above URLs and pulls them down too.
wget --limit-rate=40k --random-wait -r -k -K -H -N -l 1 -P ./archive/ -N -U="Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)" -i $FILENAME

# Now we change directory to the archive
cd ./archive

# And add the changes to the repo.
git add .

# We'll also want to commit these changes
git commit -m "Archive of $(date "+%Y%m%d%H%M")"


