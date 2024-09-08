local TranslationModule = {}

function TranslationModule:GetTabs()
    local Tab_Oficine = {
      name = "",
      section = "",
      button = ""
    }
    
    local Tab_Sisters = {
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
      Notification = "",
      NotificationContent = ""
    }
    
    local Tab_Nagisa = {
      name = "",
      section1 = "",
      section2 = "",
      button1 = "",
      button2 = ""
    }
    
    local Tab_PhasesFrame = {
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
      HouseButton1 = "",
      HouseButton2 = "",
      HouseButton3 = "",
      HouseButton4 = "",
      HouseButton5 = ""
    }
    
    local Tab_VelaFase = {
      name = "",
      section1 = "",
      section2 = "",
      section3 = "",
      section4 = "",
      button1 = "",
      button2 = "",
      button3 = "",
      VelaButton1 = "",
      VelaButton2 = "",
      VelaButton3 = "",
      VelaButton4 = "",
      VelaButton5 = "",
      VelaButton6 = "",
      VelaButton7 = "",
      VelaButton8 = "",
      VelaButton9 = "",
      
    }
    
    local Other = {
      tabname = "",
      section1 = "",
      button1 = "",
      section2 = "",
      button2 = ""
    }
    
    local Creditos = {
      tabname = "",
      section = "",
      nameNotificacao = "",
      notificacao = ""
    }

    local Players = game:GetService("Players")
    local player = Players.LocalPlayer
    local locale = player.LocaleId:lower()

    if locale == "pt-br" then
      Tab_Oficine.name = "Tp sala"
      Tab_Oficine.section = "Teleportar para a sala"
      Tab_Oficine.button = "Teleportar pra sala"
          
      Tab_Sisters.name = "Fase das Irmãs"
      Tab_Sisters.section1 = "Ler livro na sala"
      Tab_Sisters.section2 = "Esp monstro rin"
      Tab_Sisters.section3 = "Auto coletar os ratos"
      Tab_Sisters.section4 = "Auto escapar dessa sala"
      Tab_Sisters.section5 = "Auto escapar de Rin"
      Tab_Sisters.button1 = "Ler livro"
      Tab_Sisters.button2 = "Esp rin"
      Tab_Sisters.button3 = "Auto coletar"
      Tab_Sisters.button4 = "Auto escapar"
      Tab_Sisters.button5 = "Auto fugir de Rin"
      Tab_Sisters.Notification = "Carregando..."
      Tab_Sisters.NotificationContent = "Processando arquivos do jogo e carregando script"
          
      Tab_Nagisa.name = "Fase da Nagisa"
      Tab_Nagisa.section1 = "Auto passar da Nagisa"
      Tab_Nagisa.section2 = "Auto escapar da Nagisa"
      Tab_Nagisa.button1 = "Auto ganhar da Nagisa"
      Tab_Nagisa.button2 = "Auto fugir da Nagisa"
          
      Tab_PhasesFrame.name = "Fase das pinturas"
      Tab_PhasesFrame.section1 = "Falar com o kenio"
      Tab_PhasesFrame.section2 = "Mostra quadro da casa da pintura"
      Tab_PhasesFrame.section3 = "Casas dos quadros"
      Tab_PhasesFrame.section4 = "Mostra monstro"
      Tab_PhasesFrame.section5 = "Casa de acender os quadros"
      Tab_PhasesFrame.button1 = "Falar"
      Tab_PhasesFrame.button2 = "Mostra quadro [Preview]"
      Tab_PhasesFrame.button3 = "Esp monstro "
      Tab_PhasesFrame.button4 = "Tp casa de acender as velas"
          
      for i = 1, 5 do
        Tab_PhasesFrame["HouseButton" .. i] = "Casa " .. i
      end
          
      Tab_VelaFase.name = "Fase das velas"
      Tab_VelaFase.section1 = "Teleportar para zona segura"
      Tab_VelaFase.section2 = "Mostrar monstros"
      Tab_VelaFase.section3 = "Teleportar para as velas"
      Tab_VelaFase.section4 = "Escapar de Tenomo"
      Tab_VelaFase.button1 = "Zona segura"
      Tab_VelaFase.button2 = "Esp monstros"
      Tab_VelaFase.button4 = "Auto escapar"
      
      for i = 1, 9 do
        Tab_VelaFase["VelaButton" .. i] = "Vela " .. i
      end
          
      -- Quarta aba do script
      Other.tabname = "Outros"
      Other.section1 = "Mostrar onde o jogador tá"
      Other.button1 = "Esp player (não funciona corretamente)"
      Other.section2 = "Iluminar ao redor"
      Other.button2 = "FullBright"
            
      --Quinta aba do script
      Creditos.tabname = "Créditos"
      Creditos.section = "Criador do script"
      Creditos.nameNotificacao = "Copiado"
      Creditos.notificacao = "O nick Laelmano24 foi copiado na área de trabalho"

    elseif locale == "en-us" then
      
      Tab_Oficine.name = "Tp room"
      Tab_Oficine.section = "Teleport to the room"
      Tab_Oficine.button = "Teleport to the room"
      
      Tab_Sisters.name = "Sisters Phase"
      Tab_Sisters.section1 = "Read book in the living room"
      Tab_Sisters.section2 = "Esp monster Rin"
      Tab_Sisters.section3 = "Auto collect the rats"
      Tab_Sisters.section4 = "Auto escape from this room"
      Tab_Sisters.section5 = "Rin's auto escape"
      Tab_Sisters.button1 = "Read book"
      Tab_Sisters.button2 = "Esp rin"
      Tab_Sisters.button3 = "Auto collect"
      Tab_Sisters.button4 = "Auto escape"
      Tab_Sisters.button5 = "Auto run away from Rin"
      Tab_Sisters.Notification = "Loading..."
      Tab_Sisters.NotificationContent = "Processing game files and loading script"
      
      Tab_Nagisa.name = "Nagisa Phase"
      Tab_Nagisa.section1 = "Auto pass Nagisa"
      Tab_Nagisa.section2 = "Auto escape from Nagisa"
      Tab_Nagisa.button1 = "Auto win from Nagisa"
      Tab_Nagisa.button2 = "Auto run away from Nagisa"
      
      Tab_PhasesFrame.name = "Painting phase"
      Tab_PhasesFrame.section1 = "Talk to Kenio"
      Tab_PhasesFrame.section2 = "Show picture of the painting house"
      Tab_PhasesFrame.section3 = "Houses of paintings"
      Tab_PhasesFrame.section4 = "Show monster"
      Tab_PhasesFrame.section5 = "House of lighting the pictures"
      Tab_PhasesFrame.button1 = "To speak"
      Tab_PhasesFrame.button2 = "Show painting [Preview]"
      Tab_PhasesFrame.button3 = "Monster Esp "
      Tab_PhasesFrame.button4 = "Tp house to light the candles"
      
      for i = 1, 5 do
        Tab_PhasesFrame["HouseButton" .. i] = "House " .. i
      end
      
      Tab_VelaFase.name = "Candle phase"
      Tab_VelaFase.section1 = "Teleport to safe zone"
      Tab_VelaFase.section2 = "Show monsters"
      Tab_VelaFase.section3 = "Teleport to the candles"
      Tab_VelaFase.section4 = "Escape from Tenomo"
      Tab_VelaFase.button1 = "Safe zone"
      Tab_VelaFase.button2 = "Esp monsters"
      Tab_VelaFase.button4 = "Auto escape"
      for i = 1, 9 do
        Tab_VelaFase["VelaButton" .. i] = "Candle " .. i
      end
      
      -- Quarta aba do script
      Other.tabname = "Others"
      Other.section1 = "Show player location"
      Other.button1 = "Esp player (does not work correctly)"
      Other.section2 = "Light up your surroundings"
      Other.button2 = "FullBright"
        
      --Quinta aba do script
      Creditos.tabname = "Credit"
      Creditos.section = "Script creator"
      Creditos.nameNotificacao = "Copied"
      Creditos.notificacao = "The nickname Laelmano24 was copied to the desktop"
        

    elseif locale:sub(1, 2) == "es" then
        
      Tab_Oficine.name = "Tp habitación"
      Tab_Oficine.section = "Teletransportarse a la habitación"
      Tab_Oficine.button = "Teletransportarse a la habitación"
        
      Tab_Sisters.name = "Fase de hermanas"
      Tab_Sisters.section1 = "Leer un libro en la sala de estar"
      Tab_Sisters.section2 = "Esp Monstruo Rin"
      Tab_Sisters.section3 = "Auto recoge las ratas"
      Tab_Sisters.section4 = "Auto escapar de esta habitación"
      Tab_Sisters.section5 = "Auto escape de Rin"
      Tab_Sisters.button1 = "Leer libro"
      Tab_Sisters.button2 = "Esp rin"
      Tab_Sisters.button3 = "Auto recolectar"
      Tab_Sisters.button4 = "Auto escapar"
      Tab_Sisters.button5 = "Auto huye de Rin"
      Tab_Sisters.Notification = "Cargando..."
      Tab_Sisters.NotificationContent = "Procesando archivos de juego y cargando script"
      
      Tab_Nagisa.name = "Fase Nagisa"
      Tab_Nagisa.section1 = "Auto pasar nagisa"
      Tab_Nagisa.section2 = "Auto escapar de nagisa"
      Tab_Nagisa.button1 = "Auto Victoria de Nagisa"
      Tab_Nagisa.button2 = "Auto huye de nagisa"
      
      Tab_PhasesFrame.name = "Fase de pintura"
      Tab_PhasesFrame.section1 = "Hablar con Kenio"
      Tab_PhasesFrame.section2 = "Mostrar imagen de la casa de pintura"
      Tab_PhasesFrame.section3 = "Casas de pinturas"
      Tab_PhasesFrame.section4 = "Mostrar monstruo"
      Tab_PhasesFrame.section5 = "Casa de iluminacion de los cuadros"
      Tab_PhasesFrame.button1 = "Hablar"
      Tab_PhasesFrame.button2 = "Mostrar imagen [Preview]"
      Tab_PhasesFrame.button3 = "Monstruo esp "
      Tab_PhasesFrame.button4 = "Tp casa para encender las velas"
      
      for i = 1, 5 do
        Tab_PhasesFrame["HouseButton" .. i] = "Casa " .. i
      end
      
      Tab_VelaFase.name = "Fase de vela"
      Tab_VelaFase.section1 = "Teletransportarse a zona segura"
      Tab_VelaFase.section2 = "Mostrar monstruos"
      Tab_VelaFase.section3 = "Teletransportarse a las velas"
      Tab_VelaFase.section4 = "Escape de Tenomo"
      Tab_VelaFase.button1 = "Zona segura"
      Tab_VelaFase.button2 = "Esp monstruos"
      Tab_VelaFase.button4 = "Auto escapar"
      for i = 1, 9 do
        Tab_VelaFase["VelaButton" .. i] = "Vela " .. i
      end
      
      -- Quarta aba do script
      Other.tabname = "Otros"
      Other.section1 = "Indique la posición del jugador"
      Other.button1 = "Esp player (no funciona correctamente)"
      Other.section2 = "Ilumina a tu alrededor"
      Other.button2 = "FullBright"
        
      --Quinta aba do script
      Creditos.tabname = "Crédito"
      Creditos.section = "Script creador"
      Creditos.nameNotificacao = "Copiado"
      Creditos.notificacao = "El apodo Laelmano24 fue copiado al escritorio"

    else
      
      Tab_Oficine.name = "Tp room"
      Tab_Oficine.section = "Teleport to the room"
      Tab_Oficine.button = "Teleport to the room"
      
      Tab_Sisters.name = "Sisters Phase"
      Tab_Sisters.section1 = "Read book in the living room"
      Tab_Sisters.section2 = "Esp monster Rin"
      Tab_Sisters.section3 = "Auto collect the rats"
      Tab_Sisters.section4 = "Auto escape from this room"
      Tab_Sisters.section5 = "Rin's auto escape"
      Tab_Sisters.button1 = "Read book"
      Tab_Sisters.button2 = "Esp rin"
      Tab_Sisters.button3 = "Auto collect"
      Tab_Sisters.button4 = "Auto escape"
      Tab_Sisters.button5 = "Auto run away from Rin"
      Tab_Sisters.Notification = "Loading..."
      Tab_Sisters.NotificationContent = "Processing game files and loading script"
      
      Tab_Nagisa.name = "Nagisa Phase"
      Tab_Nagisa.section1 = "Auto pass Nagisa"
      Tab_Nagisa.section2 = "Auto escape from Nagisa"
      Tab_Nagisa.button1 = "Auto win from Nagisa"
      Tab_Nagisa.button2 = "Auto run away from Nagisa"
      
      Tab_PhasesFrame.name = "Painting phase"
      Tab_PhasesFrame.section1 = "Talk to Kenio"
      Tab_PhasesFrame.section2 = "Show picture of the painting house"
      Tab_PhasesFrame.section3 = "Houses of paintings"
      Tab_PhasesFrame.section4 = "Show monster"
      Tab_PhasesFrame.section5 = "House of lighting the pictures"
      Tab_PhasesFrame.button1 = "To speak"
      Tab_PhasesFrame.button2 = "Show painting [Preview]"
      Tab_PhasesFrame.button3 = "Monster Esp "
      Tab_PhasesFrame.button4 = "Tp house to light the candles"
      
      for i = 1, 5 do
        Tab_PhasesFrame["HouseButton" .. i] = "House " .. i
      end
      
      Tab_VelaFase.name = "Candle phase"
      Tab_VelaFase.section1 = "Teleport to safe zone"
      Tab_VelaFase.section2 = "Show monsters"
      Tab_VelaFase.section3 = "Teleport to the candles"
      Tab_VelaFase.section4 = "Escape from Tenomo"
      Tab_VelaFase.button1 = "Safe zone"
      Tab_VelaFase.button2 = "Esp monsters"
      Tab_VelaFase.button4 = "Auto escape"
      for i = 1, 9 do
        Tab_VelaFase["VelaButton" .. i] = "Candle " .. i
      end
      
      -- Quarta aba do script
      Other.tabname = "Others"
      Other.section1 = "Show player location"
      Other.button1 = "Esp player (does not work correctly)"
      Other.section2 = "Light up your surroundings"
      Other.button2 = "FullBright"
        
      --Quinta aba do script
      Creditos.tabname = "Credit"
      Creditos.section = "Script creator"
      Creditos.nameNotificacao = "Copied"
      Creditos.notificacao = "The nickname Laelmano24 was copied to the desktop"

    end

    return Tab_Oficine, Tab_Sisters, Tab_Nagisa, Tab_VelaFase, Other, Creditos
end

return TranslationModule