local TranslationModule = {}

function TranslationModule:GetTabs()
    local Tab_Oceano = {
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
        Tab_Oceano.name = "Fase do Oceano"
        Tab_Oceano.section = "Pular essa fase do oceano"
        Tab_Oceano.button = "Pular oceano"

        Tab_Navio.name = "Fase do navio"
        Tab_Navio.section = "Teleportar para o navio"
        Tab_Navio.button = "Tp navio"

    elseif locale == "en-us" then
        Tab_Oceano.name = "Ocean Phase"
        Tab_Oceano.section = "Skip this ocean phase"
        Tab_Oceano.button = "Skip Ocean"

        Tab_Navio.name = "Ship phase"
        Tab_Navio.section = "Teleport to the ship"
        Tab_Navio.button = "Tp ship"

    elseif locale:sub(1, 2) == "es" then
        Tab_Oceano.name = "Fase del Océano"
        Tab_Oceano.section = "Saltar esta fase del océano"
        Tab_Oceano.button = "Saltar océano"

        Tab_Navio.name = "Fase de envío"
        Tab_Navio.section = "Teletransportarse al barco"
        Tab_Navio.button = "nave TP"

    else
        Tab_Oceano.name = "Ocean Phase"
        Tab_Oceano.section = "Skip this ocean phase"
        Tab_Oceano.button = "Skip Ocean"

        Tab_Navio.name = "Ship phase"
        Tab_Navio.section = "Teleport to the ship"
        Tab_Navio.button = "Tp ship"

    end

    return Tab_Oceano, Tab_Navio
end

return TranslationModule