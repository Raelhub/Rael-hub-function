local TranslationModule = {}

function TranslationModule:GetTabs()
  local Tab_TpBoxe = {
    name = "",
    section1 = "",
    section2 = "",
    button1 = "",
    button2 = "",
    section3 = "",
    TpBoxeButton1 = "",
    TpBoxeButton2 = "",
    TpBoxeButton3 = "",
    TpBoxeButton4 = "",
    TpBoxeButton5 = "",
    TpBoxeButton6 = "",
    TpBoxeButton7 = ""
  }

  local Tab_Cards = {
    name = "",
    section1 = "",
    section2 = "",
    section3 = "",
    button1 = "",
    button2 = "",
    button3 = ""
  }

  local Tab_RingMaster = {
    name = "",
    section1 = "",
    section2 = "",
    button1 = "",
    button2 = ""
  }

  local Tab_BixoEsp = {
    name = "",
    section = "",
    button1 = "",
    button2 = ""
  }

  local Other = {
    name = "",
    section1 = "",
    section2 = "",
    button1 = "",
    button2 = ""
  }

  local Creditos = {
    name = "",
    section = "",
    NotificationName = "",
    NotificationContent = ""
  }

  local Players = game:GetService("Players")
  local player = Players.LocalPlayer
  local locale = player.LocaleId:lower()

  if locale == "pt-br" then
    Tab_TpBoxe.name = "Tp boxes"
    Tab_TpBoxe.section1 = "Skip the clown stage"
    Tab_TpBoxe.section2 = "Teleport to safe zone"
    Tab_TpBoxe.section3 = "Teleport to the boxes"
    Tab_TpBoxe.button1 = "Skip stage"
    Tab_TpBoxe.button2 = "Safe zone"
    for i = 1, 7 do
        Tab_TpBoxe["TpBoxeButton" .. i] = "Box " .. i
    end


    Tab_Cards.name = "Fase das cartas"
    Tab_Cards.section1 = "Teleportar para área segura"
    Tab_Cards.button1 = "Safe zone"
    Tab_Cards.section2 = "Mostra onde está as cartas"
    Tab_Cards.button2 = "Mostra cartas"
    Tab_Cards.section3 = "Teleportar para a área das cartas"
    Tab_Cards.button3 = "Tp área das cartas"


    Tab_RingMaster.name = "RingMaster"
    Tab_RingMaster.section1 = "Teleportar para safe zone"
    Tab_RingMaster.button1 = "Safe zone"
    Tab_RingMaster.section2 = "Teleportar para o palco"
    Tab_RingMaster.button2 = "Palco"
    
    Tab_BixoEsp.name = "Esp bixo"
    Tab_BixoEsp.section = "Mostrar aonde tá o bixo"
    Tab_BixoEsp.button1 = "Esp palhaço"
    Tab_BixoEsp.button2 = "Esp ringmaster"


    Other.name = "Outros"
    Other.section1 = "Mostrar o player"
    Other.section2 = "Ilumina ao seu redor"
    Other.button1 = "Esp player (Não funciona corretamente)"
    Other.button2 = "FullBright"


    Creditos.name = "Créditos"
    Creditos.section = "Criador do script"
    Creditos.NotificationName = "Copiado!"
    Creditos.NotificationContent = "Nick do jogador foi copiado na área de trabalho"

  elseif locale == "en-us" then
    Tab_TpBoxe.name = "Tp boxes"
    Tab_TpBoxe.section1 = "Skip the clown stage"
    Tab_TpBoxe.section2 = "Teleport to safe zone"
    Tab_TpBoxe.section3 = "Teleport to the boxes"
    Tab_TpBoxe.button1 = "Skip stage"
    Tab_TpBoxe.button2 = "Safe zone"
    for i = 1, 7 do
        Tab_TpBoxe["TpBoxeButton" .. i] = "Box " .. i
    end
    
    Tab_Cards.name = "Cards phase"
    Tab_Cards.section1 = "Teleport to safe area"
    Tab_Cards.button1 = "Safe zone"
    Tab_Cards.section2 = "Show where the cards are"
    Tab_Cards.button2 = "Show cards"
    Tab_Cards.section3 = "Teleport to the card area"
    Tab_Cards.button3 = "Tp card zone"
    
    Tab_RingMaster.name = "RingMaster"
    Tab_RingMaster.section1 = "Teleport to safe zone"
    Tab_RingMaster.button1 = "Safe zone"
    Tab_RingMaster.section2 = "Teleport to the stage"
    Tab_RingMaster.button2 = "Stage"
    
    Tab_BixoEsp.name = "Esp creature"
    Tab_BixoEsp.section = "Show where the creature is"
    Tab_BixoEsp.button1 = "Esp clown"
    Tab_BixoEsp.button2 = "Esp ringmaster"
    
    Other.name = "Others"
    Other.section1 = "Show the player"
    Other.section2 = "Illuminate around you"
    Other.button1 = "Esp player (Does not work properly)"
    Other.button2 = "FullBright"
    
    Creditos.name = "Credits"
    Creditos.section = "Script creator"
    Creditos.NotificationName = "Copied!"
    Creditos.NotificationContent = "Player's nickname has been copied to the clipboard"
  elseif locale:sub(1, 2) == "es" then
    
    Tab_TpBoxe.name = "Tp cajas"
    Tab_TpBoxe.section1 = "Saltar la fase del payaso"
    Tab_TpBoxe.section2 = "Teletransportar a la zona segura"
    Tab_TpBoxe.section3 = "Teletransportar a las cajas"
    Tab_TpBoxe.button1 = "Saltar fase"
    Tab_TpBoxe.button2 = "Zona segura"
    for i = 1, 7 do
        Tab_TpBoxe["TpBoxeButton" .. i] = "Caja " .. i
    end
    
    Tab_Cards.name = "Fase de las cartas"
    Tab_Cards.section1 = "Teletransportar a la zona segura"
    Tab_Cards.button1 = "Zona segura"
    Tab_Cards.section2 = "Mostrar dónde están las cartas"
    Tab_Cards.button2 = "Mostrar cartas"
    Tab_Cards.section3 = "Teletransportar a la zona de las cartas"
    Tab_Cards.button3 = "Tp zona de cartas"
    
    Tab_RingMaster.name = "RingMaster"
    Tab_RingMaster.section1 = "Teletransportar a la zona segura"
    Tab_RingMaster.button1 = "Zona segura"
    Tab_RingMaster.section2 = "Teletransportar al escenario"
    Tab_RingMaster.button2 = "Escenario"
    
    Tab_BixoEsp.name = "Esp criatura"
    Tab_BixoEsp.section = "Mostrar dónde está la criatura"
    Tab_BixoEsp.button1 = "Esp payaso"
    Tab_BixoEsp.button2 = "Esp ringmaster"
    
    Other.name = "Otros"
    Other.section1 = "Mostrar el jugador"
    Other.section2 = "Ilumina alrededor de ti"
    Other.button1 = "Esp jugador (No funciona correctamente)"
    Other.button2 = "FullBright"
    
    Creditos.name = "Créditos"
    Creditos.section = "Creador del script"
    Creditos.NotificationName = "¡Copiado!"
    Creditos.NotificationContent = "El nombre del jugador ha sido copiado al portapapeles"
  else
    
    Tab_TpBoxe.name = "Tp boxes"
    Tab_TpBoxe.section1 = "Skip the clown stage"
    Tab_TpBoxe.section2 = "Teleport to safe zone"
    Tab_TpBoxe.section3 = "Teleport to the boxes"
    Tab_TpBoxe.button1 = "Skip stage"
    Tab_TpBoxe.button2 = "Safe zone"
    for i = 1, 7 do
        Tab_TpBoxe["TpBoxeButton" .. i] = "Box " .. i
    end
    
    Tab_Cards.name = "Cards phase"
    Tab_Cards.section1 = "Teleport to safe area"
    Tab_Cards.button1 = "Safe zone"
    Tab_Cards.section2 = "Show where the cards are"
    Tab_Cards.button2 = "Show cards"
    Tab_Cards.section3 = "Teleport to the card area"
    Tab_Cards.button3 = "Tp card zone"
    
    Tab_RingMaster.name = "RingMaster"
    Tab_RingMaster.section1 = "Teleport to safe zone"
    Tab_RingMaster.button1 = "Safe zone"
    Tab_RingMaster.section2 = "Teleport to the stage"
    Tab_RingMaster.button2 = "Stage"
    
    Tab_BixoEsp.name = "Esp creature"
    Tab_BixoEsp.section = "Show where the creature is"
    Tab_BixoEsp.button1 = "Esp clown"
    Tab_BixoEsp.button2 = "Esp ringmaster"
    
    Other.name = "Others"
    Other.section1 = "Show the player"
    Other.section2 = "Illuminate around you"
    Other.button1 = "Esp player (Does not work properly)"
    Other.button2 = "FullBright"
    
    Creditos.name = "Credits"
    Creditos.section = "Script creator"
    Creditos.NotificationName = "Copied!"
    Creditos.NotificationContent = "Player's nickname has been copied to the clipboard"
  end

    return Tab_TpBoxe, Tab_Cards, Tab_RingMaster, Tab_BixoEsp, Other, Creditos
end

return TranslationModule