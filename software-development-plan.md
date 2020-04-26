﻿# Coding Bootcamp Text Adventure


first commit	
## **DISCLAIMER**
**This game does not represent any one coding bootcamp. It is just an interpretation.
Also, the goal of this game is to graduate and get a job. Completing the basic obstacles in this game does not entitle anyone to these**




## Statement of Purpose

The goal was to develop a terminal application that resembles someone learning to code. A re-imagining of the experiences that programmers will face in a learning environment to some small degree. The game must provide challenges, fun, laughs, but most importantly, reiterate the values of Growth Mindset. The game is inspired from, more-or-less, every episode of the TV show Scrubs. This show provided challenges to the main character and laughs along the way, but majority of episodes, there was always something the main character learnt, a life lesson for example, which is what I hoped to encapsulate.

Finishing the game is when you have enough EXP to be able to look for a job, or depending on what you did through your journey, you may receive a job offer.

The problem I hoped to solve with my choice of a text adventure game, apart from the main concept of enjoyment, was to use the life lesson of having the user see the value of helping others. Because, not only do they get experience if they choose to, but they get to help another person along the way. I believe I managed to scratch the surface of this goal in the time frame provided. 

The audience for the game is mainly tailored towards a programmer. As the type of questions that are presented to the user throughout the game are coding based, so for a non-programmer, these would be quite difficult, still possible, but a lot more time consuming. This game is also specifically tailored towards a programmer who is in the learning stages. We are all always learning, but a new programmer is someone who faces these types of challenges every day, and these users will receive the most enjoyment for the game.

I had never developed a game myself which is why I chose to undertake my first one as a text adventure, which seemed appropriate for a terminal app as well. Putting enjoyment at the front of design (apart from UI) was a challenge I enjoyed. Also combining all the topics I had learnt so far into one coherent design, one helluva fun time.
<!-- word count 352 above, not including dot points -->



## Features

1. Player will face challenges involving 3 questions to level up

    There will be 3 main stages/levels throughout the game. Each stage will include 3 coding questions. These questions are to be somewhat challenging as I want the use to have to think about them, and maybe even Google them, without feeling like they are too hard that they can't do them. However, if they are a bit too hard, the player has options to ask for help, move on, or give up. The 'ask-for-help' method will first ask the player to Google themselves. After researching the question themselves, if they are still stuck, a hint will be provided to the player and the question will be asked again, with the option to earn the full amount of EXP for the Question. Also awarding bonus points if they succeed in finding the solution themselves.

2. Player can level up with extra activities

    After each of the 3 challenges/stages, the player will be provided with an option to earn extra EXP should they wish. Without them knowing, they will actually need to do these activities. This is because the level of EXP needed to complete the game is higher than just completing the challenges. This was chosen due to the resemblance in a Coding Bootcamp of the need to work on one's personal branding, portfolio and general programming skills in giving themselves the best chance in being able to acquire work after graduating. The extra activities mentioned will be options to work on their programming skills and personal branding. In the initial release, these will not have any functionality apart from a timer placed on them to resemble that doing these activities does actually take time in real life.

3. At multiple points the user is asked if they want to give up

    The need to include this feature is a must. Inside the game, it wont do much apart from display a message and exit the game. However, I always want this idea to be present when someone is facing a challenge due to the nature of it being present in our daily lives. It is always there, we always have that option to give up, but the most successful ones are the people who pursue through the toughest of challenges with lots of hard work. At the moment there is no extra plan to develop this feature further. Personally I hope no one chooses this option, however, it just kicks them from the game and they lose all progress. 

*Other Included Features*
- player will receive different amounts of EXP depending on how they complete the challenges
- if player does not not reach the desired EXP, they are required to undertake extra activities before completion to level up
- if player manages to get enough EXP, they reach a secret level where they are offered a job at the end of the game (because they worked hard during the course of their journey)
- there will be an enemy that can pop up multiple times in the game that reduces their EXP initially but they have the option to earn that EXP back and some, depending on how they react

**ADDITIONAL FEATURES**  

 *Nice to Have Features / Planning to Implement*
- Have EXP levels for each sub class of extra activities. They would contribute by having modifiers to the EXP that is earnt. e.g. Helping others would earn a different amount than racing through challenges. They would all be displayed in an RPG format when a player wants to see their characters level.
- The questions could be layered in 3 levels of difficulty, for now they are just kept all the same difficulty. e.g. There was a feature initially for a player to choose to start out as Advanced, or Beginner or a Noob. So the questions would start out a lot harder for the Advanced player. However this feature was put aside due to time constraints and it being there in a simple form without modifiers felt like cheating, for first release 
- add functionality to tweets/codewars and so forth, rather than just a wait func
- add more than 3 questions in to challenges
- display more ascii characters around, regarding a levels, extra activities and enemies
- add a stage and question number counter in the header
- add the ability for user to download their certificate of graduation at end of the game
- make some fake companies that they can apply for or receive a job offer from
- have different difficulties of questions as they level up
- player can choose to start out at different levels (Master, Advanced, Beginner and Noob) and they will receive difficult questions earlier





## USER INTERACTION (UI) and EXPERIENCE (UX)

The user will be welcomed with the game's logo and a tty-prompt to start the game to teach them how to play the game.

Doubling up on User Interaction and Error Handling, the use of the Ruby Gem 'tty-prompt' was chosen for its simplicity in navigating through the app (also giving the user knowledge on how to select the options), stopping the game loop and significantly reducing user input validation. Any time a user needs to input text, the use of recursion achieves our problem. Choosing specific moments for text input was included as well, specifically at the end of the game, and inputting their name. Using text input to restart the game means that the user has to remove their fingers from the Enter and Arrow keys, allowing them time to think about their answer. User validation and error handling has been enabled in these areas.
Keeping the game simple with easy navigation, colouring of text for different type of messages has allowed the look and feel of the app to be coherent and easy to understand for the user.

Here are some very early, extremely rough concepts of how I wanted the game to look. Don't just my hand-drawing design skills please.


![main-screen]()	

![challenge-screen]()	




## IMPLEMENTATION PLAN and PROJECT TIMELINE

### Control Flow Diagram

I have included 2 flow charts, my original, and my updated one. The updated one is fairly different, the underlying concept of the game is still there, but changed due to a change in development. This major change in development happened when challenges were discovered to not be as fun and interactive as originally planned. This change condensed the flow and also added a significant enjoyment bonus. There are 2 folders in the docs showing the differences. Below are 5 pictures:

1. Original game loop flow:

![original-game-loop-flow-screenshot](https://github.com/SimoSultan/coding-bootcamp-text-adventure/blob/master/docs/implementation-plan-trello-board.png)

2. Original challenges flow:

![original-challenges-flow-screenshot](https://github.com/SimoSultan/coding-bootcamp-text-adventure/blob/master/docs/implementation-plan-trello-board.png)

3. Updated game loop flow:

![updated-game-loop-flow-screenshot](https://github.com/SimoSultan/coding-bootcamp-text-adventure/blob/master/docs/updated-flow-chart/main-loop-flow.jpg)

4. Updated challenge flow:

![updated-challenge-flow-screenshot](https://github.com/SimoSultan/coding-bootcamp-text-adventure/blob/master/docs/updated-flow-chart/challenge-flow.jpg)


5. Updated Entire App Flow:

![updated-entire-app-flow-screenshot](https://github.com/SimoSultan/coding-bootcamp-text-adventure/blob/master/docs/updated-flow-chart/entire-app-flow.jpg)

### Trello Board 
<!-- Develop an implementation plan which:
- outlines how each feature will be implemented and a checklist of tasks for each feature
- prioritise the implementation of different features, or checklist items within a feature
- provide a deadline, duration or other time indicator for each feature or checklist/checklist-item
You must submit this as a written document, ideally in a tabular format, and it is suggested that you enter your checklists into an appropriate project management application to assist you in completing T1A2-10.
Your checklists for each feature should have at least 5 items. -->

Trello Board link below:
- [Trello Board](https://trello.com/b/hdiSXwWJ/codingbootcamptextadventure)


### Development Log
<!-- Write TWO status updates on your application. You must write a status update when:
- you significantly change a feature or your implementation plan at any point
- encounter a significant issue, challenge or roadblock
- are halfway through implementing the features
- prior to / after testing the application
You should submit these logs throughout the course of developing your application.
Each status report should be between 100 - 200 words.
The Development Log should be written in markdown and placed in a file named development-log.md in the root of your source control repository. Ensure you put the date of the log at the top of each log entry.
Please send your log to your educator as a markdown file as you complete them. This is so we can provide you with feedback. -->
Entire Dev Log link below:
- [Development log](https://github.com/SimoSultan/coding-bootcamp-text-adventure/blob/master/development-log.md)

### Halfway Through Status Update
----
### After Testing Status Update





## TIPS
T1A2-8	Apply DRY (Don’t Repeat Yourself) coding principles to all code produced.
T1A2-9	Apply all style and conventions for the programming language consistently to all code produced.
T1A2-10	Creates an application which runs without error and has features that are consistent with the development plan.

T1A2-11	Design a help file which includes a set of instructions which accurately describe how to use and install the application.
You must include:
- steps to install the application
- any dependencies required by the application to operate
- any system/hardware requirements
- a written explanation of the different features of the application
- The help file should be 100 - 200 words.

T1A2-12	Design TWO tests which check that the application is running as expected.
Each test should:
- cover a different feature of the application
- state what is being tested
- provide at least TWO test cases and the expected results for each test case
An outline of the testing procedure and cases should be included with the source code of the application and written in markdown.

T1A2-13	Utilise source control throughout the development of the application by:
- making regular commits (at least 20 commits) with a commit message that summarises the changes
- pushing all commits to a remote repository
- You must submit a source control repository as a zip file to satisfy this requirement.
- An outline of the testing procedure and cases should be included with the source code of the application and written in markdown.

T1A2-14	Utilise a project management platform to track the development of the application by:
- having features itemised and broken down into checklists
- setting deadlines, duration or a time-frame for each feature or task
- prioritising tasks
- You must submit screenshots, or a valid export from a project management application to satisfy this requirement. If you are using a non-standard project management application, please discuss with your trainer whether they can access the file. If in doubt, screen capture your project management application and submit screen captures.

T1A2-15	Utilise developer tools to automate the building and testing of the application by:
- writing a script which runs the tests
- writing a script which turns the application into an executable; OR
- packaging the application for use as a module or dependency
- You must submit a script file in with your source control repository to satisfy this requirement.

T1A2-16	Present your terminal application to the class. You must provide a walk-through of the logic of your application and how the application is used. The time limit for your presentation is 5 minutes.