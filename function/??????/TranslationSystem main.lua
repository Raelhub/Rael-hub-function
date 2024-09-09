local TranslationModule = {}

function TranslationModule:GetTabs()
  
    local Texto = {
      paragrafo = "",
      btn1 = "",
      btn2 = ""
    
    }

    local Players = game:GetService("Players")
    local player = Players.LocalPlayer
    local locale = player.LocaleId:lower()

    if locale == "pt-br" then
      
      Texto.paragrafo = "Você deseja escolher quais versões do script ?"
      Texto.btn1 = "Normal"
      Texto.btn2 = "Auto casa yurei"
      
    elseif locale == "en-us" then
      
      Texto.paragrafo = "Do you want to choose which versions of the script ?"
      Texto.btn1 = "Normal"
      Texto.btn2 = "Auto house yurei"
      
    elseif locale:sub(1, 2) == "es" then

      Texto.paragrafo = "¿Quieres elegir qué versiones del script?"
      Texto.btn1 = "Normal"
      Texto.btn2 = "Auto casa yurei"

    else
      
      Texto.paragrafo = "Do you want to choose which versions of the script ?"
      Texto.btn1 = "Normal"
      Texto.btn2 = "Auto house yurei"
        
    end

    return Texto
end

return TranslationModule