# Notes Management App

A Flutter application for managing notes with Firebase Cloud Firestore.

## Features

- **Create Notes**: Add new notes with title and description
- **View Notes**: Display all notes in a real-time list
- **Update Notes**: Edit existing notes
- **Delete Notes**: Remove notes from the database
- **Real-time Updates**: Changes reflect instantly

## Technologies Used

- Flutter
- Firebase Cloud Firestore
- Firebase Core

## CRUD Operations

| Operation | Method | Firestore Method |
|-----------|--------|------------------|
| Create | `addNote()` | `add()` |
| Read | `getNotes()` | `snapshots()` |
| Update | `updateNote()` | `update()` |
| Delete | `deleteNote()` | `delete()` |

## Setup Instructions

1. Create a Firebase project at https://console.firebase.google.com/
2. Enable Firestore in test mode
3. Add a web app to your Firebase project
4. Copy your Firebase configuration
5. Run the following commands:

```bash
flutter pub get
flutterfire configure
flutter run
