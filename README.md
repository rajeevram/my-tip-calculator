## Pre-work - Tiptron
Tiptron is a tip calculator application for iOS.
Submitted by: Rajeev Ram
Time spent: 7 hours spent in total (so far)

## User Stories
The following **required** functionality is complete:
* [X] User can enter a bill amount, choose a tip percentage, and see the tip and total values.

The following **optional** features are implemented:
(nothing yet)
* [X] Settings page to change the default tip percentage; user can enter in a custom tip amount. Custom amount is saved pased exit.
* [X] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:
* [X] Choose from differently three differently colored themes that change the background and text. Choice is saved past exit.
* [X] Launch screen when application is opened.

## Video Walkthrough 
Here's a GIF walkthrough of implemented user stories:
(will add soon)


## Notes
July 1st – This is my first project in iOS/Swift. Things that still confuse me: Optional types, Substring types are apparently different than String types. 
July 2nd (Session One) – Spent a lot of time figuring out how to pass messages between views safely. Played around with the Delegation and Singleton design patterns but but neither was ideal. In the end, I decided just to pass the main view as an optional view to the secondary view, though this makes the design pretty rigid. The runtime navigation stack is helpful because it allows me to send properties backward.
July 2nd (Session Two) – Starting to get the hang of things and feel confident. The nuances of optionals – and other Swift quirks – are starting to become clear to me. I've done thorough live-testing, too, and the debugging illuminates many things.

## License

    Copyright 2018 Rajeev Ram

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
