local CarneSystem = {}



function CarneSystem.EncontrarPastaDaCarnes()
  for _, pasta in ipairs(Workspace:GetChildren()) do
    if pasta:IsA("Folder") then
      for _, model in ipairs(pasta:GetChildren()) do
        if model:IsA("Model") and model.Name == "TeleportDoor" then
          print("Working...")
          return pasta
        end
      end
    end
  end
end


function CarneSystem.EspMonster(folder)
  for _, Pasta in ipairs(folder:GetChildren()) do
    if Pasta:IsA("Folder") then
      for _, Monster in ipairs(Pasta:GetChildren()) do
        if Monster:IsA("Model") and Monster.Name == "Ashina" then
          local RaelHubEspDestaque = loadstring(game:HttpGet("https://raw.githubusercontent.com/Raelhub/Rael-hub-function/main/function/createesp/No%20Hitbox%20destaque/script.txt"))()
          RaelHubEspDestaque.EspBixo(Monster, cor)
          print("Esp working...")
        end
      end
    end
  end
end



function CarneSystem.ProcurarPastaDoRestaurant(folder)
  for _, PastaModel in ipairs(folder:GetChildren()) do
    if PastaModel:IsA("Folder") then
      for _, Parte in ipairs(PastaModel:GetChildren()) do
        if Parte:IsA("BasePart") and Parte.Name == "MAINROOMTELEPORT" then
          print(PastaModel.Name)
            
            return PastaModel
            
          
        end
      end
    end
  end
end

function CarneSystem.TpRestaurantRoom(folder)
  for _, modelmeat in ipairs(folder:GetChildren()) do
    if modelmeat:IsA("Model") and modelmeat.Name == "RestaurantRoom" then
      
      local meatParts = modelmeat.Meat:GetChildren()
      local hasVisiblePart = false
      
      for _, part in ipairs(meatParts) do
        if part:IsA("BasePart") and part.Transparency == 0 then
          hasVisiblePart = true
          break
        end
      end
      
      if hasVisiblePart then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = modelmeat.BowlGiver.Prompt.CFrame
      end
      
    end
  end
end
              
return CarneSystem