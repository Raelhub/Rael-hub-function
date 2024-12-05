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

RaelHubBrookHaven.GetFairyIds = {
  Fall_Fairy = 128217885,
  Winter_Fairy = 141742418,
  St_Patrick_is_Day_Fairy = 226189871,
  Spring_Fairy = 150381051
}

RaelHubBrookHaven.GetSparkleTimeFedoraIds = {
  Yellow_Sparkle_Time_Fedora = 1285307,
  Purple_Sparkle_Time_Fedora = 63043890,
  Red_Sparkle_Time_Fedora = 72082328,
  Green_Sparkle_Time_Fedora = 100929604,
  Midnight_Blue_Sparkle_Time_Fedora = 119916949,
  Teal_Sparkle_Time_Fedora = 147180077,
  Orange_Sparkle_Time_Fedora = 215751161,
  Black_Sparkle_Time_Fedora = 259423244,
  Pink_Sparkle_Time_Fedora = 334663683,
  Sky_Blue_Sparkle_Time_Fedora = 493476042,
  White_Sparkle_Time_Fedora = 1016143686,
  Bluesteel_Fedora = 98346834
}

function ChangePlayerColor(jogador)
  local Player = workspace:FindFirstChild(jogador)
  if Player then
    local head = Player:FindFirstChild("Head")
    if head then
      local args = {
        [1] = "skintone",
        [2] = tostring(head.BrickColor)
      }
      game:GetService("ReplicatedStorage").RE:FindFirstChild("1Updat1eAvata1r"):FireServer(unpack(args))
    end
  end
end

function CopyPlayerAnimations(jogador)
  local player = workspace:FindFirstChild(jogador)
  
  function EnviarAnimationId(valor)
    local args = {
      [1] = "wearWalkStyle",
      [2] = valor
    }

    game:GetService("ReplicatedStorage").RE:FindFirstChild("1Updat1eAvata1r"):FireServer(unpack(args))
  end
  
  if player and player:FindFirstChild("Humanoid") then
    local humanoidDescription = player.Humanoid.HumanoidDescription
    if humanoidDescription then
      local animations = {
        IdleAnimation = humanoidDescription.IdleAnimation,
        WalkAnimation = humanoidDescription.WalkAnimation,
        RunAnimation = humanoidDescription.RunAnimation,
        JumpAnimation = humanoidDescription.JumpAnimation,
        FallAnimation = humanoidDescription.FallAnimation,
        SwimAnimation = humanoidDescription.SwimAnimation
      }
      
      for key, value in pairs(animations) do
        if value then
          EnviarAnimationId(tonumber(value))
          task.wait(0.3)
        end
      end
    end
  end
end

function CopyPlayerBody(jogador)
  local player = workspace:FindFirstChild(jogador)
  local BodyParts

  if player and player:FindFirstChild("Humanoid") then
    local humanoidDescription = player.Humanoid.HumanoidDescription
    if humanoidDescription then
      BodyParts = {
        LeftArm = humanoidDescription.LeftArm,
        RightArm = humanoidDescription.RightArm,
        LeftLeg = humanoidDescription.LeftLeg,
        RightLeg = humanoidDescription.RightLeg,
        Torso = humanoidDescription.Torso,
        Head = humanoidDescription.Head
      }
      
      task.wait(0.3)
      
      local args = {
          [1] = "CharacterChange",
          [2] = {
          [1] = BodyParts.Torso,
          [2] = BodyParts.RightArm,
          [3] = BodyParts.LeftArm,
          [4] = BodyParts.RightLeg,
          [5] = BodyParts.LeftLeg,
          [6] = BodyParts.Head
        },
        [3] = "Boy"
      }

    game:GetService("ReplicatedStorage").RE:FindFirstChild("1Avata1rOrigina1l"):FireServer(unpack(args))
    end
  end
end

function CopyAvatarPlayer(jogador)
  local player = workspace:FindFirstChild(jogador)
  local accessoriesAndClothes
  
  function EnviarId(valor)
    local args = {
      [1] = "wear",
      [2] = valor
    }
    game:GetService("ReplicatedStorage").RE:FindFirstChild("1Updat1eAvata1r"):FireServer(unpack(args))
  end
  
  function EquipBody(humanoidDescriptionPart)
    local BodyParts = {
      LeftArm = humanoidDescriptionPart.LeftArm,
      RightArm = humanoidDescriptionPart.RightArm,
      LeftLeg = humanoidDescriptionPart.LeftLeg,
      RightLeg = humanoidDescriptionPart.RightLeg,
      Torso = humanoidDescriptionPart.Torso,
      Head = humanoidDescriptionPart.Head
    }
      
    task.wait(0.3)
      
    local args = {
      [1] = "CharacterChange",
      [2] = {
        [1] = BodyParts.Torso,
        [2] = BodyParts.RightArm,
        [3] = BodyParts.LeftArm,
        [4] = BodyParts.RightLeg,
        [5] = BodyParts.LeftLeg,
        [6] = BodyParts.Head
      },
        [3] = "Boy"
      }

    game:GetService("ReplicatedStorage").RE:FindFirstChild("1Avata1rOrigina1l"):FireServer(unpack(args))
  end
  
  function ProcessarIds(ids)
    local idArray = {}
    for id in string.gmatch(ids, "%d+") do
      table.insert(idArray, tonumber(id))
    end
    return idArray
  end

  if player and player:FindFirstChild("Humanoid") then
    local humanoidDescription = player.Humanoid.HumanoidDescription
    if humanoidDescription then
      accessoriesAndClothes = {
        BackAccessory = humanoidDescription.BackAccessory,
        HatAccessory = humanoidDescription.HatAccessory,
        HairAccessory = humanoidDescription.HairAccessory,
        FaceAccessory = humanoidDescription.FaceAccessory,
        NeckAccessory = humanoidDescription.NeckAccessory,
        FrontAccessory = humanoidDescription.FrontAccessory,
        WaistAccessory = humanoidDescription.WaistAccessory,
        ShoulderAccessory = humanoidDescription.ShouldersAccessory,
        Shirt = humanoidDescription.Shirt,
        Pants = humanoidDescription.Pants,
        GraphicTShirt = humanoidDescription.GraphicTShirt,
        Face = humanoidDescription.Face
      }
      
      EquipBody(humanoidDescription)
      task.wait(0.3)
      -- Envia os itens para o servidor
      for key, values in pairs(accessoriesAndClothes) do
        if type(values) == "string" then
          local ids = ProcessarIds(values)
          for _, id in ipairs(ids) do
            if id and id ~= 0 then
              print(id)
              EnviarId(id)
              task.wait(0.3)
            end
          end
        elseif type(values) == "table" then
          for _, value in pairs(values) do
            if value and value ~= 0 then
              print(value)
              EnviarId(value)
              task.wait(0.3)
            end
          end
        else
          if values and values ~= 0 then
            print(values)
            EnviarId(values)
            task.wait(0.3)
          end
        end
      end
    end
  end
end

function RaelHubBrookHaven.CopyPlayerSkin(jogador)

  CopyAvatarPlayer(game.Players.LocalPlayer.Name)
  ChangePlayerColor(jogador)
  CopyPlayerBody(jogador)
  CopyAvatarPlayer(jogador)
  CopyPlayerAnimations(jogador)
  
end

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