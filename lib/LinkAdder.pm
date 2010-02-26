package LinkAdder;
use Mouse;

=head1 NAME

LinkAdder - The great new LinkAdder!

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

has 'db' => (is => 'rw', isa => 'HashRef');

=head1 SYNOPSIS

Quick summary of what the module does.

Perhaps a little code snippet.

    use LinkAdder;

    my $foo = LinkAdder->new();
	$foo->addDB(file);
	$str =	$foo->addLinks($string);

=head1 EXPORT

A list of functions that can be exported.  You can delete this section
if you don't export anything, such as for a purely object-oriented module.

=head1 FUNCTIONS

=head2 addDB

=cut

sub addDB {
	my ($self, $file) = @_;
	$self->db( do $file  );
}


sub addLinks {
	my ($self, $text) = @_;
	while ($text =~ /(.)?\b(\w+)\b(.)?/g) {
		print $1 if defined $1;
		if (exists $self->db->{lc $2}) {
			print '<a href="', $self->db->{lc $2}, '">', $2, '</a>';
		}
		else{ print $2 }
		print $3 if defined $3;
	}
}

__PACKAGE__->meta->make_immutable();

=head1 AUTHOR

Raimon Grau, C<< <raimonster at gmail.com> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-linkadder at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=LinkAdder>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.




=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc LinkAdder


You can also look for information at:

=over 4

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=LinkAdder>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/LinkAdder>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/LinkAdder>

=item * Search CPAN

L<http://search.cpan.org/dist/LinkAdder/>

=back


=head1 ACKNOWLEDGEMENTS


=head1 COPYRIGHT & LICENSE

Copyright 2010 Raimon Grau, all rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.


=cut

1; # End of LinkAdder
