## Start Appium Server
appium

## Android
robot Android/AndroidTestCases
robot -t "Login-01" Android/AndroidTestCases

## iOS
robot iOS/iOSTestCases
robot -t "Login-01" iOS/iOSTestCases

## Tap coordinate (example)
Tap With Positions    200    780


## Devices
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

xcrun simctl boot 4934E635-2F83-4C2B-9C04-49CE23CC88E0
open -a Simulator

## Robot Server
appium -p 4723

## Inspector Server
appium -p 4725 --allow-cors