local RaelHubTradutor = loadstring(game:HttpGet("https://raw.githubusercontent.com/Raelhub/Rael-hub-function/refs/heads/main/RaelHubTranslatorSystem/script.lua"))()

local Text1 = RaelHubTradutor.Tradutor("OBRIGADO POR USAR RAEL HUB")

local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Cria a tela de carregamento
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = playerGui

-- Imagem de fundo (opcional)
local imageLabel = Instance.new("ImageLabel")
imageLabel.Size = UDim2.new(0.7, 0, 0.6, 0)
imageLabel.Position = UDim2.new(0.15, 0, 0.2, 0)
imageLabel.Image = "rbxassetid://18665679839"
imageLabel.BackgroundTransparency = 1
imageLabel.ScaleType = Enum.ScaleType.Stretch
imageLabel.Parent = screenGui

-- Cria o TextLabel
local title = Instance.new("TextLabel")
title.Size = UDim2.new(0.6, 0, 0.1, 0)
title.AnchorPoint = Vector2.new(0.5, 0.5)
title.Position = UDim2.new(0.5, 0, 0.5, 0) -- Posição centralizada
title.BackgroundTransparency = 1
title.Text = Text1
title.TextColor3 = Color3.fromRGB(16, 235, 138) -- Cor do texto
title.Font = Enum.Font.ArialBold
title.TextScaled = true
title.TextTransparency = 1 -- Começa invisível
title.Parent = screenGui



-- Função para fazer o fade in
local function fadeInText(duration, object)
    local increment = 0.05
    local step = increment / duration
    for i = 0, 1, step do
        object.TextTransparency = 1 - i
        wait(increment)
    end
end

-- Função para fazer o fade out
local function fadeOutText(duration, object)
    local increment = 0.05
    local step = increment / duration
    for i = 0, 1, step do
        object.TextTransparency = i
        wait(increment)
    end
end

local function fadeInImage(duration, object)
  local increment = 0.05
  local step = increment / duration
  task.spawn(function()
    for i = 0, 1, step do
      object.ImageTransparency = 1 - i
      wait(increment)
    end
  end)
end


local function fadeOutImage(duration, object)
  local increment = 0.05
  local step = increment / duration
  for i = 0, 1, step do
    object.ImageTransparency = i
    wait(increment)
  end
end

-- Função para fazer o ícone girar
local function rotateIcon(icon)
    local rotation = 0
    while icon.Parent do
        rotation = rotation + 30 -- Gira o ícone
        icon.Rotation = rotation
        task.wait(0.05) -- Velocidade da rotação
    end
end

-- Som ao iniciar (opcional)
local startSound = Instance.new("Sound")
startSound.SoundId = "rbxassetid://6114974207"
startSound.Volume = 1
startSound.Parent = screenGui
startSound:Play()

-- Exemplo de uso
fadeInText(0.5, title) -- Faz o texto aparecer
wait(2)
fadeOutText(0.5, title) -- Faz o texto desaparecer
title.Text = "RAEL HUB"
title.AnchorPoint = Vector2.new(0, 0)
title.Position = UDim2.new(0.2, 0, 0.35, 0)
fadeInText(0.5, title)

-- Ícone de carregamento giratório
local loadingIcon = Instance.new("ImageLabel")
loadingIcon.Size = UDim2.new(0.1, 0, 0.1, 0) -- Mantém a proporção
loadingIcon.Position = UDim2.new(0.45, 0, 0.5, 0) -- Centralizado
loadingIcon.Image = "rbxassetid://106296997072730" -- Ícone de loading
loadingIcon.BackgroundTransparency = 1
loadingIcon.ScaleType = Enum.ScaleType.Fit -- Ajuste para manter a proporção
loadingIcon.Parent = screenGui

fadeInImage(0.5, loadingIcon)

-- Inicia a rotação do ícone de carregamento
spawn(function()
    rotateIcon(loadingIcon)
end)

local TranslationModule = {}
local configFileName = "TranslationConfig.json"

-- Função para salvar as traduções em um arquivo
local function SaveConfig(configTable)
    local json = game:GetService("HttpService"):JSONEncode(configTable)
    writefile(configFileName, json)
end

-- Função para carregar as traduções do arquivo
local function LoadConfig()
    if isfile(configFileName) then
        local json = readfile(configFileName)
        return game:GetService("HttpService"):JSONDecode(json)
    else
        return nil -- Retorna nil se não houver arquivo salvo
    end
end

function TranslationModule:GetTabs()
  -- Carregar as traduções se já existirem
  local savedConfig = LoadConfig()

  local Main = {
    name = savedConfig and savedConfig.Main and savedConfig.Main.name or "",
    section1 = savedConfig and savedConfig.Main and savedConfig.Main.section1 or "",
    section2 = savedConfig and savedConfig.Main and savedConfig.Main.section2 or "",
    section3 = savedConfig and savedConfig.Main and savedConfig.Main.section3 or "",
    section4 = savedConfig and savedConfig.Main and savedConfig.Main.section4 or "",
    button = savedConfig and savedConfig.Main and savedConfig.Main.button or "",
    button1 = savedConfig and savedConfig.Main and savedConfig.Main.button1 or ""
  }
  
  local saigomo = {
    section1 = savedConfig and savedConfig.saigomo and savedConfig.saigomo.section1 or "",
    section2 = savedConfig and savedConfig.saigomo and savedConfig.saigomo.section2 or "",
    section3 = savedConfig and savedConfig.saigomo and savedConfig.saigomo.section3 or "",
    button1 = savedConfig and savedConfig.saigomo and savedConfig.saigomo.button1 or "",
    button2 = savedConfig and savedConfig.saigomo and savedConfig.saigomo.button2 or "",
    button3 = savedConfig and savedConfig.saigomo and savedConfig.saigomo.button3 or ""
  }
  
  local Jogador = {
    name = savedConfig and savedConfig.Jogador and savedConfig.Jogador.name or "",
    section1 = savedConfig and savedConfig.Jogador and savedConfig.Jogador.section1 or "",
    section2 = savedConfig and savedConfig.Jogador and savedConfig.Jogador.section2 or "",
    section3 = savedConfig and savedConfig.Jogador and savedConfig.Jogador.section3 or "",
    dropdowntext = savedConfig and savedConfig.Jogador and savedConfig.Jogador.dropdowntext or "",
    slidetext = savedConfig and savedConfig.Jogador and savedConfig.Jogador.slidetext or "",
    button = savedConfig and savedConfig.Jogador and savedConfig.Jogador.button or ""
  }
  
  local Mostrar = {
    name = savedConfig and savedConfig.Mostrar and savedConfig.Mostrar.name or "",
    toggle1 = savedConfig and savedConfig.Mostrar and savedConfig.Mostrar.toggle1 or "",
    toggle2 = savedConfig and savedConfig.Mostrar and savedConfig.Mostrar.toggle2 or "",
    toggle3 = savedConfig and savedConfig.Mostrar and savedConfig.Mostrar.toggle3 or ""
  }
  
  local EspNames = {
    section1 = {
      name1 = savedConfig and savedConfig.EspNames and savedConfig.EspNames.section1.name1 or "",
      name2 = savedConfig and savedConfig.EspNames and savedConfig.EspNames.section1.name2 or ""
    },
    section3 = {
      name1 = savedConfig and savedConfig.EspNames and savedConfig.EspNames.section3.name1 or ""
    },
    section4 = {
      name1 = savedConfig and savedConfig.EspNames and savedConfig.EspNames.section4.name1 or ""
    }
  }
  
  local Creditos = {
    name = savedConfig and savedConfig.Creditos and savedConfig.Creditos.name or "",
    section = savedConfig and savedConfig.Creditos and savedConfig.Creditos.section or "",
    descricao = savedConfig and savedConfig.Creditos and savedConfig.Creditos.descricao or "",
    ContentNotify = savedConfig and savedConfig.Creditos and savedConfig.Creditos.ContentNotify or ""
  }

  -- Atualiza as strings
  Main.name = RaelHubTradutor.Tradutor("Main")
  Main.section1 = RaelHubTradutor.Tradutor("Auto win part 1")
  Main.section2 = RaelHubTradutor.Tradutor("Auto win part 2")
  Main.section3 = RaelHubTradutor.Tradutor("Auto win part 3")
  Main.section4 = RaelHubTradutor.Tradutor("Auto matar todos os corações da saigomo")
  Main.button = RaelHubTradutor.Tradutor("Auto win")
  Main.button1 = RaelHubTradutor.Tradutor("Auto matar saigomo")

  saigomo.section1 = RaelHubTradutor.Tradutor("Auto matar a saigomo simples")
  saigomo.section2 = RaelHubTradutor.Tradutor("Auto matar a saigomo completo [Beta]")
  saigomo.section3 = RaelHubTradutor.Tradutor("Auto clicar na tela")
  saigomo.button1 = RaelHubTradutor.Tradutor("Auto saigomo simples")
  saigomo.button2 = RaelHubTradutor.Tradutor("Auto saigomo completo")
  saigomo.button3 = RaelHubTradutor.Tradutor("Auto click")

  Jogador.name = RaelHubTradutor.Tradutor("Player")
  Jogador.section1 = RaelHubTradutor.Tradutor("Teleport to players")
  Jogador.section2 = RaelHubTradutor.Tradutor("Player Speed")
  Jogador.section3 = RaelHubTradutor.Tradutor("Light up the map")
  Jogador.dropdowntext = RaelHubTradutor.Tradutor("Players: ")
  Jogador.slidetext = RaelHubTradutor.Tradutor("Speed: ")
  Jogador.button = RaelHubTradutor.Tradutor("Teleport to player")

  Mostrar.name = "Esp"
  Mostrar.toggle1 = "Esp " .. RaelHubTradutor.Tradutor(" object ")
  Mostrar.toggle2 = "Esp " .. RaelHubTradutor.Tradutor(" monster ")
  Mostrar.toggle3 = "Esp " .. RaelHubTradutor.Tradutor(" players ")

  EspNames.section1.name1 = RaelHubTradutor.Tradutor("Key ")
  EspNames.section1.name2 = RaelHubTradutor.Tradutor("Pé de cabra")
  EspNames.section3.name1 = RaelHubTradutor.Tradutor("Armadura")
  EspNames.section4.name1 = RaelHubTradutor.Tradutor("Coração")

  Creditos.name = RaelHubTradutor.Tradutor("Credits")
  Creditos.section = RaelHubTradutor.Tradutor("Script creator")
  Creditos.descricao = RaelHubTradutor.Tradutor("Join my YouTube channel and Discord for new updates")
  Creditos.ContentNotify = RaelHubTradutor.Tradutor("The script has been copied to the desktop")

  -- Salvar as traduções atualizadas
  local updatedConfig = {
    Main = Main,
    saigomo = saigomo,
    Jogador = Jogador,
    Mostrar = Mostrar,
    EspNames = EspNames,
    Creditos = Creditos
  }

  SaveConfig(updatedConfig)

  screenGui:Destroy()
  return Main, saigomo, Jogador, Mostrar, EspNames, Creditos
end

return TranslationModule