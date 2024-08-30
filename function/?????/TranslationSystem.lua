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
    
    local Tab_Meat = {
        name = "",
        section1 = "",
        section2 = "",
        section3 = "",
        section4 = "",
        section5 = "",
        button1 = "",
        button2 = "",
        button3 = "",
        button4 = "",
        button5 = ""
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
        
        Tab_Meat.name = "Fase das Carnes"
        Tab_Meat.section1 = "Teleportar para zona segura"
        Tab_Meat.section2 = "Mostrar monstro"
        Tab_Meat.section3 = "Teleportar para a sala das carnes"
        Tab_Meat.section4 = "Dá as carnes para o monstro"
        Tab_Meat.section5 = "Teleportar para a porta final"
        Tab_Meat.button1 = "Zona segura"
        Tab_Meat.button2 = "Esp Ashina"
        Tab_Meat.button3 = "Tp sala das carnes"
        Tab_Meat.button4 = "Entregar Carnes"
        Tab_Meat.button5 = "Tp porta final"
        

    elseif locale == "en-us" then
        Tab_Oceano.name = "Ocean Phase"
        Tab_Oceano.section = "Skip this ocean phase"
        Tab_Oceano.button = "Skip Ocean"

        Tab_ComedorCarne.name = "Feast Phase"
        Tab_ComedorCarne.section = "Skip this feast phase"
        Tab_ComedorCarne.button = "Skip Feast"
        
        Tab_Meat.name = "Meat Phase"
        Tab_Meat.section1 = "Teleport to safe zone"
        Tab_Meat.section2 = "Show monster"
        Tab_Meat.section3 = "Teleport to meat room"
        Tab_Meat.section4 = "Give meats to the monster"
        Tab_Meat.section5 = "Teleport to final door"
        Tab_Meat.button1 = "Safe Zone"
        Tab_Meat.button2 = "Tp Ashina"
        Tab_Meat.button3 = "Tp Meat Room"
        Tab_Meat.button4 = "Deliver Meats"
        Tab_Meat.button5 = "Tp Final Door"

    elseif locale:sub(1, 2) == "es" then
        Tab_Oceano.name = "Fase del Océano"
        Tab_Oceano.section = "Saltar esta fase del océano"
        Tab_Oceano.button = "Saltar océano"

        Tab_ComedorCarne.name = "Fase Comedores"
        Tab_ComedorCarne.section = "Saltar esta fase de los comedores"
        Tab_ComedorCarne.button = "Saltar comedor"
        
        Tab_Meat.name = "Fase de las Carnes"
        Tab_Meat.section1 = "Teletransportarse a zona segura"
        Tab_Meat.section2 = "Mostrar monstruo"
        Tab_Meat.section3 = "Teletransportarse a la sala de las carnes"
        Tab_Meat.section4 = "Dar las carnes al monstruo"
        Tab_Meat.section5 = "Teletransportarse a la puerta final"
        Tab_Meat.button1 = "Zona segura"
        Tab_Meat.button2 = "Esp Ashina"
        Tab_Meat.button3 = "Tp sala de las carnes"
        Tab_Meat.button4 = "Entregar carnes"
        Tab_Meat.button5 = "Tp puerta final"

    else
        Tab_Oceano.name = "Ocean Phase"
        Tab_Oceano.section = "Skip this ocean phase"
        Tab_Oceano.button = "Skip Ocean"

        Tab_ComedorCarne.name = "Feast Phase"
        Tab_ComedorCarne.section = "Skip this feast phase"
        Tab_ComedorCarne.button = "Skip Feast"
        
        Tab_Meat.name = "Meat Phase"
        Tab_Meat.section1 = "Teleport to safe zone"
        Tab_Meat.section2 = "Show monster"
        Tab_Meat.section3 = "Teleport to meat room"
        Tab_Meat.section4 = "Give meats to the monster"
        Tab_Meat.section5 = "Teleport to final door"
        Tab_Meat.button1 = "Safe Zone"
        Tab_Meat.button2 = "Tp Ashina"
        Tab_Meat.button3 = "Tp Meat Room"
        Tab_Meat.button4 = "Deliver Meats"
        Tab_Meat.button5 = "Tp Final Door"

    end

    return Tab_Oceano, Tab_ComedorCarne, Tab_Meat
end

return TranslationModule