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
    
    local Tab_esqueletos = {
      name = "",
      section1 = "",
      section2 = "",
      button1 = "",
      button2 = ""
    }
    
    local Tab_Alavancas = {
      name = "", 
      section1 = "",
      section2 = "",
      section3 = "",
      button1 = "",
      button2 = "",
      button3 = ""
    }
    
    local Tab_Engima = {
      name = "",
      section = "",
      button = ""
    }
    
    local Tab_Comida = {
      name = "",
      section1 = "",
      section2 = "",
      section3 = "",
      section4 = "",
      button1 = "",
      button2 = "",
      button3 = "",
      button4 = ""
    }
    
    local Tab_Teiryu = {
      name = "",
      section = "",
      button = ""
    }
    
    local Tab_Torre = {
      name = "",
      section1 = "",
      section2 = "",
      button1 = "",
      button2 = ""
    }
    
    local Tab_Chihiro = {
      name = "",
      section1 = "",
      section2 = "",
      section3 = "",
      section4 = "",
      section5 = ""
    }
    
    local Tab_Chihiro = {
      name = "",
      section1 = "",
      section2 = "",
      section3 = "",
      section4 = "",
      section5 = "",
      button1 = "",
      button2 = "",
      bitton3 = "",
      button4 = "",
      button5 = ""
    }
    
    local Tab_Boss = {
      section1 = "",
      button1 = ""
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
        
        Tab_esqueletos.name = "Fugir esqueletos"
        Tab_esqueletos.section1 = "Teleportar para começar a custcine"
        Tab_esqueletos.section2 = "Auto escapar dos esqueletos"
        Tab_esqueletos.button1 = "Começar custcine"
        Tab_esqueletos.button2 = "Auto escapar"
        
        Tab_Alavancas.name = "Fase Alavancas"
        Tab_Alavancas.section1 = "Teleportar direto para a porta"
        Tab_Alavancas.section2 = "Auto acionar alavancas"
        Tab_Alavancas.section3 = "Teleportar para saída"
        Tab_Alavancas.button1 = "Entrar na zona"
        Tab_Alavancas.button2 = "Auto alavancas"
        Tab_Alavancas.button3 = "Tp saída"
        
        Tab_Engima.name = "Fase do Enigma"
        Tab_Engima.section = "Pular essa fase do Enigma"
        Tab_Engima.button = "Pular fase"
        
        Tab_Comida.name = "Fase da comida"
        Tab_Comida.section1 = "Auto fazer o frango"
        Tab_Comida.section2 = "Auto fazer o presunto"
        Tab_Comida.section3 = "Auto fazer Goblos oculares"
        Tab_Comida.section4 = "Auto fugir do Zuboshi"
        Tab_Comida.button1 = "Auto frango"
        Tab_Comida.button2 = "Auto presunto"
        Tab_Comida.button3 = "Auto Globos oculares"
        Tab_Comida.button4 = "Auto escapar"
        
        Tab_Teiryu.name = "Fase da Teiryu"
        Tab_Teiryu.section = "Auto fugir da Teiryu"
        Tab_Teiryu.button = "Auto escapar"
        
        Tab_Torre.name = "Fase do Ryoshi"
        Tab_Torre.section1 = "Teleportar para uma área segura"
        Tab_Torre.section2 = "Teleportar para o puzzle"
        Tab_Torre.button1 = "Zona segura"
        Tab_Torre.button2 = "Tp puzzle"
        
        Tab_Chihiro.name = "Fase da hihiro"
        Tab_Chihiro.section1 = "Teleportar para zona segura"
        Tab_Chihiro.section2 = "Mostra localização da mamãe"
        Tab_Chihiro.section3 = "Teleportar para Chihiro"
        Tab_Chihiro.section4 = "Teleportar para porta de escapar desse fase"
        Tab_Chihiro.section5 = "Auto coletar todas as cartas"
        Tab_Chihiro.button1 = "Área segura"
        Tab_Chihiro.button2 = "Esp mamãe"
        Tab_Chihiro.button3 = "Tp Chihiro"
        Tab_Chihiro.button4 = "Tp porta"
        Tab_Chihiro.button5 = "Auto coletar cartas"
        
        Tab_Boss.section1 = "Auto coletar bola de canhão"
        Tab_Boss.button1 = "Auto coletar munição"
        
        
        

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
        Tab_Meat.button2 = "Esp Ashina"
        Tab_Meat.button3 = "Tp Meat Room"
        Tab_Meat.button4 = "Deliver Meats"
        Tab_Meat.button5 = "Tp Final Door"
        
        Tab_esqueletos.name = "Escape Skeletons"
        Tab_esqueletos.section1 = "Teleport to start cutscene"
        Tab_esqueletos.section2 = "Auto escape from skeletons"
        Tab_esqueletos.button1 = "Start Cutscene"
        Tab_esqueletos.button2 = "Auto Escape"
        
        Tab_Alavancas.name = "Lever Phase"
        Tab_Alavancas.section1 = "Teleport directly to the door"
        Tab_Alavancas.section2 = "Auto activate levers"
        Tab_Alavancas.section3 = "Teleport to exit"
        Tab_Alavancas.button1 = "Enter Zone"
        Tab_Alavancas.button2 = "Auto Levers"
        Tab_Alavancas.button3 = "Tp Exit"
        
        Tab_Engima.name = "Enigma Phase"
        Tab_Engima.section = "Skip this Enigma phase"
        Tab_Engima.button = "Skip Phase"
        
        Tab_Engima.name = "Enigma Phase"
        Tab_Engima.section = "Skip this Enigma phase"
        Tab_Engima.button = "Skip Phase"
        
        Tab_Comida.name = "Food Phase"
        Tab_Comida.section1 = "Auto make the chicken"
        Tab_Comida.section2 = "Auto make the ham"
        Tab_Comida.section3 = "Auto make the eyeballs"
        Tab_Comida.section4 = "Auto escape from Zuboshi"
        Tab_Comida.button1 = "Auto Chicken"
        Tab_Comida.button2 = "Auto Ham"
        Tab_Comida.button3 = "Auto Eyeballs"
        Tab_Comida.button4 = "Auto Escape"
        
        Tab_Teiryu.name = "Teiryu Phase"
        Tab_Teiryu.section = "Auto escape from Teiryu"
        Tab_Teiryu.button = "Auto Escape"
        
        Tab_Torre.name = "Ryoshi Phase"
        Tab_Torre.section1 = "Teleport to a safe area"
        Tab_Torre.section2 = "Teleport to the puzzle"
        Tab_Torre.button1 = "Safe Zone"
        Tab_Torre.button2 = "Tp Puzzle"
        
        Tab_Chihiro.name = "Chihiro Phase"
        Tab_Chihiro.section1 = "Teleport to safe zone"
        Tab_Chihiro.section2 = "Show mom's location"
        Tab_Chihiro.section3 = "Teleport to Chihiro"
        Tab_Chihiro.section4 = "Teleport to escape door"
        Tab_Chihiro.section5 = "Auto collect all Notes"
        Tab_Chihiro.button1 = "Safe Area"
        Tab_Chihiro.button2 = "Show Mom"
        Tab_Chihiro.button3 = "Tp Chihiro"
        Tab_Chihiro.button4 = "Tp Door"
        Tab_Chihiro.button5 = "Auto Collect notes"
        
        Tab_Boss.section1 = "Auto collect cannonball"
        Tab_Boss.button1 = "Auto collect ammo"
        
        
        

    elseif locale:sub(1, 2) == "es" then
        Tab_Oceano.name = "Fase del Océano"
        Tab_Oceano.section = "Saltar esta fase del océano"
        Tab_Oceano.button = "Saltar océano"

        Tab_ComedorCarne.name = "Fase Comedores"
        Tab_ComedorCarne.section = "Saltar esta fase de los comedores"
        Tab_ComedorCarne.button = "Saltar comedores"
        
        Tab_Meat.name = "Fase Carnes"
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
        
        Tab_esqueletos.name = "Escapar Esqueletos"
        Tab_esqueletos.section1 = "Teletransportarse para comenzar la cinemática"
        Tab_esqueletos.section2 = "Escapar automáticamente de los esqueletos"
        Tab_esqueletos.button1 = "Comenzar cinemática"
        Tab_esqueletos.button2 = "Escapar automáticamente"
        
        Tab_Alavancas.name = "Fase Palancas"
        Tab_Alavancas.section1 = "Teletransportarse directamente a la puerta"
        Tab_Alavancas.section2 = "Accionar palancas automáticamente"
        Tab_Alavancas.section3 = "Teletransportarse a la salida"
        Tab_Alavancas.button1 = "Entrar en la zona"
        Tab_Alavancas.button2 = "Palancas automáticas"
        Tab_Alavancas.button3 = "Tp salida"
        
        Tab_Engima.name = "Fase del Enigma"
        Tab_Engima.section = "Saltar esta fase del Enigma"
        Tab_Engima.button = "Saltar fase"
        
        Tab_Engima.name = "Fase del Enigma"
        Tab_Engima.section = "Saltar esta fase del Enigma"
        Tab_Engima.button = "Saltar fase"
        
        Tab_Comida.name = "Fase de la Comida"
        Tab_Comida.section1 = "Auto hacer el pollo"
        Tab_Comida.section2 = "Auto hacer el jamón"
        Tab_Comida.section3 = "Auto hacer globos oculares"
        Tab_Comida.section4 = "Auto escapar de Zuboshi"
        Tab_Comida.button1 = "Auto pollo"
        Tab_Comida.button2 = "Auto jamón"
        Tab_Comida.button3 = "Auto globos oculares"
        Tab_Comida.button4 = "Auto escapar"
        
        Tab_Teiryu.name = "Fase de Teiryu"
        Tab_Teiryu.section = "Auto escapar de Teiryu"
        Tab_Teiryu.button = "Auto escapar"
        
        Tab_Torre.name = "Fase de Ryoshi"
        Tab_Torre.section1 = "Teletransportarse a una zona segura"
        Tab_Torre.section2 = "Teletransportarse al rompecabezas"
        Tab_Torre.button1 = "Zona segura"
        Tab_Torre.button2 = "Tp rompecabezas"
        
        Tab_Chihiro.name = "Fase de Chihiro"
        Tab_Chihiro.section1 = "Teletransportarse a zona segura"
        Tab_Chihiro.section2 = "Mostrar ubicación de la mamá"
        Tab_Chihiro.section3 = "Teletransportarse a Chihiro"
        Tab_Chihiro.section4 = "Teletransportarse a la puerta de escape"
        Tab_Chihiro.section5 = "Auto recoger todas las cartas"
        Tab_Chihiro.button1 = "Zona segura"
        Tab_Chihiro.button2 = "Mostrar mamá"
        Tab_Chihiro.button3 = "Tp Chihiro"
        Tab_Chihiro.button4 = "Tp puerta"
        Tab_Chihiro.button5 = "Auto recoger cartas"
        
        Tab_Boss.section1 = "Auto recoger bola de cañón"
        Tab_Boss.button1 = "Auto recoger munición"

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
        Tab_Meat.button2 = "Esp Ashina"
        Tab_Meat.button3 = "Tp Meat Room"
        Tab_Meat.button4 = "Deliver Meats"
        Tab_Meat.button5 = "Tp Final Door"
        
        Tab_esqueletos.name = "Escape Skeletons"
        Tab_esqueletos.section1 = "Teleport to start cutscene"
        Tab_esqueletos.section2 = "Auto escape from skeletons"
        Tab_esqueletos.button1 = "Start Cutscene"
        Tab_esqueletos.button2 = "Auto Escape"
        
        Tab_Alavancas.name = "Lever Phase"
        Tab_Alavancas.section1 = "Teleport directly to the door"
        Tab_Alavancas.section2 = "Auto activate levers"
        Tab_Alavancas.section3 = "Teleport to exit"
        Tab_Alavancas.button1 = "Enter Zone"
        Tab_Alavancas.button2 = "Auto Levers"
        Tab_Alavancas.button3 = "Tp Exit"
        
        Tab_Engima.name = "Enigma Phase"
        Tab_Engima.section = "Skip this Enigma phase"
        Tab_Engima.button = "Skip Phase"
        
        Tab_Engima.name = "Enigma Phase"
        Tab_Engima.section = "Skip this Enigma phase"
        Tab_Engima.button = "Skip Phase"
        
        Tab_Comida.name = "Food Phase"
        Tab_Comida.section1 = "Auto make the chicken"
        Tab_Comida.section2 = "Auto make the ham"
        Tab_Comida.section3 = "Auto make the eyeballs"
        Tab_Comida.section4 = "Auto escape from Zuboshi"
        Tab_Comida.button1 = "Auto Chicken"
        Tab_Comida.button2 = "Auto Ham"
        Tab_Comida.button3 = "Auto Eyeballs"
        Tab_Comida.button4 = "Auto Escape"
        
        Tab_Teiryu.name = "Teiryu Phase"
        Tab_Teiryu.section = "Auto escape from Teiryu"
        Tab_Teiryu.button = "Auto Escape"
        
        Tab_Torre.name = "Ryoshi Phase"
        Tab_Torre.section1 = "Teleport to a safe area"
        Tab_Torre.section2 = "Teleport to the puzzle"
        Tab_Torre.button1 = "Safe Zone"
        Tab_Torre.button2 = "Tp Puzzle"
        
        Tab_Chihiro.name = "Chihiro Phase"
        Tab_Chihiro.section1 = "Teleport to safe zone"
        Tab_Chihiro.section2 = "Show mom's location"
        Tab_Chihiro.section3 = "Teleport to Chihiro"
        Tab_Chihiro.section4 = "Teleport to escape door"
        Tab_Chihiro.section5 = "Auto collect all notes"
        Tab_Chihiro.button1 = "Safe Area"
        Tab_Chihiro.button2 = "Show Mom"
        Tab_Chihiro.button3 = "Tp Chihiro"
        Tab_Chihiro.button4 = "Tp Door"
        Tab_Chihiro.button5 = "Auto Collect Notes"
        
        Tab_Boss.section1 = "Auto collect cannonball"
        Tab_Boss.button1 = "Auto collect ammo"

    end

    return Tab_Oceano, Tab_ComedorCarne, Tab_Meat, Tab_esqueletos, Tab_Alavancas, Tab_Engima, Tab_Comida, Tab_Teiryu, Tab_Torre, Tab_Chihiro, Tab_Boss
end

return TranslationModule