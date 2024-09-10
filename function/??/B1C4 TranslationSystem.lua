local TranslationModule = {}

function TranslationModule:GetTabs()
    local Tab_AutoWin = {
      name = "",
      section1 = "",
      section2 = "",
      section3 = "",
      button = ""
    }
    
    local Tab_KillHearts  = {
      name = "",
      section = "",
      NotificationName,
      NotificationContent,
      button = ""
    }
    
    local Tab_AutoKillSaigomo = {
      name = "",
      section1 = "",
      section2 = "",
      section3 = "",
      button1 = "",
      button2 = "",
      button3 = "",
      NotificationName1,
      NotificationContent1,
      NotificationName2,
      NotificationContent2
      
    }
    
    local Tab_EspBixo = {
      name = "",
      section = "",
      button = ""
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
      
      Tab_AutoWin.name = "Auto ganhar"
      Tab_AutoWin.section1 = "Auto passar da parte1"
      Tab_AutoWin.section2 = "Auto passar da parte2"
      Tab_AutoWin.section3 = "Auto passar da parte3"
      Tab_AutoWin.button = "Auto ganhar"


      Tab_KillHearts.name = "Matar corações"
      Tab_KillHearts.section = "Auto matar os corações da sama"
      Tab_KillHearts.button = "Auto matar corações"
      Tab_KillHearts.NotificationName = "Auto click ativado"
      Tab_KillHearts.NotificationContent = "O teclado só vai ser aberto quando o auto click for desativado."


      Tab_AutoKillSaigomo.name = "Saigomo"
      Tab_AutoKillSaigomo.section1 = "Auto matar saigomo bem simples"
      Tab_AutoKillSaigomo.section2 = "Auto matar saigomo versão avançada"
      Tab_AutoKillSaigomo.section3 = "Auto click"
      Tab_AutoKillSaigomo.button1 = "Auto matar saigomo simples"
      Tab_AutoKillSaigomo.button2 = "Auto matar saigomo avançado"
      Tab_AutoKillSaigomo.button3 = "Auto click"
      Tab_AutoKillSaigomo.NotificationName1 = "Instruções"
      Tab_AutoKillSaigomo.NotificationContent1 = '[Ativado] Recomendo baixar um auto click, porque esse não é otimizado. [Atenção] Se a saigomo para de atacar, desative e ative o " Auto matar saigomo [Beta] "'
      Tab_AutoKillSaigomo.NotificationName2 = "Atenção"
      Tab_AutoKillSaigomo.NotificationContent2 = "[Desativado]. [Aviso] Mesmo com isso desativado, ele continua atacando a saigomo" 


      Tab_EspBixo.name = "Esp bixo"
      Tab_EspBixo.section = "Mostra as localização do monstro"
      Tab_EspBixo.button = "Esp monstro"


      -- Quarta aba do script
      Other.name = "Outros"
      Other.section1 = "Mostrar a localização dos jogadores"
      Other.section2 = "Iluminar ao redor"
      Other.button1 = "Esp player (não funciona corretamente)"
      Other.button2 = "FullBright"


      Creditos.name = "Créditos"
      Creditos.section = "Criador do script"
      Creditos.NotificationName = "Copiado"
      Creditos.NotificationContent = "O nick Laelmano24 foi copiado na área de trabalho"


    elseif locale == "en-us" then
      
      Tab_AutoWin.name = "Auto pass"
      Tab_AutoWin.section1 = "Auto pass part1"
      Tab_AutoWin.section2 = "Auto pass part2"
      Tab_AutoWin.section3 = "Auto pass part3"
      Tab_AutoWin.button = "Auto win"
      
      Tab_KillHearts.name = "Kill hearts"
      Tab_KillHearts.section = "Auto kill sama hearts"
      Tab_KillHearts.button = "Auto kill hearts"
      Tab_KillHearts.NotificationName = "Auto click activated"
      Tab_KillHearts.NotificationContent = "The keyboard will only open when auto click is deactivated."
      
      Tab_AutoKillSaigomo.name = "Saigomo"
      Tab_AutoKillSaigomo.section1 = "Auto kill saigomo very simple"
      Tab_AutoKillSaigomo.section2 = "Auto kill saigomo advanced version"
      Tab_AutoKillSaigomo.section3 = "Auto click"
      Tab_AutoKillSaigomo.button1 = "Auto kill simple saigomo"
      Tab_AutoKillSaigomo.button2 = "Auto kill advanced saigomo"
      Tab_AutoKillSaigomo.button3 = "Auto click"
      Tab_AutoKillSaigomo.NotificationName1 = "Instructions"
      Tab_AutoKillSaigomo.NotificationContent1 = '[Activated] I recommend downloading an auto clicker because this one is not optimized. [Warning] If saigomo stops attacking, disable and re-enable "Auto kill saigomo [Beta]"'
      Tab_AutoKillSaigomo.NotificationName2 = "Warning"
      Tab_AutoKillSaigomo.NotificationContent2 = "[Deactivated]. [Notice] Even when this is disabled, it continues attacking saigomo"
      
      Tab_EspBixo.name = "Esp monster"
      Tab_EspBixo.section = "Shows monster location"
      Tab_EspBixo.button = "Esp monster"
      
      Other.name = "Others"
      Other.section1 = "Show player location"
      Other.section2 = "Illuminate surroundings"
      Other.button1 = "Esp player (not working properly)"
      Other.button2 = "FullBright"
      
      Creditos.name = "Credits"
      Creditos.section = "Script creator"
      Creditos.NotificationName = "Copied"
      Creditos.NotificationContent = "The nickname Laelmano24 was copied to the clipboard"
      
    elseif locale:sub(1, 2) == "es" then
      
      Tab_AutoWin.name = "Auto ganar"
      Tab_AutoWin.section1 = "Auto pasar parte1"
      Tab_AutoWin.section2 = "Auto pasar parte2"
      Tab_AutoWin.section3 = "Auto pasar parte3"
      Tab_AutoWin.button = "Auto ganar"
      
      Tab_KillHearts.name = "Matar corazones"
      Tab_KillHearts.section = "Auto matar los corazones de sama"
      Tab_KillHearts.button = "Auto matar corazones"
      Tab_KillHearts.NotificationName = "Auto click activado"
      Tab_KillHearts.NotificationContent = "El teclado solo se abrirá cuando el auto click esté desactivado."
      
      Tab_AutoKillSaigomo.name = "Saigomo"
      Tab_AutoKillSaigomo.section1 = "Auto matar saigomo muy simple"
      Tab_AutoKillSaigomo.section2 = "Auto matar saigomo versión avanzada"
      Tab_AutoKillSaigomo.section3 = "Auto click"
      Tab_AutoKillSaigomo.button1 = "Auto matar saigomo simple"
      Tab_AutoKillSaigomo.button2 = "Auto matar saigomo avanzado"
      Tab_AutoKillSaigomo.button3 = "Auto click"
      Tab_AutoKillSaigomo.NotificationName1 = "Instrucciones"
      Tab_AutoKillSaigomo.NotificationContent1 = '[Activado] Recomiendo descargar un auto clicker, porque este no está optimizado. [Advertencia] Si saigomo deja de atacar, desactiva y vuelve a activar "Auto matar saigomo [Beta]"'
      Tab_AutoKillSaigomo.NotificationName2 = "Advertencia"
      Tab_AutoKillSaigomo.NotificationContent2 = "[Desactivado]. [Aviso] Incluso cuando esto está desactivado, sigue atacando a saigomo"
      
      Tab_EspBixo.name = "Esp monstruo"
      Tab_EspBixo.section = "Muestra la ubicación del monstruo"
      Tab_EspBixo.button = "Esp monstruo"
      
      Other.name = "Otros"
      Other.section1 = "Mostrar la ubicación de los jugadores"
      Other.section2 = "Iluminar los alrededores"
      Other.button1 = "Esp jugador (no funciona correctamente)"
      Other.button2 = "FullBright"
      
      Creditos.name = "Créditos"
      Creditos.section = "Creador del script"
      Creditos.NotificationName = "Copiado"
      Creditos.NotificationContent = "El apodo Laelmano24 fue copiado al portapapeles"
      
    else
      
      Tab_AutoWin.name = "Auto pass"
      Tab_AutoWin.section1 = "Auto pass part1"
      Tab_AutoWin.section2 = "Auto pass part2"
      Tab_AutoWin.section3 = "Auto pass part3"
      Tab_AutoWin.button = "Auto win"
      
      Tab_KillHearts.name = "Kill hearts"
      Tab_KillHearts.section = "Auto kill sama hearts"
      Tab_KillHearts.button = "Auto kill hearts"
      Tab_KillHearts.NotificationName = "Auto click activated"
      Tab_KillHearts.NotificationContent = "The keyboard will only open when auto click is deactivated."
      
      Tab_AutoKillSaigomo.name = "Saigomo"
      Tab_AutoKillSaigomo.section1 = "Auto kill saigomo very simple"
      Tab_AutoKillSaigomo.section2 = "Auto kill saigomo advanced version"
      Tab_AutoKillSaigomo.section3 = "Auto click"
      Tab_AutoKillSaigomo.button1 = "Auto kill simple saigomo"
      Tab_AutoKillSaigomo.button2 = "Auto kill advanced saigomo"
      Tab_AutoKillSaigomo.button3 = "Auto click"
      Tab_AutoKillSaigomo.NotificationName1 = "Instructions"
      Tab_AutoKillSaigomo.NotificationContent1 = '[Activated] I recommend downloading an auto clicker because this one is not optimized. [Warning] If saigomo stops attacking, disable and re-enable "Auto kill saigomo [Beta]"'
      Tab_AutoKillSaigomo.NotificationName2 = "Warning"
      Tab_AutoKillSaigomo.NotificationContent2 = "[Deactivated]. [Notice] Even when this is disabled, it continues attacking saigomo"
      
      Tab_EspBixo.name = "Esp monster"
      Tab_EspBixo.section = "Shows monster location"
      Tab_EspBixo.button = "Esp monster"
      
      Other.name = "Others"
      Other.section1 = "Show player location"
      Other.section2 = "Illuminate surroundings"
      Other.button1 = "Esp player (not working properly)"
      Other.button2 = "FullBright"
      
      Creditos.name = "Credits"
      Creditos.section = "Script creator"
      Creditos.NotificationName = "Copied"
      Creditos.NotificationContent = "The nickname Laelmano24 was copied to the clipboard"
      
    end

    return Tab_AutoWin, Tab_KillHearts, Tab_AutoKillSaigomo, Tab_EspBixo, Other, Creditos
end

return TranslationModule