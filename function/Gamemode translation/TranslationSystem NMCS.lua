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

function TranslationModule:GetTabs()
  local Tab_TpBoxe = {
    name = RaelHubTradutor.Tradutor("Tp caixas", currentLanguage),
    section1 = RaelHubTradutor.Tradutor("Pular a fase do palhaço", currentLanguage),
    section2 = RaelHubTradutor.Tradutor("Teleportar para safe zone", currentLanguage),
    section3 = RaelHubTradutor.Tradutor("Teleportar para as caixas", currentLanguage),
    button1 = RaelHubTradutor.Tradutor("Pular fase", currentLanguage),
    button2 = RaelHubTradutor.Tradutor("Safe zone", currentLanguage),
    button3 = RaelHubTradutor.Tradutor("Teleportar caixa", currentLanguage),
    AddDropdown = RaelHubTradutor.Tradutor("Caixa", currentLanguage)
  }
  
  local BoxText = RaelHubTradutor.Tradutor("Caixa ", currentLanguage)
        
  for i = 1, 7 do
    Tab_TpBoxe["TpBoxeButton" .. i] = BoxText .. i
  end

  local Tab_Cards = {
    name = RaelHubTradutor.Tradutor("Fase das cartas", currentLanguage),
    section1 = RaelHubTradutor.Tradutor("Teleportar para área segura", currentLanguage),
    button1 = RaelHubTradutor.Tradutor("Safe zone", currentLanguage),
    section2 = RaelHubTradutor.Tradutor("Mostra onde está as cartas", currentLanguage),
    button2 = RaelHubTradutor.Tradutor("Mostra cartas", currentLanguage),
    section3 = RaelHubTradutor.Tradutor("Teleportar para a área das cartas", currentLanguage),
    button3 = RaelHubTradutor.Tradutor("Tp área das cartas", currentLanguage)
  }

  local Tab_RingMaster = {
    name = RaelHubTradutor.Tradutor("RingMaster", currentLanguage),
    section1 = RaelHubTradutor.Tradutor("Teleportar para safe zone", currentLanguage),
    button1 = RaelHubTradutor.Tradutor("Safe zone", currentLanguage),
    section2 = RaelHubTradutor.Tradutor("Teleportar para o palco", currentLanguage),
    button2 = RaelHubTradutor.Tradutor("Palco", currentLanguage)
  }
  local Tab_Player = {
    name = RaelHubTradutor.Tradutor("Jogadores", currentLanguage),
    section1 = RaelHubTradutor.Tradutor("Teleportar para os jogadores", currentLanguage),
    section2 = RaelHubTradutor.Tradutor( "Velocidade do jogador", currentLanguage),
    section3 = RaelHubTradutor.Tradutor( "Iluminar ao seu redor", currentLanguage),
    AddDropdownName = RaelHubTradutor.Tradutor("Lista de jogadores: ", currentLanguage),
    AddSliderName = RaelHubTradutor.Tradutor("Velocidade", currentLanguage),
    button = RaelHubTradutor.Tradutor("Teleportar jogador", currentLanguage),
    toggle = RaelHubTradutor.Tradutor("Fullbright", currentLanguage)
  }
  local Tab_Esp = {
    name = RaelHubTradutor.Tradutor("Esp", currentLanguage),
    section1 = RaelHubTradutor.Tradutor("Mostrar a localização dos jogadores", currentLanguage),
    section2 = RaelHubTradutor.Tradutor("Mostrar a localização dos monstros", currentLanguage),
    section3 = RaelHubTradutor.Tradutor("Mostrar a localização das caixas", currentLanguage),
    button1 = RaelHubTradutor.Tradutor("Esp jogadores", currentLanguage),
    button2 = RaelHubTradutor.Tradutor("Esp monstro", currentLanguage),
    button3 = RaelHubTradutor.Tradutor("Esp itens", currentLanguage)
  }
  local Tab_Creditos = {
    name = RaelHubTradutor.Tradutor("Créditos", currentLanguage),
    paragrafo = RaelHubTradutor.Tradutor("Entre no meu canal do YouTube e no meu Discord para novas atualizações.", currentLanguage)
  }
   
  local updatedConfig = {
    Tab_TpBoxe = Tab_TpBoxe,
    Tab_Cards = Tab_Cards,
    Tab_RingMaster = Tab_RingMaster,
    Tab_Player = Tab_Player,
    Tab_Esp = Tab_Esp,
    Tab_Creditos = Tab_Creditos
  }
  
  SaveConfig(updatedConfig, currentLanguage)
   
  screenGui:Destroy()
  
  return Tab_TpBoxe, Tab_Cards, Tab_RingMaster, Tab_Player, Tab_Esp, Tab_Creditos
  
end



return TranslationModule