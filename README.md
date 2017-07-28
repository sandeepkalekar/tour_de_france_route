# tour_de_france_route

The repository includes scripts sorttuples.pl and sorttuples.py

The script takes the random list of city pair through which Tour the France go. The output is exact route of the cycle race where the first name is the starting city
"Montpellier" -> "Nice"
"Marseille" -> "Pau"
"Paris"    -> "Montpellier"
"Pau"  -> "Paris"

perl sorttuples.pl
Marseille->Pau
Pau->Paris
Paris->Montpellier
Montpellier->Nice

python sorttuple.py
Marseille->Pau
Pau->Paris
Paris->Montpellier
Montpellier->Nice


Workflow -
The tour de france programming puzzle -
Step 1. Create the hash (with left element as key and right element as value). 
Step 2. Revert the hash, looped the hash, to check of the key exists in the reverse hash, since the start city won't exists as a to city). 
Step 3. Once we get the start city, we looped through the hash to print route.
