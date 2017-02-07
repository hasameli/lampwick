# lampwick
Lampwick is a simple way to clone and archive sites, and track changes.

It consists of a shell script that can be automated via cron that will spider whichever sites you name in the input file, saving their contents and the contents of their first level of links to a local directory. 

It will then track any changes via git, and commit to whatever choice of repository you care to send it to.
