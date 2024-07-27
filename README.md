# ChatApp

# Find the apk in the above files 

# Overview
This Flutter application provides a platform where users can register, log in, and chat with each other. It's a simple yet powerful chat app leveraging Firebase for authentication and real-time messaging. The app features a clean and intuitive user interface, making it easy for users to communicate seamlessly.

# Features
- User Authentication: Register and log in using email and password.
- Real-Time Messaging: Send and receive messages in real time.
- User Interface: Intuitive and user-friendly design with custom chat bubbles and a navigation drawer.
- Persistent Sessions: Users stay logged in until they explicitly log out.

# Technical Details
## Technologies Used
- Flutter: The app is built using Flutter, ensuring a cross-platform experience.
- Firebase Authentication: For handling user registration and login.
- Cloud Firestore: Used for storing and retrieving chat messages in real time.

# Key Components
- ChatBubble: A widget that represents individual chat messages with different styles for the current user and other users.
- MyButton: A reusable button widget.
- MyDrawer: A navigation drawer that includes options like Home and Logout.
- MyTextField: A reusable text field widget with customizable properties.
- UserTile: A widget that represents each user in the user list.

# Models
- Message: A model that represents a chat message with fields for sender ID, sender email, receiver ID, message content, and timestamp.

# Pages
- ChatPage: The main chat interface where users can send and receive messages.
- HomePage: Displays a list of users that the current user can chat with.
- LoginPage: The login interface.
- RegisterPage: The registration interface.
- SettingsPage: A placeholder for user settings (currently not implemented).

# Services
- AuthService: Handles user authentication, including login, registration, and logout.
- ChatService: Manages sending and retrieving chat messages from Cloud Firestore.

# Installation
1. Clone the repository.
2. Navigate to the project directory.
3. Run flutter pub get to install dependencies.
4. Configure Firebase for your Flutter project (add google-services.json for Android and GoogleService-Info.plist for iOS).
5. Run flutter run to start the application.






