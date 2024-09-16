local VirtualInputManager = game:GetService("VirtualInputManager")

local function pressCtrlLeft()
  VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.LeftControl, false, nil)
end

local function releaseCtrlLeft()
  VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.LeftControl, false, nil)
end

local screenGuiName = "RaelHubLogo"
local buttonName = "Rael button"

local screenGui = game.Players.LocalPlayer:WaitForChild("PlayerGui"):FindFirstChild(screenGuiName)

if not screenGui then
  screenGui = Instance.new("ScreenGui")
  screenGui.Name = screenGuiName
  screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
end

local existingButton = screenGui:FindFirstChild(buttonName)

if not existingButton then
  local button = Instance.new("ImageButton")
  button.Name = buttonName
  button.Size = UDim2.new(0, 70, 0, 70)
  button.Position = UDim2.new(0, 130, 0, 80)
  button.AnchorPoint = Vector2.new(0, 0)
  button.Image = "rbxassetid://107050233461374"
  button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  button.BackgroundTransparency = 1
  button.Parent = screenGui
  local uiCorner = Instance.new("UICorner")
  uiCorner.CornerRadius = UDim.new(0, 10)
  uiCorner.Parent = button
  local isDragging = false
  local function MakeDraggable(guiObject)
    local dragInput
    local dragStart
    local startPos

    local function update(input)
      local delta = input.Position - dragStart
      guiObject.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
    guiObject.InputBegan:Connect(function(input)
      if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        isDragging = true
        dragStart = input.Position
        startPos = guiObject.Position

        input.Changed:Connect(function()
          if input.UserInputState == Enum.UserInputState.End then
            isDragging = false
          end
        end)
      end
    end)

    guiObject.InputChanged:Connect(function(input)
      if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
      end
    end)

    game:GetService("UserInputService").InputChanged:Connect(function(input)
      if isDragging and input == dragInput then
        update(input)
      end
    end)
  end

  MakeDraggable(button)

  button.MouseButton1Click:Connect(function()
    if not isDragging then
    end
  end)

  button.TouchTap:Connect(function()
    if not isDragging then
      pressCtrlLeft()
    end
  end)
end

return screenGui