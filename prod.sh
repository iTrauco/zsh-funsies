#!/usr/bin/env bash

# Function to print rainbow-colored loading dots
print_rainbow_dots() {
    colors=(31 33 32 36 34 35)  # Red, Yellow, Green, Cyan, Blue, Magenta
    for ((i = 0; i < 3; i++)); do
        echo -n " "
        for ((j = 0; j < 20; j++)); do
            color_index=$(( (i + j) % 6))
            echo -ne "\033[${colors[$color_index]}m●\033[0m"
            sleep 0.1
        done
        echo ""
    done
}

# Print loading screen
echo "==============================================="
echo "    🚀 Developed by Christopher Trauco 🦄"
echo "             Data Engineer 👷‍"
echo "==============================================="
echo "[Hello World!]"
echo "💻 LinkedIn: https://itrau.co/LinkedIn"
echo "📧 Email: hello@trau.co"
echo "🤖 GitHub: https://itrau.co/github"
echo "🐦 Twitter: https://itrau.co/twitter"
sleep 1

echo "✨ Initializing..."
print_rainbow_dots
sleep 1

echo "⚙️ Loading modules"
echo "🔧 Setting up the environment"
echo "🚀 Almost done..."
sleep 1
echo "🎉 Ready!"


# Sleep for 7 seconds before displaying the interactive shell prompts
sleep 7

# Main function to handle interactive shell prompts
main() {
    PS3="Choose an option: "
    options=("Install library into a new environment" "Destroy/uninstall current environment" "Use pre-existing session" "Load specific environment" "Generate sample code" "Exit")
    select opt in "${options[@]}"
    do
        case $opt in
            "Install library into a new environment")
                echo "Creating a fresh new sterile environment..."
                # Implement create_fresh_environment function here
                echo "Fresh environment created successfully."
                ;;
            "Destroy/uninstall current environment")
                echo "Destroying the testing environment currently in use..."
                # Implement destroy_environment function here
                echo "Testing environment destroyed successfully."
                ;;
            "Use pre-existing session")
                echo "Using pre-existing session..."
                # Implement use_existing_session function here
                echo "Pre-existing session loaded."
                ;;
            "Load specific environment")
                echo "Loading a specific environment..."
                # Implement load_specific_environment function here
                echo "Specific environment loaded."
                ;;
            "Generate sample code")
                echo "Generating sample code with the specified library..."
                # Implement generate_sample_code function here
                echo "Sample code generated successfully."
                ;;
            "Exit")
                break
                ;;
            *) echo "Invalid option. Please select again.";;
        esac
    done
}

# Call the main function to display the interactive shell prompts
main:
