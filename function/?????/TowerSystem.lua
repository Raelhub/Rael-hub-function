local TorreSistema = {}


function TorreSistema.EncontrarPastaDaTorre()
  for _, pasta in ipairs(Workspace:GetChildren()) do
    if pasta:IsA("Folder") then
      for _, model in ipairs(pasta:GetChildren()) do
        if model:IsA("Folder") and model.Name == "SquidGames" then
          print("Working...")
          return pasta
        end
      end
    end
  end
end


function TorreSistema.TpTorre(folder)
  for _, PastaPuzzle in ipairs(folder:GetChildren()) do
    if PastaPuzzle:IsA("Folder") then
      for _, Models in ipairs(PastaPuzzle:GetChildren()) do
        if Models:IsA("Model") and Models.Name == "1" or  Models.Name == "2" or  Models.Name == "3" then
          
          for _, part in ipairs(Models:GetChildren()) do
            
            if part:IsA("BasePart") and part.Transparency == 0 then
              game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(part.Position)
              break
            end
          end
        end
      end
    end
  end
end

              
return TorreSistema