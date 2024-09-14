## my $a = 5; declares a scalar variable $a and assigns it the value 5.
## my $b = 10; declares another scalar variable $b and assigns it the value 10.
## my $sum = $a + $b; declares a third scalar variable $sum and assigns it the result of the addition of $a and $b, which is 15.
## print "$sum\n"; prints the value of $sum followed by a newline character (\n)


#Arithmetic
my $a = 5;
my $b = 10;
my $sum = $a + $b;
print "$sum\n";

#Function
sub add {
    my ($a, $b) = @_;
    return $a + $b;
}

print add(5, 10), "\n";

#Conditionals if-else
my $number = 10;
if ($number > 5) {
    print "Greater than 5\n";
} else {
    print "5 or less\n";
}

# Loops
for my $i (0 .. 4) {
    print "$i\n";
}

# Data Structures
my @numbers = (1, 2, 3, 4, 5);
foreach my $number (@numbers) {
    print "$number\n";
}
