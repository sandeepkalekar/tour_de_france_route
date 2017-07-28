#!/usr/bin/perl
%hash = ();
$hash{"Montpellier"} = "Nice";
$hash{"Marseille"} = "Pau";
$hash{"Paris"} = "Montpellier";
$hash{"Pau"} = "Paris";

# Reverse the hash
%hash2 = ();
while (($key, $value) = each %hash) {
   $hash2{$value}=$key;
}

#Find the starting point of Tour the France Race
$start = ()  ;
foreach my $key (keys(%hash)) {
    if (! exists($hash2{$key})){
        $start = $key ;
        last;
    }
}

#If we could not find a starting point, then something wrong with input
if ($start eq undef)
{
    print"Invalid Input";
    exit 0;
}

#Once we have starting point, we simple need to go next, next of next using given hash map
$to = $hash{$start};

while ($to ne undef)
{
    print $start .  "->" . $to . "\n";
    #print "$start -> $to \n";
    $start = $to;
    $to = $hash{$to};
}
