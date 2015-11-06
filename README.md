what's new
=======
fork from 'https://github.com/transcode-open/apt-cyg' (commit 395caa566, on Sep 7)

to 'https://github.com/balanx/apt-cyg'

2015-11-6

add command 'upgrade', and scrip 'postinstall'.

say bye-bye with the problem like,

        3004094 [main] bash 7712 fork: child -1 - forked process 4840 died unexpectedly, retry 0, exit code 0xC0000005, errno 11
        ./apt-cyg: fork: retry: Resource temporarily unavailable

        2 [main] bash 7556 child_info_fork::abort: F:\Cygwin\bin\cygncursesw-10.dll: Loaded to different address: parent(0x6F7A0000) != child(0x6DF00000)
        ./apt-cyg: fork: retry: Resource temporarily unavailable

-------

apt-cyg
=======

apt-cyg is a Cygwin package manager. It includes a command-line installer for
Cygwin which cooperates with Cygwin Setup and uses the same repository.

Operations
----------

~~~
install
  Install package(s).

upgrade
  upgrade package(s).

remove
  Remove package(s) from the system.

update
  Download a fresh copy of the master package list (setup.ini) from the
  server defined in setup.rc.

download
  Retrieve package(s) from the server, but do not install/upgrade anything.

show
  Display information on given package(s).

depends
  Produce a dependency tree for a package.

rdepends
  Produce a tree of packages that depend on the named package.

list
  Search each locally-installed package for names that match regexp. If no
  package names are provided in the command line, all installed packages will
  be queried.

listall
  This will search each package in the master package list (setup.ini) for
  names that match regexp.

category
  Display all packages that are members of a named category.

listfiles
  List all files owned by a given package. Multiple packages can be specified
  on the command line.

search
  Search for downloaded packages that own the specified file(s). The path can
  be relative or absolute, and one or more files can be specified.

searchall
  Search cygwin.com to retrieve file information about packages. The provided
  target is considered to be a filename and searchall will return the
  package(s) which contain this file.
~~~

Quick start
-----------

apt-cyg is a simple script. To install:

    $ install apt-cyg /bin
    $ install postinstall /bin
    $ cp postinstall.bat /

Example use of apt-cyg:

    apt-cyg install nano
