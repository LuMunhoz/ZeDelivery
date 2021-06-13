*** Settings ***
Library AppiumLibrary

*** Variables ***
# Setup do device
${REMOTE_URL}          http://localhost:4723/wd/hub
${PLATFORM_NAME}       Android
${PLATFORM_VERSION}    10.0
${DEVICE_NAME}         Pixel 2 API R
${APP_PACKAGE}         com.google.android.youtube
${APP_ACTIVITY}        com.google.android.youtube.HomeActivity
${AUTOMATION_NAME}     appium

*** Test Cases ***
Open App
    Open Youtube

*** Keywords ***
Open Youtube
    Open Application    ${REMOTE_URL}                platformName=${PLATFORM_NAME}                            platformVersion=${PLATFORM_VERSION}
    ...                 deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}	appActivity=${APP_ACTIVITY}    automationName=${AUTOMATION_NAME}
