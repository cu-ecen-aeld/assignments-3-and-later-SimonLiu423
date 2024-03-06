if [ $# -ne 2 ]; then
    echo "Expected 2 arguments"
    exit 1
fi

writefile=$1
writestr=$2

# Create dirs and file if not exist, print message and exit 1 if cannot be created
mkdir -p $(dirname $writefile) || { echo "Cannot create directory"; exit 1; }
touch $writefile || { echo "Cannot create file"; exit 1; }

# Write to file
echo $writestr > $writefile

# Write to file
echo $writestr > $writefile
