# Project Overview

This game is a clone of the popular game; Space Invaders. The theme of this game is low-quality. There's something appealing about playing something so stupid and low-effort. The entire mobile ad space is currently full of these sort of ads, which seem to be working given this trend's longetivity. I thought I could try to replicate this effect with the graphics.

## The Graphics
Some of these examples of "low effort" graphics include a child's drawing of a rocket as the player sprite and PNGs of aliens digitally modified to make them look low-effort, which ironically took a substantial amount of time.

![Alien Enemy Sprite](Images/alien.png) ![Player Sprite](Images/playerchar.png)

The enemy sprite (left) and the player sprite (right).

## New Gameplay
The additional gameplay that is being included is a shrinking mechanic, a dash mechanic and  multiple levels. It is my hope that this creates a varied and interesting experience for the player, making no two run-throughs of the game the same.
I also hope that this will make the player feel like they have a good amount of tools in order to avoid enemy attacks.

### Multiple levels
There will hopefully be a variety of levels, which helps to give the player a sense of progress as they play through Invade Spacers. This will also make sure that the game isn't incredibly short.

### Dash Mechanic
I feel like a mechanic which lets a player dash could be a very interesting way to avoid enemy attacks. It'll have a pay-off, forcing the players to rush headfirst to another place on the screen, possibly into another enemy bullet.
It'll also be super quick, making it a 

### Shrinking Mechanic
I think a mechanic where the player can temporarily shrink themselves (more importantly, their collision shape) in order to avoid enemy attacks could work well. The caveat to this will be that their bullets shrink with them, making it harder to hit enemies in this state. 
Additionally, if they die while shrunk, their bullets will remain small when they respawn until they can shrink again and survive until they grow again.
This mechanic is inspired by Cuphead.

### Slow Bullets
I have decided to make the bulelts be fairly slow to promote accuracy over barraging. It will also help the game be an acute challenge, as there is a high probability that they will have to get used to the bullet speed, creating a small learning curve which, once mastered, will give the player a sense of accomplishment.

# Behaviour - User Journey
```mermaid
journey
    title User Journey

section Main Menu
    Press Start: 3: Main Menu
    Toggle Options: 3: Main Menu
section Gameplay
    Start Playing: 3.5: Gameplay
    Clear Levels: 4.6: Gameplay
section End
    Win: 7.4: Gameplay
    Lose: 3.1: Gameplay

```

# Planning Diagram - Project Plan

```mermaid
gantt
    title Project Plan
dateFormat DD-MM-YY
axisFormat %d-%B
tickInterval 2week

section Holidays
Holidays: 02-07-23, 15-07-23
Reconciliation Day: 29-05-23, 1d
King's Birthday: 12-06-23, 1d
D&D: 06-05-23, 1d

section Coding
Powerups: 01-05-23, 19-05-23
Multiple Levels: 02-05-23, 03-06-23
Shrinking Mechanics: 12-05-23, 06-06-23
Programming Logic: 01-05-23, 30d

section Design
Project Overview:23-04-23, id
Project Plan: 18-04-23, 06-05-23
Design.md: 06-04-23, 06-05-23
GANT Chart: 05-04-23, 08-05-23

section Schoolwork
Math Quiz: 08-05-23, 1d
English Creative Task: 22-05-23, 26-05-23
Success Assembly: 06-06-23, 1d
Assessment 3 Due: 07-06-23, 08-06-23
English Reflection Task: 08-06-23, 2d
Q2 Classes End: 16-06-23, 03-07-23
Q3 Classes Start: 15-07-23, 15-07-23
TESTS: 15-06-23, 23-06-23
WEX: 26-06-23, 01-07-23
```