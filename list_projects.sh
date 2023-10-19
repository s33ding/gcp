#!/bin/bash

while true; do
    clear
    echo "Google Cloud Storage Configuration Menu"
    echo "-------------------------------------"
    echo "1. Set Default Project ID"
    echo "2. List Google Cloud Storage Buckets"
    echo "3. Exit"
    
    read -p "Enter your choice (1/2/3): " choice
    
    case $choice in
        1)
            # Prompt the user for the Google Cloud project ID
            read -p "Enter your Google Cloud project ID: " project_id
            
            # Set the default project ID for gsutil
            gcloud config set project "$project_id"
            
            # Verify the configuration
            current_project=$(gcloud config get-value project)
            echo "Default project ID is set to: $current_project"
            ;;
        2)
            # List Google Cloud Storage buckets
            gsutil ls
            ;;
        3)
            # Exit the script
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid choice. Please enter 1, 2, or 3."
            ;;
    esac
    
    read -p "Press Enter to continue..."
done

