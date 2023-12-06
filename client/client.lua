local QBCore = exports['qb-core']:GetCoreObject()
local maxplayers = config.max_server

Citizen.CreateThread(function()
    while config.run do
        SetDiscordAppId(config.appid)
        SetRichPresence('サーバー人数: ')
        SetDiscordRichPresenceAsset(config.asset_big_icon)
        SetDiscordRichPresenceAssetText(config.asset_big_icon_text)

        if config.content_1 ~= nil then
            SetDiscordRichPresenceAction(0, config.content_1_text, config.content_1)

            if config.content_2 ~= nil then
                SetDiscordRichPresenceAction(1, content_2_text, config.content_2)
            end
        else
            if config.content_2 ~= nil then
                SetDiscordRichPresenceAction(0, content_2_text, config.content_2)
            end
        end

        Citizen.Wait(60000)
    end
end)

Citizen.CreateThread(function()
    while config.run do
        QBCore.Functions.TriggerCallback('smallresources:server:GetCurrentPlayers', function(result)
            SetRichPresence('サーバー人数: '.. result ..' / ' ..maxplayers)
        end)
        Citizen.Wait(60000)
    end
end)