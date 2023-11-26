local QBCore = exports['qb-core']:GetCoreObject()
local maxplayers = config.max_server

Citizen.CreateThread(function()
    while true do
        SetDiscordAppId(config.appid)
        SetRichPresence('Players: ')
        SetDiscordRichPresenceAsset(config.asset_big_icon)
        SetDiscordRichPresenceAssetText(config.asset_big_icon_text)

        if config.fivem_url ~= nil then
            SetDiscordRichPresenceAction(0, "Join", config.fivem_url)

            if config.discord_url ~= nil then
                SetDiscordRichPresenceAction(1, "Discord", config.discord_url)
            end
        else
            if config.discord_url ~= nil then
                SetDiscordRichPresenceAction(0, "Discord", config.discord_url)
            end
        end

        Citizen.Wait(60000)
    end
end)
Citizen.CreateThread(function()
    while true do
        QBCore.Functions.TriggerCallback('smallresources:server:GetCurrentPlayers', function(result)
            SetRichPresence('サーバー人数: '.. result ..' / ' ..maxplayers)
        end)
        Citizen.Wait(60000)
    end
end)