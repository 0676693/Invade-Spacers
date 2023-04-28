# Project Overview

This game is a clone of the popular game; Space Invaders. The theme of this game is low-quality. There's something appealing about playing something so stupid and low-effort. The entire mobile ad space is currently full of these sort of ads, which seem to be working given this trend's longetivity. I thought I could try to replicate this effect with the graphics.

## The Graphics
Some of these examples of "low effort" graphics include a child's drawing of a rocket as the player sprite and PNGs of aliens digitally modified to make them look low-effort, which ironically took a substantial amount of time.

![Alien Enemy Sprite](Images/alien.png) ![Player Sprite](Images/playerchar.png)

The enemy sprite (left) and the player sprite (right).

## New Gameplay
The additional gameplay that is being included is a big boss enemy, multiple levels and some powerups. It is my hope that this creates a varied and interesting experience for the player, making no two run-throughs of the game the same.

### Powerups
Different powerups include the likes of which include faster fire rate, faster player movement, slower enemy movement and Soul Swap, which clears all the enemies currently on screen and restores defeated enemies, making alive enemies die and dead enimies alive. 

In order to make the powerups different every time, there will be a random one spawning every 30 seconds at a random location that the player must get to if they want to obtain it. Hopefully, this will mix up the gameplay from just shooting enemies.

### Multiple levels
There will hopefully be a variety of levels, getting increasingly more and more difficult as the player gets used to the game mechanics. This will culminate in a battle with the big boss.

### Big Boss
The big boss will be a gigantic alien that shoots out sporadic patterns of mini-bullets, instead of predictable larger ones. During this fight, a standard enemy will be on either side of the big boss, shooting at the sides to discourage the player from avoiding the attacks by hiding on the sides of the screen.

# Behaviour - User Journey
```mermaid
journey
    title User Journey

section Main Menu
    Press Start: 3: Main Menu
section Gameplay
    Start Playing: 3.5: Gameplay
    Clear Levels: 4.6: Gameplay
section End
    Win: 7.4: Gameplay
    Lose: 3: Gameplay

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

section Coding
Powerups: 01-05-23, 19-05-23
Multiple Levels: 02-05-23, 03-06-23
Big Boss: 12-05-23, 06-06-23
Programming Logic: 01-05-23, 30d

section Design
Project Overview:23-04-23, id
Project Plan: 18-04-23, 06-05-23
Design.md: 06-04-23, 06-05-23

section Schoolwork
Math Quiz: 11-05-23, 1d
English Creative Task: 22-05-23, 26-05-23
Success Assembly: 06-06-23, 1d
Assessment 3 Due: 07-06-23, 08-06-23
English Reflection Task: 08-06-23, 2d
Q2 Classes End: 16-06-23, 03-07-23
Q3 Classes Start: 15-07-23, 15-07-23
TESTS: 15-06-23, 23-06-23
```