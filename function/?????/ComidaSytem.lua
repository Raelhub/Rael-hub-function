local CrafterSistema = {}


function CrafterSistema.ComidaSystem(folder, comida)
  local pasta = folder
  local Objeto = pasta.Givers[comida].Handle
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Objeto.Position)
  wait(0.2)
  local proximityPrompt = Objeto:FindFirstChildOfClass("ProximityPrompt")
  if proximityPrompt then
    fireproximityprompt(proximityPrompt)
  end
end

function CrafterSistema.Mesa1System(folder)
  local pasta = folder
  local Objeto = pasta.WoodenCounters:GetChildren()[19].Part
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Objeto.Position)
  wait(0.2)
  local proximityPrompt = Objeto:FindFirstChildOfClass("ProximityPrompt")
  if proximityPrompt then
    fireproximityprompt(proximityPrompt)
  end
end

function CrafterSistema.Mesa2System(folder)
  local pasta = folder
  local Objeto = pasta.WoodenCounters:GetChildren()[17].Part
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Objeto.Position)
  wait(0.2)
  local proximityPrompt = Objeto:FindFirstChildOfClass("ProximityPrompt")
  if proximityPrompt then
    fireproximityprompt(proximityPrompt)
  end
end

function CrafterSistema.MonstroSystem(folder)
  local pasta = folder
  local Objeto = pasta.TurnInFood.Detector
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2753.5341796875, 968.2463989257812, -4920.02978515625)
  wait(0.5)
  local proximityPrompt = Objeto:FindFirstChildOfClass("ProximityPrompt")
  if proximityPrompt then
    fireproximityprompt(proximityPrompt)
  end
end

function CrafterSistema.FogaoSystem(folder)
  local pasta = folder
  local Objeto = pasta.Stoves:GetChildren()[3].Detector
  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Objeto.Position)
  wait(0.2)
  local proximityPrompt = Objeto:FindFirstChildOfClass("ProximityPrompt")
  if proximityPrompt then
    fireproximityprompt(proximityPrompt)
  end
end


function CrafterSistema.EncontrarPastaCooking()
    for _, pasta in ipairs(game.Workspace:GetChildren()) do
        if pasta:IsA("Folder") then

            for _, PastaCooking in ipairs(pasta:GetChildren()) do
                if PastaCooking:IsA("Folder") and PastaCooking.Name == "Cooking" then
                  
                  return PastaCooking
                  
                end
            end
        end
    end
end


function CrafterSistema.CrafterChicken(folder)
  CrafterSistema.ComidaSystem(folder, "Pot")
  CrafterSistema.Mesa1System(folder)
  CrafterSistema.ComidaSystem(folder, "Chicken")
  wait(0.2)
  CrafterSistema.Mesa1System(folder)
  CrafterSistema.ComidaSystem(folder, "Wrapped Meat")
  wait(0.2)
  CrafterSistema.Mesa1System(folder)
  CrafterSistema.ComidaSystem(folder, "Cheese")
  wait(0.2)
  CrafterSistema.Mesa1System(folder)
  CrafterSistema.Mesa1System(folder)
  CrafterSistema.FogaoSystem(folder)
  wait(10)
  CrafterSistema.ComidaSystem(folder, "Bowl")
  CrafterSistema.Mesa2System(folder)
  CrafterSistema.FogaoSystem(folder)
  CrafterSistema.Mesa2System(folder)
  CrafterSistema.Mesa2System(folder)
  CrafterSistema.MonstroSystem(folder)
end

function CrafterSistema.CrafterHam(folder)
  CrafterSistema.ComidaSystem(folder, "Pot")
  CrafterSistema.Mesa1System(folder)
  CrafterSistema.ComidaSystem(folder, "Ham")
  CrafterSistema.wait(0.2)
  CrafterSistema.Mesa1System(folder)
  CrafterSistema.ComidaSystem(folder, "Sausage")
  wait(0.2)
  CrafterSistema.Mesa1System(folder)
  CrafterSistema.Mesa1System(folder)
  CrafterSistema.FogaoSystem(folder)
  wait(10)
  CrafterSistema.ComidaSystem(folder, "Bowl")
  CrafterSistema.Mesa2System(folder)
  CrafterSistema.FogaoSystem(folder)
  CrafterSistema.Mesa2System(folder)
  CrafterSistema.Mesa2System(folder)
  CrafterSistema.MonstroSystem(folder)
end

function CrafterSistema.CrafterEyeball(folder)
  CrafterSistema.ComidaSystem(folder, "Bowl")
  CrafterSistema.Mesa2System(folder)
  CrafterSistema.ComidaSystem(folder, "Eyeball")
  wait(0.2)
  CrafterSistema.Mesa2System(folder)
  CrafterSistema.ComidaSystem(folder, "Spaghetti")
  wait(0.2)
  CrafterSistema.Mesa2System(folder)
  CrafterSistema.Mesa2System(folder)
  CrafterSistema.MonstroSystem(folder)
end

return CrafterSistema
