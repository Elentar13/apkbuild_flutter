# Panik: Automated APK Build and Deployment Script

This repository contains `panik.bat`, a batch script designed to streamline the process of building and deploying APKs for Android applications using Flutter. The script automates branch switching, code pulling, APK building, and installation on connected devices.

## Project Overview

The purpose of `panik.bat` is to simplify the workflow for developers by automating the following tasks:

1. Switching to the desired Git branch and fetching the latest changes.
2. Building an APK file for the specified development phase (development, production, or staging).
3. Uninstalling any existing APK from a connected Android device and installing the newly built APK.

## Script: `panik.bat`

### Features

1. **Git Operations**:
   - Switches to the specified Git branch.
   - Pulls the latest changes from the remote repository.

2. **Flutter Build**:
   - Builds an APK using the specified `main.dart` configuration for the selected phase (development, production, or staging).

3. **Android Deployment**:
   - Uninstalls any existing version of the app on the connected Android device.
   - Installs the newly built APK on the device.

### Prerequisites

1. **Flutter** installed and configured with the required dependencies for building Android apps.
2. **Android SDK** installed, with `adb` (Android Debug Bridge) properly configured.
3. Git installed and accessible through the command line.
4. The app's package identifier (`com.exevio.kastapp`) and paths are correctly set in the script.

### Usage

1. Clone the repository:

   ```bash
   git clone https://github.com/your-repository.git
   cd your-repository
   ```

2. Run the batch script:

   ```cmd
   panik.bat
   ```

3. Follow the prompts:
   - Enter the Git branch name to switch to (e.g., `main` or `feature-branch`).
   - Enter the development phase (`development`, `production`, or `staging`).

### Example

```cmd
Enter branch designation: feature-update-ui
Enter development phase (development/production/staging): production
```

The script will perform the following steps:
- Switch to `feature-update-ui` branch and pull the latest changes.
- Build the APK for the `production` phase using the appropriate configuration file.
- Deploy the APK to the connected Android device.

### Output

- The built APK will be located in: `build\app\outputs\apk\release\app-release.apk`
- The app will be installed on the connected Android device.

### Troubleshooting

1. Ensure the connected Android device has USB debugging enabled.
2. Verify `adb` is correctly configured and added to the system's PATH.
3. If the script fails to find the `lib/000_app/config/main_<phase>.dart` file, confirm that the correct configuration file exists in the specified location.

### License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Author

Denis Mijolović  
Master's in Industrial Engineering and Management  
[LinkedIn](https://www.linkedin.com/in/dmijolovic/)

