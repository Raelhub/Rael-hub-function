local RaelHubFisch = {}

RaelHubFisch.FishingArea = {
  Desolate_Deep = function()
    local position = Vector3.new(-1504.619140625, -234.71902465820312, -2863.5224609375)
    local rotation = Vector3.new(0, -53.18299865722656, 0)

    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(position) * CFrame.Angles(math.rad(rotation.X), math.rad(rotation.Y), math.rad(rotation.Z))

  
  end,
  Colossal_Squid = function()
    local position = Vector3.new(2819.313232421875, 130.4823760986328, 2690.485595703125)
    local rotation = Vector3.new(0, -65.89700317382812, 0)

    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(position) * CFrame.Angles(math.rad(rotation.X), math.rad(rotation.Y), math.rad(rotation.Z))

  
  end,
  Ocean = function()
    local position = Vector3.new(-1397.56787109375, 133.77084350585938, 756.482421875)
    local rotation = Vector3.new(180, -57.244998931884766, 180)

    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(position) * CFrame.Angles(math.rad(rotation.X), math.rad(rotation.Y), math.rad(rotation.Z))

  
  end,
  Vertigo = function()
    local position = Vector3.new(-111.54090118408203, -733.3721313476562, 1211.3763427734375)
    local rotation = Vector3.new(180, 49.948001861572266, 180)

    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(position) * CFrame.Angles(math.rad(rotation.X), math.rad(rotation.Y), math.rad(rotation.Z))


  end,
  Roslit_Bay = function()
    local position = Vector3.new(-1397.56787109375, 133.77084350585938, 756.482421875)
    local rotation = Vector3.new(180, -57.244998931884766, 180)

    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(position) * CFrame.Angles(math.rad(rotation.X), math.rad(rotation.Y), math.rad(rotation.Z))

  end,
  Moosewood = function()
    local position = Vector3.new(285.14703369140625, 133.61595153808594, 215.8972930908203)
    local rotation = Vector3.new(180, 89.21800231933594, 180)

    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(position) * CFrame.Angles(math.rad(rotation.X), math.rad(rotation.Y), math.rad(rotation.Z))
  end,
  The_Depths = function()
    
    local position = Vector3.new(939.510009765625, -738.0830688476562, 1457.8468017578125)
    local rotation = Vector3.new(180, 6.980999946594238, 180)

    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(position) * CFrame.Angles(math.rad(rotation.X), math.rad(rotation.Y), math.rad(rotation.Z))

    
  end,
  Captain_Goldfish = function()
    
    local position = Vector3.new(-2678.404296875, 170.4841766357422, 1742.462158203125)
    local rotation = Vector3.new(178.9949951171875, 72.47200012207031, -179.13400268554688)

    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(position) * CFrame.Angles(math.rad(rotation.X), math.rad(rotation.Y), math.rad(rotation.Z))

    
  end,
  Forsaken_Shores = function()
    local position = Vector3.new(-2483.699951171875, 133.65463256835938, 1469.519287109375)
    local rotation = Vector3.new(0, -41.869998931884766, 0)

    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(position) * CFrame.Angles(math.rad(rotation.X), math.rad(rotation.Y), math.rad(rotation.Z))
  end,
  None = function()
    print("You can fish as much as you want")
  end,
}

return RaelHubFisch