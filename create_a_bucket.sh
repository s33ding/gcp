#!/bin/bash

while true; do
    clear
    echo "Google Cloud Storage Bucket Creation Menu"
    echo "---------------------------------------"
    echo "1. Create a New Bucket"
    echo "2. Exit"
    
    read -p "Enter your choice (1/2): " choice
    
    case $choice in
        1)
            # Prompt the user for the new bucket name
            read -p "Enter a name for the new bucket: " new_bucket_name

            # Create a new Google Cloud Storage bucket
            gsutil mb gs://"$new_bucket_name"
            ;;
        2)
            # Exit the script
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid choice. Please enter 1 or 2."
            ;;
    esac
    
    read -p "Press Enter to continue..."
done

