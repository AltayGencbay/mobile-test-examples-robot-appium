# 📱 Mobile Tests with Robot Framework & Appium

This repository contains **end-to-end automated mobile tests** for **Android** and **iOS** using  
[Robot Framework](https://robotframework.org/) + [Appium](https://appium.io/).  
The tests cover **Login**, **Cart**, and other flows in [Sauce Labs Demo App](https://github.com/saucelabs/my-demo-app).

---

## 📌 Requirements

Before running tests, make sure you have the following installed:

- [Python 3.12+](https://www.python.org/downloads/)
- [pip](https://pip.pypa.io/en/stable/)
- [Node.js 20+](https://nodejs.org/)
- [Appium 3.x](https://appium.io/)  
  ```bash
  npm install -g appium@next
-  Appium Inspector
-  Git

Android
	•	Android Studio
	•	Android SDK + Emulator
	•	Example command to create and start emulator:

iOS (Mac only)
	•	Xcode
	•	Command Line Tools:
    xcode-select --install

- 	WebDriverAgent (installed with appium-xcuitest-driver)

---

## 📂 Project Structure
MOBILE TESTS/
│
├── AndroidLocators/         # Android element locators
├── AndroidStepDefinitions/  # Android step keywords
├── AndroidTestCases/        # Android test scenarios
│
├── iOSLocators/             # iOS element locators
├── iOSStepDefinitions/      # iOS step keywords
├── iOSTestCases/            # iOS test scenarios
│
├── venv/                    # Python virtual environment (ignored in git)
├── README.md
└── requirements.txt

---

## Installation

1. Clone the repo:
   ```bash
   git clone https://github.com/altaygencbay/mobile-tests-robot-appium.git
   cd mobile-tests-robot-appium

2.	Create a virtual environment:
   python3 -m venv venv
   source venv/bin/activate

3.	Install dependencies:
   pip install -r requirements.txt

---

## Running Tests
1. Android
robot Android/AndroidTestCases/test_android_login.robot

2. iOS
robot iOS/iOSTestCases/test_ios_login.robot

---

## Capabilities

# Android
{
  "platformName": "Android",
  "automationName": "UiAutomator2",
  "deviceName": "emulator-5554",
  "app": "/path/to/mda-2.2.0-25.apk",
  "noReset": false
}

# iOS
{
  "platformName": "iOS",
  "automationName": "XCUITest",
  "deviceName": "iPhone 14 Pro",
  "platformVersion": "18.6",
  "app": "/path/to/My Demo App.app",
  "noReset": false,
  "connectHardwareKeyboard": true
}

---

After test execution, Robot Framework generates:
	•	report.html
	•	log.html
	•	output.xml

Open report.html in your browser to view test results.

---

CI/CD (Future Integration)

This project can be extended with:
	•	GitHub Actions
	•	Bitrise (for mobile emulator/simulator support)

--- 

##Commands

# Start Appium Server
appium

# Android
robot Android/AndroidTestCases
robot -t "Login-01" Android/AndroidTestCases

# iOS
robot iOS/iOSTestCases
robot -t "Login-01" iOS/iOSTestCases

# Devices
List → xcrun simctl list devices

-- iOS 18.6 --
    iPhone 16 Pro (C9C89DF8-F4EE-4246-BD09-E6228C8B7AE3) (Shutdown) 
    iPhone 16 Pro Max (D8A17398-F9FD-473D-BAE8-233C3DB1BCEC) (Shutdown) 
    iPhone 16e (D9EDA896-284A-4231-A3E8-9C10172FCEF7) (Shutdown) 
    iPhone 16 (741C1FCC-8347-42F3-B4A3-BA7E60ECD4D4) (Shutdown) 
    iPhone 16 Plus (415341A7-5BE9-4D68-9F48-C0DE57F1234A) (Shutdown) 
    iPhone 14 Pro (4934E635-2F83-4C2B-9C04-49CE23CC88E0) (Shutdown) 
    iPad Pro 11-inch (M4) (E10B90C9-586A-4038-8FCE-A33B951A3F3F) (Shutdown) 
    iPad Pro 13-inch (M4) (7B52DDAB-BA10-4DED-8E22-BEC3DC50B42D) (Shutdown) 
    iPad mini (A17 Pro) (0F0514DB-0F02-41F6-A612-98BCF798DF03) (Shutdown) 
    iPad (A16) (B56DE406-273A-4B0A-A571-812481BE947E) (Shutdown) 
    iPad Air 13-inch (M3) (D84B6421-0C7C-4CDC-B2B4-912041073145) (Shutdown) 
    iPad Air 11-inch (M3) (1BE54C66-6819-414C-9388-078D413F57BE) (Shutdown)

# Start Emulator
xcrun simctl boot 4934E635-2F83-4C2B-9C04-49CE23CC88E0
open -a Simulator

# Robot Server
appium -p 4723

# Inspector Server
appium -p 4725 --allow-cors