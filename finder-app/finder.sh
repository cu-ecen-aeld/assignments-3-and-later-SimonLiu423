#!/bin/bash
if [ $# -ne 2 ]; then
    echo "Expected 2 arguments"
    exit 1
fi

filesdir=$1
searchstr=$2

# Check if the directory exists
if [ ! -d $filesdir ]; then
    echo "Directory does not exist"
    exit 1
fi

# Get # of files in the directory and # of files containing the search string
numfiles=$(ls $filesdir | wc -l)
numsearch=$(grep -l $searchstr $filesdir/* | wc -l)

# Print the results

echo "The number of files are $numfiles and the number of matching lines are $numsearch"