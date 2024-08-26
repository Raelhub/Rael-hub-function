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

return CarneSystem