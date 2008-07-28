use strict;
use warnings;
package Data::Rx::CoreType::scalar;

sub check {
  my ($self, $value) = @_;

  return unless defined $value;
  return if ref $value and ! eval { $value->isa('JSON::XS::Boolean'); };
  return 1;
}

sub authority { '' }
sub type      { 'scalar' }

1;
