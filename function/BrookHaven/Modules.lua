local RaelHubBrookHaven = {}

RaelHubBrookHaven.GetValkyrieIds = {
  Valkyrie_Helm = 1365767,
  Blackvalk = 124730194,
  Festive_Sword_Valkyrie = 189963816,
  Tixvalk = 382881237,
  Orinthian_Valkyrie = 928840419,
  Sparkle_Time_Valkyrie = 1180433861,
  Violet_Valkyrie = 1402432199,
  Redvalk = 2274774123,
  Sinister_Valk = 2738532568,
  Emerald_Valkyrie = 2830437685,
  Summer_Valk = 3756522670,
  Ice_Valkyrie = 4390891467,
  Valkyrie_of_the_Metaverse = 6845626233,
  Valiant_Valkyrie_of_Testing = 7781687598,
  Hallowis_Valk = 15054110920,
  Timeless_Valkyrie_Helm = 17517206952
}

function RaelHubBrookHaven.KillPlayer(targetPlayerName)
  -- Variáveis goblais
  getgenv().RaelHubKillPlayerValue = true

  -- Variáveis Normais
  local LocalPlayer = game.Players.LocalPlayer
  local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
  local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
  local SavePositionPlayer = HumanoidRootPart.Position
  local PlayerWhoWillDie = game.workspace:FindFirstChild(targetPlayerName)
  local ButtonBusSchool = game:GetService("Players").LocalPlayer.PlayerGui.MainGUIHandler.MainVehicleMenu.Catalog.Container.ScrollingFrame.SchoolBus
  local ButtonNoCar = game:GetService("Players").LocalPlayer.PlayerGui.MainGUIHandler.MainVehicleMenu.Catalog.Header.CategoryTabs.NoCar
  local NameYourCar = tostring(LocalPlayer.Name .. "Car")

  function CheckPlayerSitting(seat, playername)
    local seatweld = seat:FindFirstChild("SeatWeld")
    if seatweld then
      local character = seatweld.Part1.Parent
      local player = game.Players:GetPlayerFromCharacter(character)
      if player and player.Name == playername then
        print("O jogador está sentado no assento.")
        return true
      end
    end
    return
  end

  function ClickButton(Button)
    local connections = getconnections(Button.MouseButton1Click)
    for _, connection in pairs(connections) do
      if connection.Function then
        pcall(function()
          connection.Function()
        end)
        break
      end
    end
  end

  LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1130.1878662109375, 75.99999237060547, -1091.9298095703125)

  task.wait(1)

  ClickButton(ButtonBusSchool)

  task.wait(0.5)

  while true do
    local vehicleseat = workspace.Vehicles[NameYourCar].Body.VehicleSeat
    if CheckPlayerSitting(vehicleseat, LocalPlayer.Name) then
      break
    else
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(vehicleseat.Position)
      task.wait(0.3)
    end
    task.wait()
  end
  task.wait(0.3)
  while getgenv().RaelHubKillPlayerValue do
    local YourBus = workspace.Vehicles[NameYourCar]
    for _, acentos in ipairs(YourBus.Body:GetChildren()) do
      if acentos.Name == "Passenger" then
        if CheckPlayerSitting(acentos, PlayerWhoWillDie.Name) then
          getgenv().RaelHubKillPlayerValue = false
        else
          if YourBus.PrimaryPart and PlayerWhoWillDie:FindFirstChild("HumanoidRootPart") then
            local targetPosition = PlayerWhoWillDie.HumanoidRootPart.Position
            local randomOffset = math.random(-8, 8)
            local teleportPosition = Vector3.new(
              targetPosition.X + randomOffset, 
              targetPosition.Y, 
              targetPosition.Z + randomOffset
            )
            YourBus:SetPrimaryPartCFrame(CFrame.new(teleportPosition))
          end
        end
      end
    end
    task.wait()
  end

  local YourBus = workspace.Vehicles[NameYourCar]
  YourBus:MoveTo(Vector3.new(15.605440139770508, -62.204490661621094, -62.37826919555664))
  task.wait(1)
  task.spawn(function()
    
    ClickButton(ButtonNoCar)
    
  end)
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(SavePositionPlayer)
end

return RaelHubBrookHaven