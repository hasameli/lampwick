# lampwick
Lampwick is a simple way to clone and archive sites, and track changes.

It consists of a shell script that can be automated via cron that will spider whichever sites you name in the input file, saving their contents and the contents of their first level of links to a local directory. 

It will then track any changes via git, and commit to whatever choice of repository you care to send it to.

USAGE

On the FIRST RUN ONLY modify and run the initialize.sh script. This 
script sets up the repository that will be used for your archive.

Then, edit sitestoclone.txt for the list of sites you want to clone.

Then, run lampwick.sh - you'll want to schedule it in cron for daily 
execution.

REQUIREMENTS

wget, git, and sh; and some UNIX-like environment to run it in.
