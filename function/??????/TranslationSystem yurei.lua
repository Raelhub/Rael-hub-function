local TranslationModule = {}

function TranslationModule:GetTabs()
    
    local Tab_AutoHouseYurei = {
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
      
      Tab_AutoHouseYurei.name = "Auto yurei"
      Tab_AutoHouseYurei.section = "Pular fases e ir para casa da yurei"
      Tab_AutoHouseYurei.button = "Auto casa yurei"
      
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
      Tab_BossYurei.section2 = "Atravessar todos as árvores"
      Tab_BossYurei.sectio3 = "Voar + mira"
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
      
      Tab_AutoHouseYurei.name = "Auto Yurei"
      Tab_AutoHouseYurei.section = "Skip levels and go to Yurei's house"
      Tab_AutoHouseYurei.button = "Auto Yurei House"
      
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
      
      Tab_AutoHouseYurei.name = "Auto Yurei"
      Tab_AutoHouseYurei.section = "Saltar niveles e ir a la casa de Yurei"
      Tab_AutoHouseYurei.button = "Auto casa de Yurei"
      
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
      
      Tab_AutoHouseYurei.name = "Auto Yurei"
      Tab_AutoHouseYurei.section = "Skip levels and go to Yurei's house"
      Tab_AutoHouseYurei.button = "Auto Yurei House"
    
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

    return Tab_AutoHouseYurei, Tab_HouseYurei, Tab_BossYurei, Tab_FaseFinal, Tab_Others, Tab_Credit
end

return TranslationModule