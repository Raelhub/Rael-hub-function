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
local configFolder = "RaelHub B2C3" -- Pasta onde os arquivos de tradução serão salvos

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
        return savedConfig.Tab_cutscene, savedConfig.Tab_GiveHeart, savedConfig.Tab_Mapmaze, savedConfig.Tab_DodoMeki, savedConfig.Tab_Enzuzai, savedConfig.Tab_HouseUchiumi, savedConfig.Tab_Train, savedConfig.Tab_larvas, savedConfig.Tab_Lama, savedConfig.Tab_HouseYurei, savedConfig.Tab_BossYurei, savedConfig.Tab_FaseFinal, savedConfig.Tab_Others
    end
    
    local Tab_cutscene = {
      name = RaelHubTradutor.Tradutor("Skip the Cutscene", currentLanguage),
      section = RaelHubTradutor.Tradutor("Pular a cutscene do Gozu e Mezu", currentLanguage),
      button = RaelHubTradutor.Tradutor("Skip Gozu and Mezu", currentLanguage)
    }

    local Tab_GiveHeart = {
      name = RaelHubTradutor.Tradutor("Fase do Kenio", currentLanguage),
      section1 = RaelHubTradutor.Tradutor("Auto pegar todos os corações", currentLanguage),
      section2 = RaelHubTradutor.Tradutor("Escapa do GrinDemon", currentLanguage),
      button1 = RaelHubTradutor.Tradutor("Auto coletar corações", currentLanguage),
      button2 = RaelHubTradutor.Tradutor("Fugir do GrinDemon", currentLanguage)
    }

    local Tab_Mapmaze = {
      name = RaelHubTradutor.Tradutor("Fase GrinDemon", currentLanguage),
      section1 = RaelHubTradutor.Tradutor("Mostrar a localização do GrinDemon", currentLanguage),
      section2 = RaelHubTradutor.Tradutor("Área segura", currentLanguage),
      section3 = RaelHubTradutor.Tradutor("Auto fazer tocha", currentLanguage),
      section4 = RaelHubTradutor.Tradutor("Incendiar a tocha", currentLanguage),
      section5 = RaelHubTradutor.Tradutor("Passar do portão", currentLanguage),
      button1 = RaelHubTradutor.Tradutor("Esp GrinDemon [Normal]", currentLanguage),
      button2 = RaelHubTradutor.Tradutor("Esp GrinDemon [Nightmare]", currentLanguage),
      button3 = RaelHubTradutor.Tradutor("Zona segura", currentLanguage),
      button4 = RaelHubTradutor.Tradutor("Coletar itens", currentLanguage),
      button5 = RaelHubTradutor.Tradutor("Incendiar tocha", currentLanguage),
      button6 = RaelHubTradutor.Tradutor("Tp porta (Só quando você matar o Djabo)", currentLanguage)
    }

    local Tab_DodoMeki = {
      name = RaelHubTradutor.Tradutor("Fase ", currentLanguage) .. " DodoMeki",
      section1 = RaelHubTradutor.Tradutor("Mostrar a localização do DodoMeki", currentLanguage),
      section2 = RaelHubTradutor.Tradutor("Teleportar para os sinos", currentLanguage),
      section3 = RaelHubTradutor.Tradutor("Teleportar para a porta do puzzle", currentLanguage),
      section4 = RaelHubTradutor.Tradutor("Escapa do Dodomeki", currentLanguage),
      button1 = RaelHubTradutor.Tradutor("Esp DodoMeki", currentLanguage),
      button2 = RaelHubTradutor.Tradutor("Teleportar para o Sino", currentLanguage),
      button3 = RaelHubTradutor.Tradutor("Teleportar puzzle", currentLanguage),
      button4 = RaelHubTradutor.Tradutor("Fugir do DodoMeki", currentLanguage),
      
      BellDropdownName = RaelHubTradutor.Tradutor("Sinos", currentLanguage),
    }

    for i = 1, 6 do
      Tab_DodoMeki["SinoButton" .. i] = RaelHubTradutor.Tradutor("Bell " .. i, currentLanguage)
    end

    local Tab_Enzuzai = {
      name = RaelHubTradutor.Tradutor("Fase do Enzukai", currentLanguage),
      section1 = RaelHubTradutor.Tradutor("Ativar o puzzle do Enzukai", currentLanguage),
      section2 = RaelHubTradutor.Tradutor("Clicar no Enzukai automaticamente", currentLanguage),
      button1 = RaelHubTradutor.Tradutor("Ativar puzzle", currentLanguage),
      button2 = RaelHubTradutor.Tradutor("Imuni Enzukai", currentLanguage)
    }

    local Tab_HouseUchiumi = {
      name = RaelHubTradutor.Tradutor("Fase Uchiumi", currentLanguage),
      section1 = RaelHubTradutor.Tradutor("Teleportar para área da casa", currentLanguage),
      section2 = RaelHubTradutor.Tradutor("Teleportar para o telhado", currentLanguage),
      section3 = RaelHubTradutor.Tradutor("Ficar imuni ao isamu", currentLanguage),
      section4 = RaelHubTradutor.Tradutor("Auto limpar o chão", currentLanguage),
      button1 = RaelHubTradutor.Tradutor("Teleportar casa", currentLanguage),
      button2 = RaelHubTradutor.Tradutor("Teleporte telhado", currentLanguage),
      button3 = RaelHubTradutor.Tradutor("Imuni isamu", currentLanguage),
      button4 = RaelHubTradutor.Tradutor("Auto varrer", currentLanguage),
    }

    local Tab_Train = {
      name = RaelHubTradutor.Tradutor("Fase metrô", currentLanguage),
      section = RaelHubTradutor.Tradutor("Auto escapar do trem", currentLanguage),
      button = RaelHubTradutor.Tradutor("Auto fugir trem", currentLanguage)
    }

    local Tab_larvas = {
      name = RaelHubTradutor.Tradutor("Fase Larvas", currentLanguage),
      section1 = RaelHubTradutor.Tradutor("Mostrar a localização do Boogeyman", currentLanguage),
      section2 = RaelHubTradutor.Tradutor("Teleportar para zona segura", currentLanguage),
      section3 = RaelHubTradutor.Tradutor("Teleportar para as larvas", currentLanguage),
      section4 = RaelHubTradutor.Tradutor("Teleportar para Nurikabe", currentLanguage),
      button1 = RaelHubTradutor.Tradutor("Esp Boogeyman", currentLanguage),
      button2 = RaelHubTradutor.Tradutor("Zona segura", currentLanguage),
      button3 = RaelHubTradutor.Tradutor("Tp larva", currentLanguage),
      button4 = RaelHubTradutor.Tradutor("Tp Nurikabe", currentLanguage)
    }

    local Tab_Lama = {
      name = RaelHubTradutor.Tradutor("Mud phase", currentLanguage),
      section = RaelHubTradutor.Tradutor("Finalizar essa fase", currentLanguage),
      button = RaelHubTradutor.Tradutor("Auto finalizar", currentLanguage)
    }

    local Tab_HouseYurei = {
      name = RaelHubTradutor.Tradutor("Casa Yurei", currentLanguage),
      section1 = RaelHubTradutor.Tradutor("Mostrar todas as estátuas malignas", currentLanguage),
      section2 = RaelHubTradutor.Tradutor("Mostrar a localização das casas", currentLanguage),
      section3 = RaelHubTradutor.Tradutor("Teleportar para as casas", currentLanguage),
      section4 = RaelHubTradutor.Tradutor("Traduiz legenda da yurei casa", currentLanguage),
      button1 = RaelHubTradutor.Tradutor("Esp estátuas", currentLanguage),
      button2 = RaelHubTradutor.Tradutor("Esp casas", currentLanguage),
      button3 = RaelHubTradutor.Tradutor("Teleportar para o Casa", currentLanguage),
      button4 = RaelHubTradutor.Tradutor("Auto traduzir", currentLanguage),
      HouseDropdownName = RaelHubTradutor.Tradutor("Casas", currentLanguage),
    }

    for i = 1, 5 do
      Tab_HouseYurei["NameEsp" .. i] = RaelHubTradutor.Tradutor("Casa " .. i, currentLanguage)
      Tab_HouseYurei["House" .. i] = RaelHubTradutor.Tradutor("Casa " .. i, currentLanguage)
    end

    local Tab_BossYurei = {
      name = RaelHubTradutor.Tradutor("Boss Yurei", currentLanguage),
      section1 = RaelHubTradutor.Tradutor("Auto coletar as katanas", currentLanguage),
      section2 = RaelHubTradutor.Tradutor("Atravessar todas as árvores", currentLanguage),
      section3 = RaelHubTradutor.Tradutor("Voar + mira", currentLanguage),
      button1 = RaelHubTradutor.Tradutor("Coletar katanas", currentLanguage),
      button2 = RaelHubTradutor.Tradutor("No clip Árvore", currentLanguage),
      button3 = RaelHubTradutor.Tradutor("Fly (velocidade recomendada: 1)", currentLanguage)
    }

    local Tab_FaseFinal = {
      name = RaelHubTradutor.Tradutor("Fase Final", currentLanguage),
      section1 = RaelHubTradutor.Tradutor("Executar a cutscene do Shinigami", currentLanguage),
      section2 = RaelHubTradutor.Tradutor("Auto passar do Shinigami", currentLanguage),
      button1 = RaelHubTradutor.Tradutor("Execute cutscene", currentLanguage),
      button2 = RaelHubTradutor.Tradutor("Escape Shinigami", currentLanguage)
    }
    
    local Tab_Others = {
      name = RaelHubTradutor.Tradutor("Outros", currentLanguage),
      section1 = RaelHubTradutor.Tradutor("Aumentar o fps", currentLanguage),
      section2 = RaelHubTradutor.Tradutor("Esp", currentLanguage),
      section3 = RaelHubTradutor.Tradutor("Auto coletar moedas", currentLanguage),
      section4 = RaelHubTradutor.Tradutor("Atravessar todas as portas", currentLanguage),
      section5 = RaelHubTradutor.Tradutor("Ilumina ao seu redor", currentLanguage),
      button1 = RaelHubTradutor.Tradutor("Fps Boost", currentLanguage),
      button2 = RaelHubTradutor.Tradutor("Esp player", currentLanguage),
      button3 = RaelHubTradutor.Tradutor("Esp moedas", currentLanguage),
      button4 = RaelHubTradutor.Tradutor("Auto coletar moedas", currentLanguage),
      button5 = RaelHubTradutor.Tradutor("No clip Portas", currentLanguage),
      button6 = RaelHubTradutor.Tradutor("FullBright", currentLanguage)
    }
    
    local updatedConfig = {
      Tab_cutscene = Tab_cutscene,
      Tab_GiveHeart = Tab_GiveHeart,
      Tab_Mapmaze = Tab_Mapmaze,
      Tab_DodoMeki = Tab_DodoMeki,
      Tab_Enzuzai = Tab_Enzuzai,
      Tab_HouseUchiumi = Tab_HouseUchiumi,
      Tab_Train = Tab_Train,
      Tab_larvas = Tab_larvas,
      Tab_Lama = Tab_Lama,
      Tab_HouseYurei = Tab_HouseYurei,
      Tab_BossYurei = Tab_BossYurei,
      Tab_FaseFinal = Tab_FaseFinal,
      Tab_Others = Tab_Others
    }

    SaveConfig(updatedConfig, currentLanguage)

    screenGui:Destroy()
    return Tab_cutscene, Tab_GiveHeart, Tab_Mapmaze, Tab_DodoMeki, Tab_Enzuzai, Tab_HouseUchiumi, Tab_Train, Tab_larvas, Tab_Lama, Tab_HouseYurei, Tab_BossYurei, Tab_FaseFinal, Tab_Others
end

return TranslationModule