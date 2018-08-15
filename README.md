## Pre-work - Tiptron
Tiptron is a tip calculator application for iOS. (And my first ever project in Swift!)

Submitted by: Rajeev Ram

## User Stories

* [X] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [X] Settings page to change the default tip percentage; **futhermore**, user can enter in a custom tip percentage. Custom percentage is saved through exit and restart.
* [X] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.
* [X] Choose from three differently colored themes that change the background and text. Choice is saved through exit and restart.
* [X] Launch screen when application is opened.

## Video Walkthrough 
Here's a GIF walkthrough of implemented user stories: 

<img src='https://imgur.com/i0guE4z.gif' title='Tiptron Video Walkthrough' width='' alt='Tip Calculator Walkthrough' />

Here is a more comprehensive video presentation: https://youtu.be/OIb5PWBb7M8 

Download the [accompanying presentation slides](https://drive.google.com/file/d/1zJz6Bw3VLUWNzCPGt_Wbdr30ccWGT3Ld/view?usp=sharing) to scroll through while you watch.

## Notes
July 1st – This is my first project in iOS/Swift. Things that still confuse me: Optional types, Substring types are apparently different than String types.

July 2nd (Session One) – Spent a lot of time figuring out how to pass messages between views safely. Played around with the Delegation and Singleton design patterns but but neither was ideal. In the end, I decided just to pass the main view as a property to the secondary view, though this makes the design pretty rigid. The runtime navigation stack is helpful because it allows me to send properties backward.

July 2nd (Session Two) – Starting to get the hang of things and feel confident. The nuances of Optionals – and other Swift quirks – are starting to become clear to me. I've done thorough live-testing, too, and the debugging illuminates many things.

July 3rd – Played around some more event handlers, and to do a bit more debugging. Comments and documentation are mostly complete. Prepared slides and finished video walkthrough.

## License

    Copyright 2018 © Rajeev Ram
