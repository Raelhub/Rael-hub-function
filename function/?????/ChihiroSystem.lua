local ChihiroSistema = {}

function ChihiroSistema.EncontrarPastaDaChihiro()
    for _, pasta in ipairs(Workspace:GetChildren()) do
        if pasta:IsA("Folder") then
            for _, model in ipairs(pasta:GetChildren()) do
                if model:IsA("Folder") and model.Name == "DaughterJumpscare" then
                    print("Working... " .. pasta.Name)
                    return pasta
                end
            end
        end
    end
    return nil
end

function ChihiroSistema.EncontrarPataDasCartas()
    for _, pasta in ipairs(Workspace:GetChildren()) do
        if pasta:IsA("Folder") then
            for _, model in ipairs(pasta:GetChildren()) do
                if model:IsA("Model") and model.Name == "MotherSlender" then
                    print("Working... " .. pasta.Name)
                    return pasta
                end
            end
        end
    end
    return nil
end

function ChihiroSistema.AutoCartas(folder)

    for _, Pasta in ipairs(folder:GetChildren()) do
        if Pasta:IsA("Folder") then
            for _, PastaNote in ipairs(Pasta:GetChildren()) do
                if PastaNote:IsA("Folder") and PastaNote.Name == "Notes" then
                    for _, Part in ipairs(PastaNote:GetChildren()) do
                        if Part.Name == "Front" and Part.Transparency == 0 then
                          
                          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Part.Position)
                          
                          wait(0.5)
                          
                          local proximityPrompt = Part:FindFirstChildOfClass("ProximityPrompt")
                          if proximityPrompt then
                            fireproximityprompt(proximityPrompt)
                          end
                        end
                    end
                end
            end
        end
    end
    warn("Nenhuma torre válida foi encontrada!")
end

function ChihiroSistema.EspMonsterMother(folder)
  for _, Pasta in ipairs(folder:GetChildren()) do
    if Pasta:IsA("Folder") then
      for _, Monster in ipairs(Pasta:GetChildren()) do
        if Monster:IsA("Model") and Monster.Name == "Mother" then
          local RaelHubEspDestaque = loadstring(game:HttpGet("https://raw.githubusercontent.com/Raelhub/Rael-hub-function/main/function/createesp/No%20Hitbox%20destaque/script.txt"))()
          RaelHubEspDestaque.EspBixo(Monster, cor)
          print("Esp working...")
        end
      end
    end
  end
end

return ChihiroSistema