#!/bin/bash

# Define the list of IP addresses in a file (one IP address per line)
ip_list_file="ip_list.txt"

# Check if the file exists
if [ ! -e "$ip_list_file" ]; then
  echo "IP list file '$ip_list_file' does not exist."
  exit 1
fi

# Loop through each IP address in the file
while read -r ip; do
  # Use nslookup to check DNS resolution
  result=$(nslookup "$ip")

  # Check if DNS resolution was successful
  if echo "$result" | grep -q "name"; then
    echo "IP address '$ip' resolves to:"
    echo "$result"
  else
    echo "IP address '$ip' does not resolve to a hostname."
  fi

  echo "-------------------"

done < "$ip_list_file"

