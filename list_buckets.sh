#!/bin/bash

while true; do
    clear
    echo "Google Cloud Storage Bucket Listing Menu"
    echo "---------------------------------------"
    echo "1. List Buckets"
    echo "2. Exit"
    
    read -p "Enter your choice (1/2): " choice
    
    case $choice in
        1)
            # List Google Cloud Storage buckets
            gsutil ls
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

