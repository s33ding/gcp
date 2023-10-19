#!/bin/bash

while true; do
    clear
    echo "Google Cloud Storage Authentication Menu"
    echo "-------------------------------------"
    echo "1. Interactive Authentication (gcloud auth login)"
    echo "2. Service Account Key-Based Authentication"
    echo "3. Exit"
    
    read -p "Enter your choice (1/2/3): " choice
    
    case $choice in
        1)
            # Interactive authentication with gcloud auth login
            gcloud auth login
            ;;
        2)
            # Service Account Key-Based Authentication
            read -p "Enter the path to your service account key JSON file: " key_path
            export GOOGLE_APPLICATION_CREDENTIALS="$key_path"
            
            # Verify the authentication
            current_account=$(gcloud config get-value account)
            echo "Authenticated as: $current_account"
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

