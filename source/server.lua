RegisterServerEvent("codexafk:afkkick")
AddEventHandler("codexafk:afkkick", function(kickMessage)
    local playerSource = source
    DropPlayer(playerSource, kickMessage)
end)

local pingLimit = 1400

RegisterServerEvent("codexafk:pingcheck")
AddEventHandler("codexafk:pingcheck", function()
    local ping = GetPlayerPing(source)
    if ping >= pingLimit then
        DropPlayer(source, "Ping is too high (Limit: " .. pingLimit .. " Your Ping: " .. ping .. ")")
    end
end)
