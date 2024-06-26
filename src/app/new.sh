# #!/bin/bash

# # Function to check if a command exists
# command_exists() {
#     command -v "$1" >/dev/null 2>&1
# }

# # Function to exit with an error message
# exit_with_error() {
#     echo "$1"
#     exit 1
# }

# # Update package lists
# sudo apt update

# # Install Node.js and npm if they are not installed
# if ! command_exists node; then
#     echo "Node.js is not installed. Installing Node.js..."
#     sudo apt install -y nodejs || exit_with_error "Failed to install Node.js."
# fi

# if ! command_exists npm; then
#     echo "npm is not installed. Installing npm..."
#     sudo apt install -y npm || exit_with_error "Failed to install npm."
# fi

# # Install Angular CLI globally if it is not installed
# if ! command_exists ng; then
#     echo "Angular CLI is not installed. Installing Angular CLI..."
#     sudo npm install -g @angular/cli || exit_with_error "Failed to install Angular CLI."
# fi

# # Define the target directory
# TARGET_DIR="/home/manishk/angular_deploy/angular_full_ci"

# # Clone the Angular project repository if the directory does not exist
# if [ ! -d "$TARGET_DIR" ]; then
#     mkdir -p "$TARGET_DIR" || exit_with_error "Failed to create target directory."
#     git clone https://gitlab.com/ultimate_new/angular_full_ci.git "$TARGET_DIR" || exit_with_error "Failed to clone repository."
# else
#     echo "Target directory already exists. Skipping clone."
# fi

# cd /home/manishk/angular_deploy/angular_full_ci


# # Navigate to the directory of your Angular application
# cd "$TARGET_DIR" || exit_with_error "Failed to navigate to target directory."

# # Install dependencies
# npm install || exit_with_error "Failed to install npm dependencies."

# # Start the Angular development server using Angular CLI
# ng serve --open || exit_with_error "Failed to start Angular development server."













# #!/bin/bash

# # Function to check if a command exists
# command_exists() {
#     command -v "$1" >/dev/null 2>&1
# }

# # Function to exit with an error message
# exit_with_error() {
#     echo "$1"
#     exit 1
# }

# # Update package lists
# sudo apt update

# # Install OpenJDK if not installed
# if ! command_exists java; then
#     echo "Java is not installed. Installing OpenJDK..."
#     sudo apt install -y openjdk-11-jdk || exit_with_error "Failed to install OpenJDK."
# fi

# # Install Maven if not installed
# if ! command_exists mvn; then
#     echo "Maven is not installed. Installing Maven..."
#     sudo apt install -y maven || exit_with_error "Failed to install Maven."
# fi

# # Install Git if not installed
# if ! command_exists git; then
#     echo "Git is not installed. Installing Git..."
#     sudo apt install -y git || exit_with_error "Failed to install Git."
# fi

# # Define the target directory
# TARGET_DIR="/home/manishk/spring_project"

# # Clone the Spring project repository if the directory does not exist
# if [ ! -d "$TARGET_DIR" ]; then
#     mkdir -p "$TARGET_DIR" || exit_with_error "Failed to create target directory."
#     git clone https://gitlab.com/ultimate_new/java_full_ci.git "$TARGET_DIR" || exit_with_error "Failed to clone repository."
# else
#     echo "Target directory already exists. Skipping clone."
# fi

# # Navigate to the directory of your Spring project
# cd "$TARGET_DIR" || exit_with_error "Failed to navigate to target directory."

# # Modify the application.properties file to change the port number
# APPLICATION_PROPERTIES_FILE="src/main/resources/application.properties"

# if [ ! -f "$APPLICATION_PROPERTIES_FILE" ]; then
#     echo "server.port=8092" > "$APPLICATION_PROPERTIES_FILE"
# else
#     if grep -q "^server.port=" "$APPLICATION_PROPERTIES_FILE"; then
#         sed -i 's/^server.port=.*/server.port=8092/' "$APPLICATION_PROPERTIES_FILE"
#     else
#         echo "server.port=8092" >> "$APPLICATION_PROPERTIES_FILE"
#     fi
# fi

# # Build the project
# mvn clean install || exit_with_error "Failed to build the project."

# # Run the Spring Boot application
# mvn spring-boot:run || exit_with_error "Failed to start the Spring Boot application."

# echo "Spring Boot application is running on port 8082. You can access it in the browser."

# # End of script
