local RaelHubTradutor = loadstring(game:HttpGet("https://raw.githubusercontent.com/Raelhub/Rael-hub-function/refs/heads/main/RaelHubTranslatorSystem/script.lua"))()

local Strings = {
  title = RaelHubTradutor.Tradutor("Obrigado por usar o Rael Hub"),
  paragrafo = RaelHubTradutor.Tradutor("Qual versão você gostaria."),
  button1 = RaelHubTradutor.Tradutor("Versão auto yurei"),
  button2 = RaelHubTradutor.Tradutor("Versão normal")
}

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local screenGui = Instance.new("ScreenGui")
screenGui.Parent = playerGui

local imageLabel = Instance.new("ImageLabel")
imageLabel.Size = UDim2.new(0.7, 0, 0.6, 0)
imageLabel.Position = UDim2.new(0.15, 0, 0.2, 0)
imageLabel.Image = "rbxassetid://18665679839"
imageLabel.BackgroundTransparency = 1
imageLabel.ScaleType = Enum.ScaleType.Stretch
imageLabel.Parent = screenGui

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.9, 0, 0.9, 0)
frame.Position = UDim2.new(0.05, 0, 0.05, 0)
frame.BackgroundTransparency = 1
frame.Parent = imageLabel

local frameCorner = Instance.new("UICorner")
frameCorner.CornerRadius = UDim.new(0, 10)
frameCorner.Parent = frame

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, -20, 0.15, 0)
title.Position = UDim2.new(0, -10, 0.05, 0)
title.BackgroundTransparency = 1
title.Text = Strings.title
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.ArialBold
title.TextScaled = true
title.Parent = frame

local description = Instance.new("TextLabel")
description.Size = UDim2.new(1, -20, 0.2, 0)
description.Position = UDim2.new(0, -10, 0.25, 0)
description.BackgroundTransparency = 1
description.Text = Strings.paragrafo
description.TextColor3 = Color3.fromRGB(255, 255, 255)
description.Font = Enum.Font.Arial
description.TextSize = 20
description.TextStrokeTransparency = 0.8
description.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
description.Parent = frame

task.wait(2)

local buttonContainer = Instance.new("Frame")
buttonContainer.Size = UDim2.new(0.8, 0, 0.3, 0)
buttonContainer.Position = UDim2.new(0.1, 0, 0.55, 0)
buttonContainer.BackgroundTransparency = 1
buttonContainer.Parent = frame

local function createButton(text, position, parent, callback)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0.4, 0, 0.8, 0)
    button.Position = position
    button.BackgroundColor3 = Color3.fromRGB(34, 168, 110)
    button.Text = text
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.Font = Enum.Font.ArialBold
    button.TextSize = 18
    button.Parent = parent

    local buttonCorner = Instance.new("UICorner")
    buttonCorner.CornerRadius = UDim.new(0, 10)
    buttonCorner.Parent = button

    button.MouseButton1Click:Connect(function()
        button.BackgroundColor3 = Color3.fromRGB(47, 236, 154)
        wait(0.2)
        button.BackgroundColor3 = Color3.fromRGB(34, 168, 110)
        callback()
    end)
end

local function AutoYureiScript()
  
  loadstring(game:HttpGet('https://raw.githubusercontent.com/Laelmano24/Rael-Hub/main/The%20mimic/books/B2C3/scripts/Auto%20yurei/script.txt'))()
  
  screenGui:Destroy()
  
end

local function NormalScript()
  
  loadstring(game:HttpGet('https://raw.githubusercontent.com/Laelmano24/Rael-Hub/main/The%20mimic/books/B2C3/scripts/normal/script.txt'))()
    
  screenGui:Destroy()
  
end

createButton(Strings.button1, UDim2.new(0, 0, 0.1, 0), buttonContainer, AutoYureiScript)
createButton(Strings.button2, UDim2.new(0.5, 0, 0.1, 0), buttonContainer, NormalScript)

local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 30, 0, 30)
closeButton.Position = UDim2.new(1, -70, 0, 40)
closeButton.AnchorPoint = Vector2.new(1, 0)
closeButton.BackgroundTransparency = 1
closeButton.Text = "X"
closeButton.TextColor3 = Color3.fromRGB(255, 0, 0)
closeButton.Font = Enum.Font.ArialBold
closeButton.TextSize = 24
closeButton.Parent = imageLabel

-- Função para fechar a interface ao clicar no botão
closeButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)

-- Adicionando som ao iniciar
local startSound = Instance.new("Sound")
startSound.SoundId = "rbxassetid://2806491346"
startSound.Volume = 1
startSound.Parent = screenGui
startSound:Play()

local function animateTextColor(label)
    while true do
        for hue = 0, 1, 0.01 do
            label.TextColor3 = Color3.fromHSV(hue, 1, 1)
            wait(0.05)
        end
    end
end

spawn(function()
    animateTextColor(title)
end)