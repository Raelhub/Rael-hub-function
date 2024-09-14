local TranslationModule = {}

function TranslationModule:GetTabs()
  
  local Tab_Talk_elf = {
    name = "",
    section = "",
    button = ""
  }
  local Tab_Fix_sledding = {
    name = "",
    section = "",
    button = ""
  }
  local Tab_Collect_toys = {
    name = "",
    section = "",
    button = ""
  }
  local Tab_Get_key = { 
    name = "",
    section = "",
    button = ""
  }
  local Tab_BixoEsp = {
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



    Tab_Talk_elf.name = "Falar com o elfo"
    Tab_Talk_elf.section = "Falar com o elfo"
    Tab_Talk_elf.button = "Falar"



    Tab_Fix_sledding.name = "Conserta o trenó"
    Tab_Fix_sledding.section = "Auto conserta o trenó do pai noel"
    Tab_Fix_sledding.button = "Auto consertar"



    Tab_Collect_toys.name = "Coletar brinquedos"
    Tab_Collect_toys.section = "Auto coletar os brinquedos"
    Tab_Collect_toys.button = "Auto coletar"



    Tab_Get_key.name = "Auto pegar chave"
    Tab_Get_key.section = "Auto coletar a chave"
    Tab_Get_key.button = "Auto coletar"



    Tab_BixoEsp.name = "Esp bixo"
    Tab_BixoEsp.section = "Mostrar aonde tá o bixo"
    Tab_BixoEsp.button = "Esp Krampus"



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
  
  
  
    Tab_Talk_elf.name = "Talk to the elf"
    Tab_Talk_elf.section = "Talk to the elf"
    Tab_Talk_elf.button = "Talk"
    
    
    
    Tab_Fix_sledding.name = "Fix the sled"
    Tab_Fix_sledding.section = "Auto fix Santa's sled"
    Tab_Fix_sledding.button = "Auto fix"
    
    
    
    Tab_Collect_toys.name = "Collect toys"
    Tab_Collect_toys.section = "Auto collect the toys"
    Tab_Collect_toys.button = "Auto collect"
    
    
    
    Tab_Get_key.name = "Auto get key"
    Tab_Get_key.section = "Auto collect the key"
    Tab_Get_key.button = "Auto collect"
    
    
    
    Tab_BixoEsp.name = "Esp creature"
    Tab_BixoEsp.section = "Show where the creature is"
    Tab_BixoEsp.button = "Esp Krampus"
    
    
    
    Other.name = "Others"
    Other.section1 = "Show the player"
    Other.section2 = "Illuminate around you"
    Other.button1 = "Esp player (Doesn't work properly)"
    Other.button2 = "FullBright"
    
    
    
    Creditos.name = "Credits"
    Creditos.section = "Script creator"
    Creditos.NotificationName = "Copied!"
    Creditos.NotificationContent = "Player's nickname has been copied to the clipboard"
    
    
    
  elseif locale:sub(1, 2) == "es" then

  
  
    Tab_Talk_elf.name = "Hablar con el elfo"
    Tab_Talk_elf.section = "Hablar con el elfo"
    Tab_Talk_elf.button = "Hablar"
    
    
    
    Tab_Fix_sledding.name = "Arreglar el trineo"
    Tab_Fix_sledding.section = "Auto arreglar el trineo de Papá Noel"
    Tab_Fix_sledding.button = "Auto arreglar"
    
    
    
    Tab_Collect_toys.name = "Recoger juguetes"
    Tab_Collect_toys.section = "Auto recoger los juguetes"
    Tab_Collect_toys.button = "Auto recoger"
    
    
    
    Tab_Get_key.name = "Auto coger llave"
    Tab_Get_key.section = "Auto recoger la llave"
    Tab_Get_key.button = "Auto recoger"
    
    
    
    Tab_BixoEsp.name = "Esp criatura"
    Tab_BixoEsp.section = "Mostrar dónde está la criatura"
    Tab_BixoEsp.button = "Esp Krampus"
    
    
    
    Other.name = "Otros"
    Other.section1 = "Mostrar el jugador"
    Other.section2 = "Iluminar a tu alrededor"
    Other.button1 = "Esp jugador (No funciona correctamente)"
    Other.button2 = "FullBright"
    
    
    
    Creditos.name = "Créditos"
    Creditos.section = "Creador del script"
    Creditos.NotificationName = "¡Copiado!"
    Creditos.NotificationContent = "El apodo del jugador ha sido copiado al portapapeles"
 
 
 
  else



    Tab_Talk_elf.name = "Talk to the elf"
    Tab_Talk_elf.section = "Talk to the elf"
    Tab_Talk_elf.button = "Talk"
    
    
    
    Tab_Fix_sledding.name = "Fix the sled"
    Tab_Fix_sledding.section = "Auto fix Santa's sled"
    Tab_Fix_sledding.button = "Auto fix"
    
    
    
    Tab_Collect_toys.name = "Collect toys"
    Tab_Collect_toys.section = "Auto collect the toys"
    Tab_Collect_toys.button = "Auto collect"
    
    
    
    Tab_Get_key.name = "Auto get key"
    Tab_Get_key.section = "Auto collect the key"
    Tab_Get_key.button = "Auto collect"
    
    
    
    Tab_BixoEsp.name = "Esp creature"
    Tab_BixoEsp.section = "Show where the creature is"
    Tab_BixoEsp.button = "Esp Krampus"
    
    
    
    Other.name = "Others"
    Other.section1 = "Show the player"
    Other.section2 = "Illuminate around you"
    Other.button1 = "Esp player (Doesn't work properly)"
    Other.button2 = "FullBright"
    
    
    
    Creditos.name = "Credits"
    Creditos.section = "Script creator"
    Creditos.NotificationName = "Copied!"
    Creditos.NotificationContent = "Player's nickname has been copied to the clipboard"



  end

    return Tab_Talk_elf, Tab_Fix_sledding, Tab_Collect_toys, Tab_Get_key, Tab_BixoEsp, Other, Creditos
end

return TranslationModule