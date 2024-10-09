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
local configFolder = "RaelHub book1" -- Pasta onde os arquivos de tradução serão salvos

-- Serviço de localização do Roblox
local LocalizationService = game:GetService("LocalizationService")

-- Função para detectar o idioma do jogador usando LocalizationService
local function GetPlayerLanguage()
    local result, code = pcall(function()
        return LocalizationService.RobloxLocaleId
    end)
    if result then
        return code:sub(1, 2) -- Retorna o código do idioma, como "en", "pt", etc.
    else
        return "en" -- Se houver erro, usa o inglês como padrão
    end
end

-- Função para salvar as traduções com base no idioma
local function SaveConfig(configTable, language)
    local fileName = configFolder .. "/" .. language .. ".json"
    local json = game:GetService("HttpService"):JSONEncode(configTable)
    writefile(fileName, json)
end

-- Função para carregar as traduções de um arquivo com base no idioma
local function LoadConfig(language)
    local fileName = configFolder .. "/" .. language .. ".json"
    if isfile(fileName) then
        local json = readfile(fileName)
        return game:GetService("HttpService"):JSONDecode(json)
    else
        return nil -- Retorna nil se o arquivo não existir
    end
end

-- Função principal para carregar ou traduzir
function TranslationModule:GetTabs()
    -- Verifica se a pasta de traduções existe, se não, cria
    if not isfolder(configFolder) then
        makefolder(configFolder)
    end

    -- Detectar o idioma do jogador usando o LocalizationService
    local currentLanguage = GetPlayerLanguage()

    -- Carregar as traduções do idioma do jogador se já existirem
    local savedConfig = LoadConfig(currentLanguage)

    -- Se as traduções já existem para o idioma atual, carregar
    if savedConfig then
        wait(1)
        screenGui:Destroy()
        
        return savedConfig.Tab_Talk_elf, savedConfig.Tab_Fix_sledding, savedConfig.Tab_Collect_toys, savedConfig.Tab_Get_key, savedConfig.Tab_Esp, savedConfig.Tab_Creditos
    end

    -- Se as traduções não existem, fazer a tradução e salvar para o idioma atual
    local Tab_Talk_elf = {
      name = RaelHubTradutor.Tradutor("Falar com o elfo", currentLanguage),
      section = RaelHubTradutor.Tradutor("Falar com o elfo", currentLanguage),
      button = RaelHubTradutor.Tradutor("Falar", currentLanguage),
    }

    local Tab_Fix_sledding = {
      
      name = RaelHubTradutor.Tradutor("Conserta o trenó", currentLanguage),
      section = RaelHubTradutor.Tradutor("Auto conserta o trenó do pai noel", currentLanguage),
      button = RaelHubTradutor.Tradutor("Auto consertar", currentLanguage)
    }

    local Tab_Collect_toys = {
      name = RaelHubTradutor.Tradutor("Coletar brinquedos", currentLanguage),
      section = RaelHubTradutor.Tradutor("Auto coletar os brinquedos", currentLanguage),
      button = RaelHubTradutor.Tradutor("Auto coletar", currentLanguage)
    }

    local Tab_Esp = {
      name = RaelHubTradutor.Tradutor("Esp", currentLanguage),
      section1 = RaelHubTradutor.Tradutor("Mostrar a localização dos jogadores", currentLanguage),
      section2 = RaelHubTradutor.Tradutor("itens para o trenó", currentLanguage),
      section3 = RaelHubTradutor.Tradutor("Mostrar a localização dos brinquedos", currentLanguage),
      section4 = RaelHubTradutor.Tradutor("Mostrar a localização dos monstro", currentLanguage),
      button1 = RaelHubTradutor.Tradutor("Esp jogadores", currentLanguage),
      button2 = RaelHubTradutor.Tradutor("Esp itens", currentLanguage),
      button3 = RaelHubTradutor.Tradutor("Esp brinquedos", currentLanguage),
      button4 = RaelHubTradutor.Tradutor("Esp monstro", currentLanguage)
    }
    
    local Tab_Creditos = {
      name = RaelHubTradutor.Tradutor("Créditos", currentLanguage),
      paragrafo = RaelHubTradutor.Tradutor("Entre no meu canal do YouTube e no meu Discord para novas atualizações.", currentLanguage)
    }
    
    -- Salvar as traduções para o idioma do jogador
    local updatedConfig = {
        Tab_Talk_elf = Tab_Talk_elf,
        Tab_Fix_sledding = Tab_Fix_sledding,
        Tab_Collect_toys = Tab_Collect_toys,
        Tab_Get_key = Tab_Get_key,
        Tab_Esp = Tab_Esp,
        Tab_Creditos = Tab_Creditos
    }

    SaveConfig(updatedConfig, currentLanguage)

    screenGui:Destroy()
    return Tab_Talk_elf, Tab_Fix_sledding, Tab_Collect_toys, Tab_Get_key, Tab_Esp, Tab_Creditos
end

return TranslationModule