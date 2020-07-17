use v6.c;
unit class Math::Libgsl::Complex:ver<0.0.1>:auth<cpan:FRITH>;

=begin pod

=head1 NAME

Math::Libgsl::Raw::Complex - An interface to libgsl, the Gnu Scientific Library - complex numbers.

=head1 SYNOPSIS

=begin code :lang<perl6>

use Math::Libgsl::Raw::Complex :ALL;

=end code

=head1 DESCRIPTION

Math::Libgsl::Raw::Complex provides an interface to libgsl's implementation of complex numbers.

This package provides the low-level interface to the C library (Raw).

Math::Libgsl::Complex will not be implemented, because Raku's Complex datatype works just fine. Its Raw counterpart, Math::Libgsl::Raw::Complex, is present because it's needed by other modules that rely on the GSL implementation of complex numbers.

=head1 C Library Documentation

For more details on libgsl see L<https://www.gnu.org/software/gsl/>.
The excellent C Library manual is available here L<https://www.gnu.org/software/gsl/doc/html/index.html>, or here L<https://www.gnu.org/software/gsl/doc/latex/gsl-ref.pdf> in PDF format.

=head1 Prerequisites

This module requires the libgsl library to be installed. Please follow the instructions below based on your platform:

=head2 Debian Linux and Ubuntu 20.04

=begin code
sudo apt install libgsl23 libgsl-dev libgslcblas0
=end code

That command will install libgslcblas0 as well, since it's used by the GSL.

=head2 Ubuntu 18.04

libgsl23 and libgslcblas0 have a missing symbol on Ubuntu 18.04.
I solved the issue installing the Debian Buster version of those three libraries:

=item L<http://http.us.debian.org/debian/pool/main/g/gsl/libgslcblas0_2.5+dfsg-6_amd64.deb>
=item L<http://http.us.debian.org/debian/pool/main/g/gsl/libgsl23_2.5+dfsg-6_amd64.deb>
=item L<http://http.us.debian.org/debian/pool/main/g/gsl/libgsl-dev_2.5+dfsg-6_amd64.deb>

=head1 Installation

To install it using zef (a module management tool):

=begin code
$ zef install Math::Libgsl::Complex
=end code

=head1 AUTHOR

Fernando Santagata <nando.santagata@gmail.com>

=head1 COPYRIGHT AND LICENSE

Copyright 2020 Fernando Santagata

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

=end pod
