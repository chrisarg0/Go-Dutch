# GoDutch

Time spent: 7 hours spent in total

Demo of user stories:

<img src='GoDutchDemo.gif' title='Demo' width='' alt='Demo' />

Completed user stories:

* [x] Required: User can enter the bill amount
* [x] Required: User can select from three tip percentage options
* [x] Required: User can navigate to SettingsViewController from ViewController
* [x] Required: User can select and set their default tip percentage from the Settings Page
* [x] Required: Tip percentage value that is set in the Settings will persist on the home screen once the user selects the new default value and clicks "Save" button

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

- [ ] Challenges: number formatter to place commas where appropriate
- [ ] Challenges: changing the default clear icon with custom icon
- [ ] Challenges: create more of a delayed animation once user updates settings. ideally there would be three distinct animations: 1) toast message appears, 2) modal exits to bottom of screen, and 3) background image fades
- [ ] Challenges: making keyboard visible at all times (while on home page). when navigating from settings, I would like the keyboard to already be in its intended destination
- [ ] Challenges: tried animating my splash screen with little luck


GIF created with [LiceCap](http://www.cockos.com/licecap/)
Designs made with the Salesforce Lightning Design System (https://lightningdesignsystem.com/)
