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
