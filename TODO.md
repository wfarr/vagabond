# Matchers and Resources

* file (partially implemented)
  - needs has_content(Regexp) matcher
* package (partially implemented)
  - rpm support?
  - merge gem fu into package as well?
* service (partially implemented)
* user (needs implemented)
* group (needs implemented)
* cron (needs implemented)
* exec (needs implemented)
  - needs some method of logging output of all execs run somewhere... parse logs for chef/puppet runs?
  - needs ordering support (puppet dependency graph)
* mount (needs implemented)
  - is a fs mounted or not?
  - is it mounted in the right location?
  - are the mount options right?
  - is the mounted fs right?

# Gemification

* Jeweler for this, probably
