Config = {}

-- Time settings
Config.secondsUntilKick = 180 -- Adjust the time limit here
Config.kickWarning = true -- Set to true to enable warnings
Config.checkRate = 1000
Config.AcePerm = "codex:nokick" -- ACE permission required to not get kicked for AFK

-- Messages
Config.messages = {
    warningMessage = "^1You'll be kicked in %d seconds for being AFK!",
    kickMessage = "^1You have been kicked for being AFK.",
    resetMessage = "^2You are no longer AFK.",
}
