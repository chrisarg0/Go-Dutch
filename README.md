# CodePath Fall Cohort Pre-Work

**GoDutch** is a tip calculator application for iOS.

Submitted by: **Chris Argonish**

Time spent: **7** hours spent in total

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

<img src='GoDutchDemo.gif' title='Demo' width='' alt='Demo' />

GIF created with [LiceCap](http://www.cockos.com/licecap/)


## User Stories

The following **required** functionality is complete:
* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [x] Required: User can enter the bill amount
* [x] Required: User can select from three tip percentage options
* [x] Required: User can navigate to SettingsViewController from ViewController
* [x] Required: User can select and set their default tip percentage from the Settings Page
* [x] Required: Tip percentage value that is set in the Settings will persist on the home screen once the user selects the new default value and clicks "Save" button

The following **optional(additional)** features are implemented:
* [x] Optional: added a custom app icon image
* [x] Optional: added a custom splash screen
* [x] Optional: allow users to clear value from bill amount field while editing
* [x] Optional: set the billField as the first responder to maximize efficiency, leaving keyboard visible 
* [x] Optional: used custom icons for settings icon (on home page) and back icon (from settings modal)
* [x] Optional: used animated view properties to bring focus to bill amount text input when null
* [x] Optional: added custom font Salesforce Sans, and changed the font colors/sizes throughout the app
* [x] Optional: added a custom reminder that appears once a value is entered into the tip amount field
* [x] Optional: created a custom settings modal using objects from Salesforce Lighting Design System 
* [x] Optional: added toast on settings modal (once user clicks save) to communicate that the changes have been saved

## Notes

Describe any challenges encountered while building the app:
- [ ] Challenges: number formatter to place commas where appropriate
- [ ] Challenges: changing the default clear icon with custom icon
- [ ] Challenges: create more of a delayed animation once user updates their settings. ideally there would be three distinct animations: 1) toast message appears, 2) modal exits to bottom of screen, and 3) background image fades
- [ ] Challenges: making keyboard visible at all times (while on home page). when navigating from settings, I would like the keyboard to already be in its intended destination
- [ ] Challenges: tried animating my splash screen with little luck



## License

    Copyright [2016] [Chris Argonish]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
    
    Designs made with the Salesforce Lightning Design System (https://lightningdesignsystem.com/)
