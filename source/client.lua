local time = Config.secondsUntilKick
local prevPos = GetEntityCoords(GetPlayerPed(-1), true)
local afkWarned = false -- Initialize afkWarned to false

Citizen.CreateThread(function()
    while true do
        Wait(1000)

        local playerPed = GetPlayerPed(-1)
        if playerPed then
            local currentPos = GetEntityCoords(playerPed, true)

            if currentPos == prevPos then
                if time > 0 then
                    if Config.kickWarning and time == math.ceil(Config.secondsUntilKick / 4) and not afkWarned then
                        TriggerEvent("chatMessage", "[Player Management]", {255, 0, 0}, string.format(Config.messages.warningMessage, time))
                        afkWarned = true -- Set afkWarned to true when warning is issued
                    end

                    time = time - 1
                else
                    local playerSource = PlayerId()

                    -- Check if the player has the required ACE permission
                    if IsPlayerAceAllowed(playerSource, Config.AcePerm) then
                        print("Player has the required ACE permission. Not kicking.")
                    else
                        if afkWarned then
                            TriggerServerEvent("codexafk:afkkick", Config.messages.kickMessage)
                        end
                    end
                end
            else
                time = Config.secondsUntilKick
                if afkWarned then
                    afkWarned = false -- Reset afkWarned when the player moves
                    TriggerEvent("chatMessage", "[Player Management]", {0, 255, 0}, Config.messages.resetMessage)
                end
            end

            prevPos = currentPos
        end
    end
end)


Citizen.CreateThread(function()
    while true do
        Wait(Config.checkRate)

        TriggerServerEvent("codexafk:pingcheck")
    end
end)
