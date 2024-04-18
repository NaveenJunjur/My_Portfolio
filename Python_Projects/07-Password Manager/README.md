## Password Manager

The Password Manager is a Python command-line application that allows users to manage their passwords securely. It uses the Fernet encryption from the `cryptography` library to encrypt and decrypt passwords. Users can create a new encryption key, load an existing key, create a password file, load an existing password file, add new passwords, and retrieve passwords for specific sites.

### Features

- **Encryption**: Uses Fernet encryption to securely store passwords.
  
- **Key Management**: Allows users to create or load encryption keys for password encryption and decryption.
  
- **Password File Management**: Enables users to create or load password files containing encrypted passwords.
  
- **Add and Retrieve Passwords**: Provides options to add new passwords and retrieve passwords for specific sites.

### How It Works

1. **Encryption Key**: Users can create a new encryption key or load an existing key.
  
2. **Password File**: Users can create a new password file or load an existing password file containing encrypted passwords.
  
3. **Add Password**: Users can add new passwords to the password file.
  
4. **Retrieve Password**: Users can retrieve passwords for specific sites from the password file.

### Technologies Used

- **Python**: The primary programming language used for the project.
  
- **cryptography**: Python library for encryption and decryption using Fernet.
