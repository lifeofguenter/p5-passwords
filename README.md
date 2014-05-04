Passwords
=========

This package provides an easy to use API for the creation and management of
passwords in a secure manner.

This is no new invention and libraries have been existing since a long time to
achieve the same results. Unfortunately they might me easily overseen as they
are hidden in sub-namespaces, are dupes with different results or advocate
outdated algorithms (such as md5/sha1).

The goal of this package is to always offer the de-facto standard algorithm
while using the same namespace + subroutines, though adding subroutines to
ensure compatibility (see password_needs_rehash) with the different versions.

INSTALLATION
------------

To install this module, run the following commands:

```
    perl Makefile.PL
    make
    make test
    make install
```

or via cpan:

```
    cpan Passwords
```

SUPPORT AND DOCUMENTATION
-------------------------

After installing, you can find documentation for this module with the
perldoc command.

    perldoc Passwords

You can also look for information at:

* Github (report bugs here)
  https://github.com/lifeofguenter/p5-passwords

* Authors Website
  http://www.perlhipster.com/p5-passwords
        
DEPENDENCIES
------------

This module requires these other modules and libraries:

* Carp
* Crypt::Eksblowfish::Bcrypt
* Data::Entropy::Algorithms
        
AUTHOR
------

Günter Grodotzki <guenter@perlhipster.com>

ACKNOWLEDGEMENTS
----------------

* Andrew Main (for the Perl port of bcrypt)
    http://www.fysh.org/~zefram/
        
* The Authors of crypt_blowfish
    http://www.openwall.com/crypt/
        
* Anthony Ferrara
    https://github.com/ircmaxell/password_compat

LICENSE AND COPYRIGHT
---------------------

Copyright (C) 2014 Günter Grodotzki

This [library|program|code|module] is free software; you
can redistribute it and/or modify it under the same terms
as Perl 5.10.0. For more details, see the full text of the
licenses in the file LICENSE.

This program is distributed in the hope that it will be
useful, but without any warranty; without even the implied
warranty of merchantability or fitness for a particular purpose.