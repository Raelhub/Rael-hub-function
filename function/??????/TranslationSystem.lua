local TranslationModule = {}

function TranslationModule:GetTabs()
  
    local Tab_cutscene = {
        name = "",
        section = "",
        button = ""
        
    }

    local Tab_GiveHeart = {
        name = "",
        section1 = "",
        section2 = "",
        button1 = "",
        button2 = ""

    }
    
    local Tab_Mapmaze = {
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
        button5 = "",
        button6 = ""
    }
    
    local Tab_DodoMeki = {
      name = "",
      section1 = "",
      section2 = "",
      section3 = "",
      section4 = "",
      button1 = "",
      SinoButton1 = "",
      SinoButton2 = "",
      SinoButton3 = "",
      SinoButton4 = "",
      SinoButton5 = "",
      SinoButton6 = "",
      button2 = "",
      button3 = ""
      
    }
    
    local Tab_Enzuzai = {
      name = "", 
      section1 = "",
      section2 = "",
      button1 = "",
      button2 = ""
    }
    
    local Tab_HouseUchiumi = {
      name = "",
      section1 = "",
      section2 = "",
      section3 = "",
      button1 = "",
      button2 = "",
      button3 = "",
      button4 = "",
      button5 = "",
      button6 = ""
    }
    
    local Tab_Train = {
      name = "",
      section = "",
      button = ""
    }
    
    local Tab_larvas = {
      name = "",
      section1 = "",
      section2 = "",
      section3 = "",
      section4 = "",
      button1 = "",
      button2 = "",
      button3 = "",
      button4 = "",
      button5 = "",
      button6 = "",
      button7 = ""
      

    }
    
    Tab_Lama = {
      name = "",
      section = "",
      button = ""
    }
    
    Tab_HouseYurei = {
      name = "",
      section1 = "",
      section2 = "",
      section3 = "",
      button1 = "",
      button2 = "",
      NameEsp1 = "",
      NameEsp2 = "",
      NameEsp3 = "",
      NameEsp4 = "",
      NameEsp5 = "",
      House1 = "",
      House2 = "",
      House3 = "",
      House4 = "",
      House5 = ""
      
    }
    
    Tab_BossYurei = {
      name = "",
      section1 = "",
      section2 = "",
      button1 = "",
      button2 = "",
      NotificationName1 = "",
      NotificationName2 = "",
      NotificationContent1 = "",
      NotificationContent2 = ""
    }
    
    Tab_FaseFinal = {
      name = "",
      section1 = "",
      section2 = "",
      button1 = "",
      button2 = ""
    }
    
    local Tab_Others = {
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
      button5 = "",
      button6 = ""
    }
    
    local Tab_Credit = {
      name = "",
      section1 = "",
      section2 = "",
      button1 = "",
      button2 = "",
      NotifierName = "",
      NotifierContent1 = "",
      NotifierContent2 = ""
    }

    local Players = game:GetService("Players")
    local player = Players.LocalPlayer
    local locale = player.LocaleId:lower()

    if locale == "pt-br" then
      
      Tab_cutscene.name = "Pular Cutscene"
      Tab_cutscene.section = "Pular a cutscene do Gozu e Mezu"
      Tab_cutscene.button = "Pular Cutscene"
      
      
      Tab_GiveHeart.name = "Fase do Kenio"
      Tab_GiveHeart.section1 = "Auto pegar todos os corações"
      Tab_GiveHeart.section2 = "Escapa do GrinDemon"
      Tab_GiveHeart.button1 = "Auto colect corações"
      Tab_GiveHeart.button2 = "Fugir do GrinDemon"
      
      
      Tab_Mapmaze.name = "Fase GrinDemon"
      Tab_Mapmaze.section1 = "Mostrar a localização do GrinDemon"
      Tab_Mapmaze.section2 = "Área segura"
      Tab_Mapmaze.section3 = "Auto fazer tocha"
      Tab_Mapmaze.section4 = "Incendiar a tocha"
      Tab_Mapmaze.section5 = "Passar do portão"
      Tab_Mapmaze.button1 = "Esp GrinDemon [Normal]"
      Tab_Mapmaze.button2 = "Esp GrinDemon [Nightmare]"
      Tab_Mapmaze.button3 = "Zona segura"
      Tab_Mapmaze.button4 = "Coletar itens"
      Tab_Mapmaze.button5 = "Incendiar tocha"
      Tab_Mapmaze.button6 = "Tp porta (Só quando você matar o Djabo)"
      
      
      Tab_DodoMeki.name = "Fase DodoMeki"
      Tab_DodoMeki.section1 = "Mostrar a localização do DodoMeki"
      Tab_DodoMeki.section2 = "Teleportar para os sinos"
      Tab_DodoMeki.section3 = "Teleportar para a porta do puzzle"
      Tab_DodoMeki.section4 = "Escapa do Dodomeki"
      Tab_DodoMeki.button1 = "Esp DodoMeki"
      for i = 1, 6 do
        Tab_DodoMeki["SinoButton" .. i] = "Sino " .. i
      end
      Tab_DodoMeki.button2 = "Tp porta puzzle"
      Tab_DodoMeki.button3 = "Fugir do DodoMeki"
      
      
      Tab_Enzuzai.name = "Fase do enzukai"
      Tab_Enzuzai.section1 = "Ativar o puzzle do enzukai"
      Tab_Enzuzai.section2 = "Teleportar para fora do barco"
      Tab_Enzuzai.button1 = "Ativar puzzle"
      Tab_Enzuzai.button2 = "Tp fora do barco"
      
      
      Tab_HouseUchiumi.name = "Fase Uchiumi"
      Tab_HouseUchiumi.section1 = "Teleportar para área da casa"
      Tab_HouseUchiumi.section2 = "Tentar ajudar a subir sua barrinha"
      Tab_HouseUchiumi.section3 = "Teleportar para as camas"
      Tab_HouseUchiumi.button1 = "Tp casa"
      Tab_HouseUchiumi.button2 = "Local de rezar"
      Tab_HouseUchiumi.button3 = "Local de Lava pratos"
      Tab_HouseUchiumi.button4 = "Cama 1"
      Tab_HouseUchiumi.button5 = "Cama 2"
      Tab_HouseUchiumi.button6 = "Cama 3"
      
      
      Tab_Train.name = "Fase metrô"
      Tab_Train.section = "Auto escapar do trem"
      Tab_Train.button = "Auto fugir trem"
      
      
      Tab_larvas.name = "Fase Larvas"
      Tab_larvas.section1 = "Mostrar a localização do Boogeyman"
      Tab_larvas.section2 = "Teleportar para zona segura"
      Tab_larvas.section3 = "Teleportar para as larvas"
      Tab_larvas.section4 = "Teleportar para Nurikabe"
      Tab_larvas.button1 = "Esp Boogeyman"
      Tab_larvas.button2 = "Zona segura"
      Tab_larvas.button3 = "Tp larva 1"
      Tab_larvas.button4 = "Tp larva 2"
      Tab_larvas.button5 = "Tp larva 3"
      Tab_larvas.button6 = "Tp larva 4"
      Tab_larvas.button7 = "Tp Nurikabe"
      
      Tab_Lama.name = "Fase lama"
      Tab_Lama.section = "Finalizar essa fase"
      Tab_Lama.button = "Auto finalizar"
      
      Tab_HouseYurei.name = "Casa Yurei"
      Tab_HouseYurei.section1 = "Mostrar todas as estátuas malignas"
      Tab_HouseYurei.section2 = "Mostrar a localização das casas"
      Tab_HouseYurei.section3 = "Teleportar para as casas"
      Tab_HouseYurei.button1 = "Esp estátuas"
      Tab_HouseYurei.button2 = "Esp casas"
      for i = 1, 5 do
        Tab_HouseYurei["NameEsp" .. i] = "Casa " .. i
      end
      for i = 1, 5 do
        Tab_HouseYurei["House" .. i] = "Casa " .. i
      end
      
      
      Tab_BossYurei.name = "Boss Yurei"
      Tab_BossYurei.section1 = "Auto coletar as katanas"
      Tab_BossYurei.section2 = "Voar + mira"
      Tab_BossYurei.button1 = "Coletar katanas"
      Tab_BossYurei.button2 = "Fly (velocidade recomendada: 1)"
      Tab_BossYurei.NotificationName1 = "Ativado"
      Tab_BossYurei.NotificationName2 = "Desativado"
      Tab_BossYurei.NotificationContent1 = "O auto coletar está ativado."
      Tab_BossYurei.NotificationContent2 = "O auto coletar está desativado"
      
      Tab_FaseFinal.name = "Fase Final"
      Tab_FaseFinal.section1 = "Executar a cutscene do Shinigami"
      Tab_FaseFinal.section2 = "Auto passar do Shinigami"
      Tab_FaseFinal.button1 = "Executar cutscene"
      Tab_FaseFinal.button2 = "Fugir do Shinigami"
      
      Tab_Others.name = "Outros"
      Tab_Others.section1 = "Aumentar o fps"
      Tab_Others.section2 = "Esp"
      Tab_Others.section3 = "Auto coletar moedas"
      Tab_Others.section4 = "Atravessar todas as portas"
      Tab_Others.section5 = "ilumina ao seu redor"
      Tab_Others.button1 = "Fps Boost"
      Tab_Others.button2 = "Esp player"
      Tab_Others.button3 = "Esp moedas"
      Tab_Others.button4 = "Auto coletar moedas"
      Tab_Others.button5 = "No clip Portas"
      Tab_Others.button6 = "FullBright"
      
      Tab_Credit.name = "Créditos"
      Tab_Credit.section1 = "Criador do Script e head programmer"
      Tab_Credit.section2 = "Test script"
      Tab_Credit.button1 = "Rael | Laelmano24"
      Tab_Credit.button2 = "David | DDGM_oficial"
      Tab_Credit.NotifierName = "Copiado!"
      Tab_Credit.NotifierContent1 = "Nick do criador foi copiado na área de transferência."
      Tab_Credit.NotifierContent2 = "Nick do test foi copiado na área de transferência."
    elseif locale == "en-us" then
      
      
      
      
    elseif locale:sub(1, 2) == "es" then
        Tab_Oceano.name = "Fase del Océano"
        Tab_Oceano.section = "Saltar esta fase del océano"
        Tab_Oceano.button1 = "Saltar océano [Normal]"
        Tab_Oceano.button2 = "Saltar océano [Nightmare]"

        Tab_ComedorCarne.name = "Fase Comedores"
        Tab_ComedorCarne.section = "Saltar esta fase de los comedores"
        Tab_ComedorCarne.button1 = "Saltar comedores [Normal]"
        Tab_ComedorCarne.button2 = "Saltar comedores [Nightmare]"
        
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
        Tab_Boss.section2 = "Auto protegerse con el láser de Nagisa"
        Tab_Boss.section3 = "Mejor área para matar a Nagisa Serpiente"
        Tab_Boss.button1 = "Auto recoger munición"
        Tab_Boss.button2 = "Auto proteger láser Nagisa"
        Tab_Boss.button3 = "Teletransportarse a la zona"
        
    
        
        Tab_Others.name = "Otros"
        Tab_Others.section2 = "Auto recoger las monedas"
        Tab_Others.button2 = "Mostrar monedas"
        Tab_Others.button3 = "Auto recoger monedas"
        
        Tab_Credits.name = "Créditos"
        Tab_Credits.section = "Creador del script y desarrollador"
        Tab_Credits.button = "Rael | Laelmano24"
        Tab_Credits.NotifierName = "¡Copiado!"
        Tab_Credits.NotifierContent = "El apodo del creador ha sido copiado al portapapeles."

    else
        Tab_Oceano.name = "Ocean Phase"
        Tab_Oceano.section = "Skip this ocean phase"
        Tab_Oceano.button1 = "Skip Ocean [Normal]"
        Tab_Oceano.button2 = "Skip Ocean [Nigthmare]"

        Tab_ComedorCarne.name = "Feast Phase"
        Tab_ComedorCarne.section = "Skip this feast phase"
        Tab_ComedorCarne.button1 = "Skip Feast [Normal]"
        Tab_ComedorCarne.button2 = "Skip Feast [Nightmare]"
        
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
        Tab_Chihiro.button2 = "Esp Mom"
        Tab_Chihiro.button3 = "Tp Chihiro"
        Tab_Chihiro.button4 = "Tp Door"
        Tab_Chihiro.button5 = "Auto Collect Notes"
        
        Tab_Boss.section1 = "Auto collect cannonball"
        Tab_Boss.section2 = "Auto protect with Nagisa's laser"
        Tab_Boss.section3 = "Best area to kill Nagisa Serpent"
        Tab_Boss.button1 = "Auto collect ammo"
        Tab_Boss.button2 = "Auto protect Nagisa's laser"
        Tab_Boss.button3 = "Teleport to zone"
        
        Tab_Others.name = "Others"
        Tab_Others.section2 = "Auto collect coins"
        Tab_Others.button2 = "Show Coins"
        Tab_Others.button3 = "Auto Collect Coins"
        
        Tab_Credits.name = "Credits"
        Tab_Credits.section = "Script creator and developer"
        Tab_Credits.button = "Rael | Laelmano24"
        Tab_Credits.NotifierName = "Copied!"
        Tab_Credits.NotifierContent = "Creator's nickname has been copied to the clipboard."

    end

    return Tab_cutscene, Tab_GiveHeart, Tab_Mapmaze, Tab_DodoMeki, Tab_Enzuzai, Tab_HouseUchiumi, Tab_Train, Tab_larvas, Tab_Lama, Tab_HouseYurei , Tab_BossYurei, Tab_FaseFinal, Tab_Others, Tab_Credit
end

return TranslationModule