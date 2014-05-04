#!/usr/bin/perl -w -I./Passwords/lib

use 5.010;
use strict;
use warnings;
use autodie;
use utf8; binmode STDOUT, ':utf8'; # carp bug, I should most probably use a more
                                   # recent perl version
use Passwords;
use Data::Dumper;

my $wrong_hash = '$2y$14$IjcoSdReyxyWRDB7A/QlOuJweSnGu2TZJ6Fl5Ro137NGVhggA/oSq';


# generate new password hash
my $correct_hash = password_hash('perlhipster');
say $correct_hash;


# verify password (correct)
if (password_verify('perlhipster', $correct_hash)) {
    say "ok";
} else {
    say "nok";
}

# verify password (wrong)
if (password_verify('perlhipster', $wrong_hash)) {
    say "ok";
} else {
    say "nok";
}

# check if we need to rehash
if (password_needs_rehash($correct_hash, PASSWORD_BCRYPT, ('cost' => 16))) {
    say 'needs rehash';
}

if (not password_needs_rehash($correct_hash, PASSWORD_BCRYPT)) {
    say 'does not need rehash';
}

# output password-hash info
my %info = password_get_info($correct_hash);
say Dumper(\%info);