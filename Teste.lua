local TranslationModule = {}

function TranslationModule:GetTabs()
    local Tab_Oficine = {
        name = "",
        section = "",
        button = ""
    }

    local Tab_Navio = {
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

        Tab_Navio.name = "Fase do navio"
        Tab_Navio.section = "Teleportar para o navio"
        Tab_Navio.button = "Tp navio"

    elseif locale == "en-us" then
        Tab_Oficine.name = "Tp room"
        Tab_Oficine.section = "Teleport to the room"
        Tab_Oficine.button = "Teleport to the room"

        Tab_Navio.name = "Ship phase"
        Tab_Navio.section = "Teleport to the ship"
        Tab_Navio.button = "Tp ship"

    elseif locale:sub(1, 2) == "es" then
        Tab_Oficine.name = "Tp habitación"
        Tab_Oficine.section = "Teletransportarse a la habitación"
        Tab_Oficine.button = "Teletransportarse a la habitación"

        Tab_Navio.name = "Fase de envío"
        Tab_Navio.section = "Teletransportarse al barco"
        Tab_Navio.button = "nave TP"

    else
        Tab_Oficine.name = "Tp room"
        Tab_Oficine.section = "Teleport to the room"
        Tab_Oficine.button = "Teleport to the room"

        Tab_Navio.name = "Ship phase"
        Tab_Navio.section = "Teleport to the ship"
        Tab_Navio.button = "Tp ship"

    end

    return Tab_Oficine, Tab_Navio
end

return TranslationModule