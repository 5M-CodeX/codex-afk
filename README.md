# CodeX AFK System

## Introduction

This is a simple AFK (Away From Keyboard) kick system for FiveM servers. It monitors player activity and kicks players who are inactive for a certain duration.

## Features

- Warns players when they are about to be kicked for being AFK.
- Kicks players who remain AFK for the specified time.
- Customizable warning and kick messages.
- Configurable time limit before kicking players.
- Optional ping check to kick players with high ping.

## Installation

1. Add `codex-afk` to your FiveM resource folder.
2. Modify the `Config` section in both scripts to customize the system according to your preferences.
3. Ensure that the resource is started in your server.cfg.

## Usage

Players will be warned if they are about to be kicked for being AFK. They can avoid being kicked by moving or interacting in the game. If they remain inactive for the specified time, they will be kicked.

Players can also use the `/notafk` command to reset the AFK timer and avoid being kicked.

## Configuration

You can customize the AFK kick system by modifying the `Config` section in the scripts. Here are some of the key configuration options:

- `secondsUntilKick`: Adjust the time limit for being AFK.
- `kickWarning`: Set to `true` to enable warnings.
- `checkRate`: The rate at which the system checks for player activity.
- `messages`: Configure warning and kick messages.

## Server Events

- `codexafk:afkkick`: Event to kick players for being AFK.
- `codexafk:pingcheck`: Event to check and kick players with high ping (optional).

## Credits

- [TheStoicBear](https://github.com/TheStoicBear)


