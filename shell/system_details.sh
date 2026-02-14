#!/bin/bash

<<usage
Creates function for system information
- Ram Used
- Storage used
- Top Processes
usage

check_memory() {
	free -h | awk 'NR==2 {print $7}'
}

check_storage() {
	df -h | awk 'NR==2 {print $4}'
}

check_most_mem_consuming_process() {
	ps aux --sort=-%mem | awk 'NR==2 {print $1,$2,$4}'
}

show_details() {

	echo "============SYSTEM DETAILS==============="
	echo "Available Memory"
		check_memory
	echo "Available Storage"
		check_storage
	echo "Top Memory Consuming Process"
	check_most_mem_consuming_process
}
show_details
