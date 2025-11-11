# Firebase Auth Flutter App

A complete Flutter application demonstrating Firebase Authentication with email/password authentication, user registration, profile management, and password changes.

## 🚨 **IMPORTANT: Firebase Setup Required**

This repository does **NOT** include Firebase configuration files for security reasons. You must set up your own Firebase project before running the app.

## Features

✅ **User Registration** - Create new accounts with email and password  
✅ **Sign In** - Login with existing credentials  
✅ **Password Reset** - Send password reset emails  
✅ **Profile Management** - View user information and change passwords  
✅ **Auto Navigation** - Automatic routing based on authentication state  
✅ **Input Validation** - Email format validation and password strength requirements  
✅ **Error Handling** - User-friendly error messages for all Firebase Auth errors  
✅ **Beautiful UI** - Modern Material Design 3 interface with tabs and cards  

## 🔥 Firebase Setup Instructions

### 1. Create a Firebase Project

1. Go to the [Firebase Console](https://console.firebase.google.com/)
2. Click "Add project" and follow the setup wizard
3. Once created, go to your project dashboard

### 2. Enable Authentication

1. In the Firebase Console, click on "Authentication" in the left sidebar
2. Click on the "Sign-in method" tab
3. Click on "Email/Password" and toggle it to "Enabled"
4. Save the changes

### 3. Configure Firebase for Flutter

#### Option A: Using FlutterFire CLI (Recommended)
```bash
# Install FlutterFire CLI
dart pub global activate flutterfire_cli

# Configure Firebase for your project
flutterfire configure
```

#### Option B: Manual Configuration
1. **For Android**:
   - Add an Android app in Firebase Console
   - Package name: `com.example.firebase_auth_app`
   - Download `google-services.json`
   - Place in `android/app/` directory

2. **For iOS**:
   - Add an iOS app in Firebase Console
   - Bundle ID: `com.example.firebaseAuthApp`
   - Download `GoogleService-Info.plist`
   - Place in `ios/Runner/` directory

3. **For Web**:
   - Add a Web app in Firebase Console
   - Copy the Firebase config object

4. **Create firebase_options.dart**:
   - Copy `lib/firebase_options_template.dart` to `lib/firebase_options.dart`
   - Replace placeholder values with your Firebase configuration
   - **Never commit this file to version control!**

## Getting Started

### Prerequisites

- Flutter SDK (3.9.2 or higher)
- Dart SDK
- Android Studio / Xcode (for mobile development)
- A Firebase project with Authentication enabled

### Installation

1. **Clone or download this project**

2. **Install dependencies:**
   ```bash
   cd firebase_auth_app
   flutter pub get
   ```

3. **Configure Firebase** (follow the Firebase Setup Instructions above)

4. **Run the app:**
   ```bash
   flutter run
   ```

## App Structure

```
lib/
├── main.dart                    # App entry point with Firebase initialization
├── firebase_options.dart        # Firebase configuration
├── services/
│   └── auth_service.dart        # Firebase Authentication service
├── screens/
│   ├── auth_screen.dart         # Login/Registration screen with tabs
│   └── profile_screen.dart      # User profile and settings
└── widgets/
    ├── email_password_form.dart # Sign-in form widget
    └── register_email_section.dart # Registration form widget
```

## Usage

### Registration
1. Open the app and switch to the "Register" tab
2. Enter a valid email address
3. Create a password (minimum 6 characters)
4. Confirm your password
5. Tap "Register" to create your account

### Sign In
1. Switch to the "Sign In" tab
2. Enter your registered email and password
3. Tap "Sign In" to log in
4. Use "Forgot Password?" to reset your password if needed

### Profile Management
1. After signing in, you'll see your profile screen
2. View your email address and verification status
3. Expand "Change Password" to update your password
4. Use the "Sign Out" button to log out

### Navigation
- The app automatically shows the authentication screen for logged-out users
- Successfully authenticated users are automatically taken to the profile screen
- Navigation state is preserved across app restarts

## Dependencies

- `firebase_core`: Firebase SDK core functionality
- `firebase_auth`: Firebase Authentication
- `cloud_firestore`: Cloud Firestore (for future data storage)
- `provider`: State management
- `cupertino_icons`: iOS-style icons

## Security Features

- ✅ Password requirements (minimum 6 characters)
- ✅ Email format validation
- ✅ Password confirmation validation
- ✅ Re-authentication for password changes
- ✅ Secure Firebase Auth backend
- ✅ Error handling for all authentication scenarios

## Error Handling

The app includes comprehensive error handling for common Firebase Auth scenarios:

- Invalid email format
- Weak passwords
- Email already in use
- User not found
- Wrong password
- Network errors
- Account disabled
- Too many requests

## Customization

### Styling
- The app uses Material Design 3 with a purple theme
- Colors and styling can be customized in `main.dart` in the `ThemeData`
- Form layouts and card designs can be modified in the widget files

### Features
- Add email verification flow
- Implement additional sign-in providers (Google, Apple, etc.)
- Add user profile data storage with Firestore
- Implement push notifications
- Add password strength indicators

## Troubleshooting

### Common Issues

1. **"Firebase app not initialized" error:**
   - Ensure `Firebase.initializeApp()` is called in `main()` before `runApp()`
   - Check that firebase_options.dart has correct configuration

2. **Authentication not working:**
   - Verify that Email/Password is enabled in Firebase Console
   - Check that your app's package name/bundle ID matches Firebase configuration

3. **Build errors:**
   - Run `flutter clean` then `flutter pub get`
   - Ensure all Firebase configuration files are in correct locations

4. **Hot reload not working:**
   - Restart the app completely after Firebase configuration changes
   - Some Firebase changes require a full restart

### Getting Help

- [Firebase Documentation](https://firebase.google.com/docs/flutter/setup)
- [Flutter Documentation](https://docs.flutter.dev/)
- [Firebase Auth Flutter Documentation](https://firebase.flutter.dev/docs/auth/usage/)

## License

This project is created for educational purposes. Feel free to use and modify as needed.
