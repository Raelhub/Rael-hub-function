local TranslationModule = {}

function TranslationModule:GetTabs()
    local Tab_Oceano = {
        name = "",
        section = "",
        button = ""
    }

    local Tab_ComedorCarne = {
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

        Tab_ComedorCarne.name = "Fase Comedores"
        Tab_ComedorCarne.section = "Pular essa fase dos comedores"
        Tab_ComedorCarne.button = "Pular comedores"

    elseif locale == "en-us" then
        Tab_Oceano.name = "Ocean Phase"
        Tab_Oceano.section = "Skip this ocean phase"
        Tab_Oceano.button = "Skip Ocean"

        Tab_ComedorCarne.name = "Feast Phase"
        Tab_ComedorCarne.section = "Skip this feast phase"
        Tab_ComedorCarne.button = "Skip Feast"

    elseif locale:sub(1, 2) == "es" then
        Tab_Oceano.name = "Fase del Océano"
        Tab_Oceano.section = "Saltar esta fase del océano"
        Tab_Oceano.button = "Saltar océano"

        Tab_ComedorCarne.name = "Fase Comedores"
        Tab_ComedorCarne.section = "Saltar esta fase de los comedores"
        Tab_ComedorCarne.button = "Saltar comedor"

    else
        Tab_Oceano.name = "Ocean Phase"
        Tab_Oceano.section = "Skip this ocean phase"
        Tab_Oceano.button = "Skip Ocean"

        Tab_ComedorCarne.name = "Feast Phase"
        Tab_ComedorCarne.section = "Skip this feast phase"
        Tab_ComedorCarne.button = "Skip Feast"

    end

    return Tab_Oceano, Tab_ComedorCarne
end

return TranslationModule