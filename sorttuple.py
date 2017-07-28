#!/usr/bin/python
a = [("Montpellier", "Nice"),("Marseille", "Pau"),("Paris", "Montpellier"),("Pau", "Paris")]

dicta  = dict(a);

# Reverse the hash
dictb = dict ( (v,k) for k, v in dicta.items() )

#Find the starting point of Tour the France Race
for k, v in dicta.items():
    if not (dictb.has_key(k)):
        start = k ;
        break;

#If we could not find a starting point, then something wrong with input
if not (start):
    print ("invalid input");
    exit;

#Once we have starting point, we simple need to go next, next of next using given hash map
to = dicta[start];
while (to):
    print (start +  "->" + to + "\n");
    start = to;
    if not (dicta.has_key(to)):
        break;
    to = dicta[to];
