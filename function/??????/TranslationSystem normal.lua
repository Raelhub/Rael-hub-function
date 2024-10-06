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
    
    local Tab_Lama = {
      name = "",
      section = "",
      button = ""
    }
    
    local Tab_HouseYurei = {
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
    
    local Tab_BossYurei = {
      name = "",
      section1 = "",
      section2 = "",
      section3 = "",
      button1 = "",
      button2 = "",
      button3 = "",
      NotificationName1 = "",
      NotificationName2 = "",
      NotificationContent1 = "",
      NotificationContent2 = ""
    }
    
    local Tab_FaseFinal = {
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
      Tab_BossYurei.section2 = "Atravessar todas as árvores"
      Tab_BossYurei.section3 = "Voar + mira"
      Tab_BossYurei.button1 = "Coletar katanas"
      Tab_BossYurei.button2 = "No clip Árvore"
      Tab_BossYurei.button3 = "Fly (velocidade recomendada: 1)"
      Tab_BossYurei.NotificationName1 = "Ativado"
      Tab_BossYurei.NotificationName2 = "Desativado"
      Tab_BossYurei.NotificationContent1 = "O auto coletar está ativado."
      Tab_BossYurei.NotificationContent2 = "O auto coletar está desativado"
      
      Tab_FaseFinal.name = "Fase Final"
      Tab_FaseFinal.section1 = "Executar a cutscene do Shinigami"
      Tab_FaseFinal.section2 = "Auto passar do Shinigami"
      Tab_FaseFinal.button1 = "Executar cutscene"
      Tab_FaseFinal.button2 = "Fugir do Shinigami"
      
      
      
      Tab_Credit.name = "Créditos"
      Tab_Credit.section1 = "Criador do Script e head programmer"
      Tab_Credit.section2 = "Test script"
      Tab_Credit.button1 = "Rael | Laelmano24"
      Tab_Credit.button2 = "David | DDGM_oficial"
      Tab_Credit.NotifierName = "Copiado!"
      Tab_Credit.NotifierContent1 = "Nick do criador foi copiado na área de transferência."
      Tab_Credit.NotifierContent2 = "Nick do test foi copiado na área de transferência."
    elseif locale == "en-us" then
      
      Tab_cutscene.name = "Skip Cutscene"
      Tab_cutscene.section = "Skip the Gozu and Mezu cutscene"
      Tab_cutscene.button = "Skip Cutscene"
    
      Tab_GiveHeart.name = "Kenio Stage"
      Tab_GiveHeart.section1 = "Auto collect all hearts"
      Tab_GiveHeart.section2 = "Escape GrinDemon"
      Tab_GiveHeart.button1 = "Auto collect hearts"
      Tab_GiveHeart.button2 = "Escape GrinDemon"
    
      Tab_Mapmaze.name = "GrinDemon Stage"
      Tab_Mapmaze.section1 = "Show GrinDemon location"
      Tab_Mapmaze.section2 = "Safe zone"
      Tab_Mapmaze.section3 = "Auto craft torch"
      Tab_Mapmaze.section4 = "Light the torch"
      Tab_Mapmaze.section5 = "Pass through the gate"
      Tab_Mapmaze.button1 = "ESP GrinDemon [Normal]"
      Tab_Mapmaze.button2 = "ESP GrinDemon [Nightmare]"
      Tab_Mapmaze.button3 = "Safe zone"
      Tab_Mapmaze.button4 = "Collect items"
      Tab_Mapmaze.button5 = "Light torch"
      Tab_Mapmaze.button6 = "TP door (Only after killing the demon)"
    
      Tab_DodoMeki.name = "DodoMeki Stage"
      Tab_DodoMeki.section1 = "Show DodoMeki location"
      Tab_DodoMeki.section2 = "Teleport to the bells"
      Tab_DodoMeki.section3 = "Teleport to puzzle door"
      Tab_DodoMeki.section4 = "Escape from DodoMeki"
      Tab_DodoMeki.button1 = "ESP DodoMeki"
      for i = 1, 6 do
        Tab_DodoMeki["SinoButton" .. i] = "Bell " .. i
      end
      Tab_DodoMeki.button2 = "TP puzzle door"
      Tab_DodoMeki.button3 = "Escape DodoMeki"
    
      Tab_Enzuzai.name = "Enzukai Stage"
      Tab_Enzuzai.section1 = "Activate Enzukai puzzle"
      Tab_Enzuzai.section2 = "Teleport outside the ship"
      Tab_Enzuzai.button1 = "Activate puzzle"
      Tab_Enzuzai.button2 = "TP outside the ship"
    
      Tab_HouseUchiumi.name = "Uchiumi Stage"
      Tab_HouseUchiumi.section1 = "Teleport to house area"
      Tab_HouseUchiumi.section2 = "Help raise your bar"
      Tab_HouseUchiumi.section3 = "Teleport to the beds"
      Tab_HouseUchiumi.button1 = "TP house"
      Tab_HouseUchiumi.button2 = "Prayer spot"
      Tab_HouseUchiumi.button3 = "Dishwashing area"
      Tab_HouseUchiumi.button4 = "Bed 1"
      Tab_HouseUchiumi.button5 = "Bed 2"
      Tab_HouseUchiumi.button6 = "Bed 3"
    
      Tab_Train.name = "Subway Stage"
      Tab_Train.section = "Auto escape the train"
      Tab_Train.button = "Auto escape train"
    
      Tab_larvas.name = "Larva Stage"
      Tab_larvas.section1 = "Show Boogeyman location"
      Tab_larvas.section2 = "Teleport to safe zone"
      Tab_larvas.section3 = "Teleport to larva"
      Tab_larvas.section4 = "Teleport to Nurikabe"
      Tab_larvas.button1 = "ESP Boogeyman"
      Tab_larvas.button2 = "Safe zone"
      Tab_larvas.button3 = "TP Larva 1"
      Tab_larvas.button4 = "TP Larva 2"
      Tab_larvas.button5 = "TP Larva 3"
      Tab_larvas.button6 = "TP Larva 4"
      Tab_larvas.button7 = "TP Nurikabe"
    
      Tab_Lama.name = "Mud Stage"
      Tab_Lama.section = "Finish the stage"
      Tab_Lama.button = "Auto finish"
    
      Tab_HouseYurei.name = "Yurei House"
      Tab_HouseYurei.section1 = "Show all evil statues"
      Tab_HouseYurei.section2 = "Show house locations"
      Tab_HouseYurei.section3 = "Teleport to houses"
      Tab_HouseYurei.button1 = "ESP statues"
      Tab_HouseYurei.button2 = "ESP houses"
      for i = 1, 5 do
        Tab_HouseYurei["NameEsp" .. i] = "House " .. i
      end
      for i = 1, 5 do
        Tab_HouseYurei["House" .. i] = "House " .. i
      end
    
      Tab_BossYurei.name = "Boss Yurei"
      Tab_BossYurei.section1 = "Auto collect the katanas"
      Tab_BossYurei.section2 = "Go through all the trees"
      Tab_BossYurei.section3 = "Fly + aim"
      Tab_BossYurei.button1 = "Collect katanas"
      Tab_BossYurei.button2 = "No clip Tree"
      Tab_BossYurei.button3 = "Fly (recommended speed: 1)"
      Tab_BossYurei.NotificationName1 = "Activated"
      Tab_BossYurei.NotificationName2 = "Deactivated"
      Tab_BossYurei.NotificationContent1 = "Auto collect is activated."
      Tab_BossYurei.NotificationContent2 = "Auto collect is deactivated."
    
      Tab_FaseFinal.name = "Final Stage"
      Tab_FaseFinal.section1 = "Execute Shinigami cutscene"
      Tab_FaseFinal.section2 = "Auto pass the Shinigami"
      Tab_FaseFinal.button1 = "Execute cutscene"
      Tab_FaseFinal.button2 = "Escape Shinigami"
    
      Tab_Others.name = "Others"
      Tab_Others.section1 = "Increase FPS"
      Tab_Others.section2 = "ESP"
      Tab_Others.section3 = "Auto collect coins"
      Tab_Others.section4 = "Pass through doors"
      Tab_Others.section5 = "Light up surroundings"
      Tab_Others.button1 = "FPS Boost"
      Tab_Others.button2 = "ESP Player"
      Tab_Others.button3 = "ESP Coins"
      Tab_Others.button4 = "Auto collect coins"
      Tab_Others.button5 = "No clip doors"
      Tab_Others.button6 = "FullBright"
    
      Tab_Credit.name = "Credits"
      Tab_Credit.section1 = "Script creator and head programmer"
      Tab_Credit.section2 = "Test script"
      Tab_Credit.button1 = "Rael | Laelmano24"
      Tab_Credit.button2 = "David | DDGM_oficial"
      Tab_Credit.NotifierName = "Copied!"
      Tab_Credit.NotifierContent1 = "Creator's nickname copied to clipboard."
      Tab_Credit.NotifierContent2 = "Tester's nickname copied to clipboard."
      
    elseif locale:sub(1, 2) == "es" then

      Tab_cutscene.name = "Saltar Cutscene"
      Tab_cutscene.section = "Saltar la escena de Gozu y Mezu"
      Tab_cutscene.button = "Saltar Cutscene"
    
      Tab_GiveHeart.name = "Fase de Kenio"
      Tab_GiveHeart.section1 = "Recoger automáticamente todos los corazones"
      Tab_GiveHeart.section2 = "Escapar del GrinDemon"
      Tab_GiveHeart.button1 = "Recoger corazones automáticamente"
      Tab_GiveHeart.button2 = "Escapar del GrinDemon"
    
      Tab_Mapmaze.name = "Fase GrinDemon"
      Tab_Mapmaze.section1 = "Mostrar ubicación del GrinDemon"
      Tab_Mapmaze.section2 = "Zona segura"
      Tab_Mapmaze.section3 = "Craftear antorcha automáticamente"
      Tab_Mapmaze.section4 = "Encender la antorcha"
      Tab_Mapmaze.section5 = "Pasar por la puerta"
      Tab_Mapmaze.button1 = "ESP GrinDemon [Normal]"
      Tab_Mapmaze.button2 = "ESP GrinDemon [Pesadilla]"
      Tab_Mapmaze.button3 = "Zona segura"
      Tab_Mapmaze.button4 = "Recoger objetos"
      Tab_Mapmaze.button5 = "Encender antorcha"
      Tab_Mapmaze.button6 = "TP a la puerta (Solo después de matar al demonio)"
    
      Tab_DodoMeki.name = "Fase DodoMeki"
      Tab_DodoMeki.section1 = "Mostrar ubicación del DodoMeki"
      Tab_DodoMeki.section2 = "Teletransportarse a las campanas"
      Tab_DodoMeki.section3 = "Teletransportarse a la puerta del rompecabezas"
      Tab_DodoMeki.section4 = "Escapar de DodoMeki"
      Tab_DodoMeki.button1 = "ESP DodoMeki"
      for i = 1, 6 do
        Tab_DodoMeki["SinoButton" .. i] = "Campana " .. i
      end
      Tab_DodoMeki.button2 = "TP a la puerta del rompecabezas"
      Tab_DodoMeki.button3 = "Escapar de DodoMeki"
    
      Tab_Enzuzai.name = "Fase Enzukai"
      Tab_Enzuzai.section1 = "Activar el rompecabezas de Enzukai"
      Tab_Enzuzai.section2 = "Teletransportarse fuera del barco"
      Tab_Enzuzai.button1 = "Activar rompecabezas"
      Tab_Enzuzai.button2 = "TP fuera del barco"
    
      Tab_HouseUchiumi.name = "Fase Uchiumi"
      Tab_HouseUchiumi.section1 = "Teletransportarse a la zona de la casa"
      Tab_HouseUchiumi.section2 = "Ayuda para subir tu barra"
      Tab_HouseUchiumi.section3 = "Teletransportarse a las camas"
      Tab_HouseUchiumi.button1 = "TP a la casa"
      Tab_HouseUchiumi.button2 = "Lugar de oración"
      Tab_HouseUchiumi.button3 = "Zona de lavar platos"
      Tab_HouseUchiumi.button4 = "Cama 1"
      Tab_HouseUchiumi.button5 = "Cama 2"
      Tab_HouseUchiumi.button6 = "Cama 3"
    
      Tab_Train.name = "Fase del Metro"
      Tab_Train.section = "Escapar automáticamente del tren"
      Tab_Train.button = "Escapar del tren automáticamente"
    
      Tab_larvas.name = "Fase Larvas"
      Tab_larvas.section1 = "Mostrar ubicación del Boogeyman"
      Tab_larvas.section2 = "Teletransportarse a la zona segura"
      Tab_larvas.section3 = "Teletransportarse a las larvas"
      Tab_larvas.section4 = "Teletransportarse a Nurikabe"
      Tab_larvas.button1 = "ESP Boogeyman"
      Tab_larvas.button2 = "Zona segura"
      Tab_larvas.button3 = "TP Larva 1"
      Tab_larvas.button4 = "TP Larva 2"
      Tab_larvas.button5 = "TP Larva 3"
      Tab_larvas.button6 = "TP Larva 4"
      Tab_larvas.button7 = "TP Nurikabe"
    
      Tab_Lama.name = "Fase del Lodo"
      Tab_Lama.section = "Completar la fase automáticamente"
      Tab_Lama.button = "Completar automáticamente"
    
      Tab_HouseYurei.name = "Casa Yurei"
      Tab_HouseYurei.section1 = "Mostrar todas las estatuas malignas"
      Tab_HouseYurei.section2 = "Mostrar ubicaciones de las casas"
      Tab_HouseYurei.section3 = "Teletransportarse a las casas"
      Tab_HouseYurei.button1 = "ESP estatuas"
      Tab_HouseYurei.button2 = "ESP casas"
      for i = 1, 5 do
        Tab_HouseYurei["NameEsp" .. i] = "Casa " .. i
      end
      for i = 1, 5 do
        Tab_HouseYurei["House" .. i] = "Casa " .. i
      end
    
      Tab_BossYurei.name = "Boss Yurei"
      Tab_BossYurei.section1 = "Auto recoger las katanas"
      Tab_BossYurei.section2 = "Atravesar todos los árboles"
      Tab_BossYurei.section3 = "Volar + apuntar"
      Tab_BossYurei.button1 = "Recoger katanas"
      Tab_BossYurei.button2 = "No clip Árbol"
      Tab_BossYurei.button3 = "Volar (velocidad recomendada: 1)"
      Tab_BossYurei.NotificationName1 = "Activado"
      Tab_BossYurei.NotificationName2 = "Desactivado"
      Tab_BossYurei.NotificationContent1 = "El auto recoger está activado."
      Tab_BossYurei.NotificationContent2 = "El auto recoger está desactivado."
    
      Tab_FaseFinal.name = "Fase Final"
      Tab_FaseFinal.section1 = "Ejecutar la escena del Shinigami"
      Tab_FaseFinal.section2 = "Pasar automáticamente al Shinigami"
      Tab_FaseFinal.button1 = "Ejecutar escena"
      Tab_FaseFinal.button2 = "Escapar del Shinigami"
    
      Tab_Others.name = "Otros"
      Tab_Others.section1 = "Aumentar FPS"
      Tab_Others.section2 = "ESP"
      Tab_Others.section3 = "Recoger monedas automáticamente"
      Tab_Others.section4 = "Pasar por las puertas"
      Tab_Others.section5 = "Iluminar el entorno"
      Tab_Others.button1 = "Mejorar FPS"
      Tab_Others.button2 = "ESP Jugador"
      Tab_Others.button3 = "ESP Monedas"
      Tab_Others.button4 = "Recoger monedas automáticamente"
      Tab_Others.button5 = "No clip puertas"
      Tab_Others.button6 = "FullBright"
    
      Tab_Credit.name = "Créditos"
      Tab_Credit.section1 = "Creador del script y programador principal"
      Tab_Credit.section2 = "Tester del script"
      Tab_Credit.button1 = "Rael | Laelmano24"
      Tab_Credit.button2 = "David | DDGM_oficial"
      Tab_Credit.NotifierName = "¡Copiado!"
      Tab_Credit.NotifierContent1 = "Apodo del creador copiado al portapapeles."
      Tab_Credit.NotifierContent2 = "Apodo del tester copiado al portapapeles."

    else
      
      Tab_cutscene.name = "Skip Cutscene"
      Tab_cutscene.section = "Skip the Gozu and Mezu cutscene"
      Tab_cutscene.button = "Skip Cutscene"
    
      Tab_GiveHeart.name = "Kenio Stage"
      Tab_GiveHeart.section1 = "Auto collect all hearts"
      Tab_GiveHeart.section2 = "Escape GrinDemon"
      Tab_GiveHeart.button1 = "Auto collect hearts"
      Tab_GiveHeart.button2 = "Escape GrinDemon"
    
      Tab_Mapmaze.name = "GrinDemon Stage"
      Tab_Mapmaze.section1 = "Show GrinDemon location"
      Tab_Mapmaze.section2 = "Safe zone"
      Tab_Mapmaze.section3 = "Auto craft torch"
      Tab_Mapmaze.section4 = "Light the torch"
      Tab_Mapmaze.section5 = "Pass through the gate"
      Tab_Mapmaze.button1 = "ESP GrinDemon [Normal]"
      Tab_Mapmaze.button2 = "ESP GrinDemon [Nightmare]"
      Tab_Mapmaze.button3 = "Safe zone"
      Tab_Mapmaze.button4 = "Collect items"
      Tab_Mapmaze.button5 = "Light torch"
      Tab_Mapmaze.button6 = "TP door (Only after killing the demon)"
    
      Tab_DodoMeki.name = "DodoMeki Stage"
      Tab_DodoMeki.section1 = "Show DodoMeki location"
      Tab_DodoMeki.section2 = "Teleport to the bells"
      Tab_DodoMeki.section3 = "Teleport to puzzle door"
      Tab_DodoMeki.section4 = "Escape from DodoMeki"
      Tab_DodoMeki.button1 = "ESP DodoMeki"
      for i = 1, 6 do
        Tab_DodoMeki["SinoButton" .. i] = "Bell " .. i
      end
      Tab_DodoMeki.button2 = "TP puzzle door"
      Tab_DodoMeki.button3 = "Escape DodoMeki"
    
      Tab_Enzuzai.name = "Enzukai Stage"
      Tab_Enzuzai.section1 = "Activate Enzukai puzzle"
      Tab_Enzuzai.section2 = "Teleport outside the ship"
      Tab_Enzuzai.button1 = "Activate puzzle"
      Tab_Enzuzai.button2 = "TP outside the ship"
    
      Tab_HouseUchiumi.name = "Uchiumi Stage"
      Tab_HouseUchiumi.section1 = "Teleport to house area"
      Tab_HouseUchiumi.section2 = "Help raise your bar"
      Tab_HouseUchiumi.section3 = "Teleport to the beds"
      Tab_HouseUchiumi.button1 = "TP house"
      Tab_HouseUchiumi.button2 = "Prayer spot"
      Tab_HouseUchiumi.button3 = "Dishwashing area"
      Tab_HouseUchiumi.button4 = "Bed 1"
      Tab_HouseUchiumi.button5 = "Bed 2"
      Tab_HouseUchiumi.button6 = "Bed 3"
    
      Tab_Train.name = "Subway Stage"
      Tab_Train.section = "Auto escape the train"
      Tab_Train.button = "Auto escape train"
    
      Tab_larvas.name = "Larva Stage"
      Tab_larvas.section1 = "Show Boogeyman location"
      Tab_larvas.section2 = "Teleport to safe zone"
      Tab_larvas.section3 = "Teleport to larva"
      Tab_larvas.section4 = "Teleport to Nurikabe"
      Tab_larvas.button1 = "ESP Boogeyman"
      Tab_larvas.button2 = "Safe zone"
      Tab_larvas.button3 = "TP Larva 1"
      Tab_larvas.button4 = "TP Larva 2"
      Tab_larvas.button5 = "TP Larva 3"
      Tab_larvas.button6 = "TP Larva 4"
      Tab_larvas.button7 = "TP Nurikabe"
    
      Tab_Lama.name = "Mud Stage"
      Tab_Lama.section = "Finish the stage"
      Tab_Lama.button = "Auto finish"
    
      Tab_HouseYurei.name = "Yurei House"
      Tab_HouseYurei.section1 = "Show all evil statues"
      Tab_HouseYurei.section2 = "Show house locations"
      Tab_HouseYurei.section3 = "Teleport to houses"
      Tab_HouseYurei.button1 = "ESP statues"
      Tab_HouseYurei.button2 = "ESP houses"
      for i = 1, 5 do
        Tab_HouseYurei["NameEsp" .. i] = "House " .. i
      end
      for i = 1, 5 do
        Tab_HouseYurei["House" .. i] = "House " .. i
      end
    
      Tab_BossYurei.name = "Boss Yurei"
      Tab_BossYurei.section1 = "Auto collect the katanas"
      Tab_BossYurei.section2 = "Go through all the trees"
      Tab_BossYurei.section3 = "Fly + aim"
      Tab_BossYurei.button1 = "Collect katanas"
      Tab_BossYurei.button2 = "No clip Tree"
      Tab_BossYurei.button3 = "Fly (recommended speed: 1)"
      Tab_BossYurei.NotificationName1 = "Activated"
      Tab_BossYurei.NotificationName2 = "Deactivated"
      Tab_BossYurei.NotificationContent1 = "Auto collect is activated."
      Tab_BossYurei.NotificationContent2 = "Auto collect is deactivated."
    
      Tab_FaseFinal.name = "Final Stage"
      Tab_FaseFinal.section1 = "Execute Shinigami cutscene"
      Tab_FaseFinal.section2 = "Auto pass the Shinigami"
      Tab_FaseFinal.button1 = "Execute cutscene"
      Tab_FaseFinal.button2 = "Escape Shinigami"
    
      Tab_Others.name = "Others"
      Tab_Others.section1 = "Increase FPS"
      Tab_Others.section2 = "ESP"
      Tab_Others.section3 = "Auto collect coins"
      Tab_Others.section4 = "Pass through doors"
      Tab_Others.section5 = "Light up surroundings"
      Tab_Others.button1 = "FPS Boost"
      Tab_Others.button2 = "ESP Player"
      Tab_Others.button3 = "ESP Coins"
      Tab_Others.button4 = "Auto collect coins"
      Tab_Others.button5 = "No clip doors"
      Tab_Others.button6 = "FullBright"
    
      Tab_Credit.name = "Credits"
      Tab_Credit.section1 = "Script creator and head programmer"
      Tab_Credit.section2 = "Test script"
      Tab_Credit.button1 = "Rael | Laelmano24"
      Tab_Credit.button2 = "David | DDGM_oficial"
      Tab_Credit.NotifierName = "Copied!"
      Tab_Credit.NotifierContent1 = "Creator's nickname copied to clipboard."
      Tab_Credit.NotifierContent2 = "Tester's nickname copied to clipboard."
        
    end

    return Tab_cutscene, Tab_GiveHeart, Tab_Mapmaze, Tab_DodoMeki, Tab_Enzuzai, Tab_HouseUchiumi, Tab_Train, Tab_larvas, Tab_Lama, Tab_HouseYurei, Tab_BossYurei, Tab_FaseFinal, Tab_Others, Tab_Credit
end

return TranslationModule