local TranslationModule = {}

function TranslationModule:GetTabOficine()
    local Tab_Oficine = {
        name = "",
        section = "",
        button = ""
    }

    local Players = game:GetService("Players")
    local player = Players.LocalPlayer
    local locale = player.LocaleId:lower()

    if locale == "pt-br" then
        Tab_Oficine.name = "Tp sala"
        Tab_Oficine.section = "Teleportar para a sala"
        Tab_Oficine.button = "Teleportar pra sala"
    elseif locale == "en-us" then
        Tab_Oficine.name = "Tp room"
        Tab_Oficine.section = "Teleport to the room"
        Tab_Oficine.button = "Teleport to the room"
    elseif locale:sub(1, 2) == "es" then
        Tab_Oficine.name = "Tp habitación"
        Tab_Oficine.section = "Teletransportarse a la habitación"
        Tab_Oficine.button = "Teletransportarse a la habitación"
    else
        Tab_Oficine.name = "Tp room"
        Tab_Oficine.section = "Teleport to the room"
        Tab_Oficine.button = "Teleport to the room"
    end

    return Tab_Oficine
end

return TranslationModule