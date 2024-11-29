local RaelHubFunkyFriday = {}
getgenv().RaelHubKeys = {}
getgenv().RaelHubSide = ""
getgenv().RaelHubKeys.key1 = ""
getgenv().RaelHubKeys.key2 = ""
getgenv().RaelHubKeys.key3 = ""
getgenv().RaelHubKeys.key4 = ""
getgenv().RaelHubKeys.key5 = ""
getgenv().RaelHubKeys.key6 = ""
getgenv().RaelHubKeys.key7 = ""
getgenv().RaelHubKeys.key8 = ""

local VirtualInputManager = game:GetService("VirtualInputManager")

function RaelHubFunkyFriday.AutoPlay(state)
  getgenv().RaelHubAutoPlay = state
  task.spawn(function()
    while getgenv().RaelHubAutoPlay do
      pcall(function()
        local player = game:GetService("Players").LocalPlayer
        local ARROWS = player.PlayerGui.GameUI.Screen.Arrows[getgenv().RaelHubSide].Arrows

        local column0 = ARROWS.Arrow0.InnerFrame.Column:GetChildren()
        local column1 = ARROWS.Arrow1.InnerFrame.Column:GetChildren()
        local column2 = ARROWS.Arrow2.InnerFrame.Column:GetChildren()
        local column3 = ARROWS.Arrow3.InnerFrame.Column:GetChildren()
        local column4 = ARROWS:FindFirstChild("Arrow4")
        local column5 = ARROWS:FindFirstChild("Arrow5")
        local column6 = ARROWS:FindFirstChild("Arrow6")
        local column7 = ARROWS:FindFirstChild("Arrow7")
        if column4 then
          column4 = column4.InnerFrame.Column:GetChildren()
        end
        if column5 then
          column5 = column5.InnerFrame.Column:GetChildren()
        end
        if column6 then
          column6 = column6.InnerFrame.Column:GetChildren()
        end
        if column7 then
          column7 = column7.InnerFrame.Column:GetChildren()
        end
        local function autoplay(children, tecla)
        local DetectarFrame = false

        for _, nota in pairs(children) do
          if nota.Position.Y.Scale < (0 + 1e-9) + 0 and nota.Name == "Frame" then
            DetectarFrame = true
            task.spawn(function()
              VirtualInputManager:SendKeyEvent(true, Enum.KeyCode[tecla], false, game)
              while nota.Parent do
                task.wait()
              end
              VirtualInputManager:SendKeyEvent(false, Enum.KeyCode[tecla], false, game)
            end)
            break
          end
        end
        if not DetectarFrame then
          for _, nota in pairs(children) do
            if nota.Position.Y.Scale < 0 + 0 and nota.Name == "Note" then
              task.spawn(function()
              VirtualInputManager:SendKeyEvent(true, Enum.KeyCode[tecla], false, game)
                while nota.Parent do
                  task.wait()
                end
                VirtualInputManager:SendKeyEvent(false, Enum.KeyCode[tecla], false, game)
                end)
                break
              end
            end
          end
        end
        autoplay(column0, getgenv().RaelHubKeys.key1)
        autoplay(column1, getgenv().RaelHubKeys.key2)
        autoplay(column2, getgenv().RaelHubKeys.key3)
        autoplay(column3, getgenv().RaelHubKeys.key4)
        if column4 then
          autoplay(column4, getgenv().RaelHubKeys.key5)
        end
        if column5 then
          autoplay(column5, getgenv().RaelHubKeys.key6)
        end
        if column6 then
          autoplay(column6, getgenv().RaelHubKeys.key7)
        end
        if column7 then
          autoplay(column7, getgenv().RaelHubKeys.key8)
        end
      end)
      task.wait()
    end
  end)
end

function CheckSide()
  pcall(function()
    local player = game:GetService("Players").LocalPlayer
    local character = player.Character
    local rootPart = character and character:FindFirstChild("HumanoidRootPart")

    local minDistTo11 = math.huge
    local minDistTo21 = math.huge

    for _, stage in pairs(workspace.Map.Stages:GetChildren()) do
      local pads = stage:FindFirstChild("Pads")
      if pads then
        local part11 = pads:FindFirstChild("11")
        local part21 = pads:FindFirstChild("21")
                
        if part11 and (rootPart.Position - part11.Position).magnitude <= 5 then
          local distTo11 = (rootPart.Position - part11.Position).magnitude
          if distTo11 < minDistTo11 then
            minDistTo11 = distTo11
          end
        end

        if part21 and (rootPart.Position - part21.Position).magnitude <= 5 then
          local distTo21 = (rootPart.Position - part21.Position).magnitude
          if distTo21 < minDistTo21 then
            minDistTo21 = distTo21
          end
        end
      end
    end

    if minDistTo11 < minDistTo21 then
      getgenv().RaelHubSide = "Left"
    else
      getgenv().RaelHubSide = "Right"
    end

  end)
end

function CheckYourArrow()
  pcall(function()
    local player = game:GetService("Players").LocalPlayer
    local ARROWS = player.PlayerGui.GameUI.Screen.Arrows[getgenv().RaelHubSide]:FindFirstChild("Arrows")
    if ARROWS then
      local Arrow0_InnerFrame = ARROWS.Arrow0.InnerFrame["0"]
      local Arrow1_InnerFrame = ARROWS.Arrow1.InnerFrame["1"]
      local Arrow2_InnerFrame = ARROWS.Arrow2.InnerFrame["2"]
      local Arrow3_InnerFrame = ARROWS.Arrow3.InnerFrame["3"]
    
      local arrow4 = ARROWS:FindFirstChild("Arrow4")
      local arrow5 = ARROWS:FindFirstChild("Arrow5")
      local arrow6 = ARROWS:FindFirstChild("Arrow6")
      local arrow7 = ARROWS:FindFirstChild("Arrow7")
    
      local keybind1 = Arrow0_InnerFrame:FindFirstChild("Keybind")
      local keybind2 = Arrow1_InnerFrame:FindFirstChild("Keybind")
      local keybind3 = Arrow2_InnerFrame:FindFirstChild("Keybind")
      local keybind4 = Arrow3_InnerFrame:FindFirstChild("Keybind")
    
      if keybind1 then
        getgenv().RaelHubKeys.key1 = keybind1.Text
      end
      if keybind2 then
        getgenv().RaelHubKeys.key2 = keybind2.Text
      end
      if keybind3 then
        getgenv().RaelHubKeys.key3 = keybind3.Text
      end
      if keybind4 then
        getgenv().RaelHubKeys.key4 = keybind4.Text
      end
    
      if arrow4 then
        local Arrow4_InnerFrame = arrow4.InnerFrame["4"]
        local keybind5 = Arrow4_InnerFrame:FindFirstChild("Keybind")
        if keybind5 then
          getgenv().RaelHubKeys.key5 = keybind5.Text
        end
      end
      if arrow5 then
        local Arrow5_InnerFrame = arrow5.InnerFrame["5"]
        local keybind6 = Arrow5_InnerFrame:FindFirstChild("Keybind")
        if keybind6 then
          getgenv().RaelHubKeys.key6 = keybind6.Text
        end
      end
      if arrow6 then
        local Arrow6_InnerFrame = arrow6.InnerFrame["6"]
        local keybind7 = Arrow6_InnerFrame:FindFirstChild("Keybind")
        if keybind7 then
          getgenv().RaelHubKeys.key7 = keybind7.Text
        end
      end
      if arrow7 then
        local Arrow7_InnerFrame = arrow7.InnerFrame["7"]
        local keybind8 = Arrow7_InnerFrame:FindFirstChild("Keybind")
        if keybind8 then
          getgenv().RaelHubKeys.key8 = keybind8.Text
        end
      end
    end
  end)
end

game:GetService("RunService").Heartbeat:Connect(function()
  local player = game:GetService("Players").LocalPlayer
  if player.PlayerGui.GameUI.Windows.SongSelector.Visible == true then
    CheckSide()
  end
  CheckYourArrow()
end)

return RaelHubFunkyFriday