## Pre-work - Tiptron
Tiptron is a tip calculator application for iOS.

Submitted by: Rajeev Ram

Time spent: 12 hours total (so far) as follows

2 hours: watching Swift tutorials; learning the language; practice code drills

2 hours: setting up project; learning XCode; basic/required functionality completed

6 hours: adding additional/optional functionality; research into Swift objects and design patterns; formatting graphics and UI; debugging and testing

2 hours: comments, documentation, walkthroughs

## User Stories
The following **required** functionality is complete:
* [X] User can enter a bill amount, choose a tip percentage, and see the tip and total values.

The following **optional** features are implemented:
(nothing yet)
* [X] Settings page to change the default tip percentage; **futhermore**, user can enter in a custom tip percentage. Custom percentage is saved through exit and restart.
* [X] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:
* [X] Choose from three differently colored themes that change the background and text. Choice is saved through exit and restart.
* [X] Launch screen when application is opened.

## Video Walkthrough 
Here's a GIF walkthrough of implemented user stories: <img src='https://imgur.com/i0guE4z.gif' title='Tiptron Video Walkthrough' width='' alt='Tip Calculator Walkthrough' />

made with [LiceCap](https://www.cockos.com/licecap/)

Here is a more thorough video presentation: (to-do: add Youtube Link)

## Notes
July 1st – This is my first project in iOS/Swift. Things that still confuse me: Optional types, Substring types are apparently different than String types.

July 2nd (Session One) – Spent a lot of time figuring out how to pass messages between views safely. Played around with the Delegation and Singleton design patterns but but neither was ideal. In the end, I decided just to pass the main view as a property to the secondary view, though this makes the design pretty rigid. The runtime navigation stack is helpful because it allows me to send properties backward.

July 2nd (Session Two) – Starting to get the hang of things and feel confident. The nuances of Optionals – and other Swift quirks – are starting to become clear to me. I've done thorough live-testing, too, and the debugging illuminates many things.

July 3rd – Played around some more event handlers, and to do a bit more debugging. Comments and documentation are mostly complete.

## License

    Copyright 2018 © Rajeev Ram

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
