#!/bin/bash
#Generate a unique 4-digit integer

# Initialize an array to store the digits
digits=()

# Prompt the user to enter 4 digits, one by one
echo "Enter 4 digits one by one:"

for i in {1..4}; do
    read -p "Enter digit $i: " d
    
    # Check if the input is a valid single digit
    if [[ ! "$d" =~ ^[0-9]$ ]]; then
        echo "Invalid input. Please enter a single digit."
        exit 1
    fi
    
    # Store the digit in the array
    digits+=("$d")
done

# Shuffle the digits randomly using 'shuf' and store the result
shuffled=$(echo ${digits[@]} | tr ' ' '\n' | shuf | tr -d '\n')

# Display the unique 4-digit number formed from shuffled digits
echo "The unique 4-digit number is: $shuffled"


# Calculate SHA-256 hash of the input
echo -n "$shuffled" | sha256sum | awk '{ print $1 }'

##NOTE: In order to isolate the hash from the rest of this programs' output, I used the commands:

## bash hash_script.sh > output.txt
## tail -n 1 output.txt > hash_output.txt

