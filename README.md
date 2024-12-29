# Exercise 4: GitHashing Exercise

In this project we generate a 4-digit integer and use it as input in a hashing algorithm.
Specifically, we created a script called hash_script.sh , which accepts 4 digits, one by one, as input, and shuffles them to make a unique 4-digit integer.
It then uses this newly generated 4-digit integer as input for the hashing algorithm SHA-256 and prints the hash.
In order to isolate the hash from the rest of the scripts' output, and save it in a file named hash_output.txt, the following commands must be used in the command line:
bash hash_script.sh > output.txt
tail -n 1 output.txt > hash_output.txt 
