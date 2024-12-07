function RaelHubLoadScreenGui(textvalue)
  local player = game.Players.LocalPlayer
  local playerGui = player:WaitForChild("PlayerGui")

  -- Cria a tela de carregamento
  getgenv().RaelHubScreenGuiLoad = Instance.new("ScreenGui")
  getgenv().RaelHubScreenGuiLoad.Parent = playerGui

  -- Imagem de fundo (opcional)
  local imageLabel = Instance.new("ImageLabel")
  imageLabel.Size = UDim2.new(0.7, 0, 0.6, 0)
  imageLabel.Position = UDim2.new(0.15, 0, 0.2, 0)
  imageLabel.Image = "rbxassetid://18665679839"
  imageLabel.BackgroundTransparency = 1
  imageLabel.ScaleType = Enum.ScaleType.Stretch
  imageLabel.Parent = getgenv().RaelHubScreenGuiLoad

  -- Cria o TextLabel
  local title = Instance.new("TextLabel")
  title.Size = UDim2.new(0.6, 0, 0.1, 0)
  title.AnchorPoint = Vector2.new(0.5, 0.5)
  title.Position = UDim2.new(0.5, 0, 0.5, 0) -- Posição centralizada
  title.BackgroundTransparency = 1
  title.Text = textvalue
  title.TextColor3 = Color3.fromRGB(16, 235, 138) -- Cor do texto
  title.Font = Enum.Font.ArialBold
  title.TextScaled = true
  title.TextTransparency = 1 -- Começa invisível
  title.Parent = getgenv().RaelHubScreenGuiLoad



  -- Função para fazer o fade in
  local function fadeInText(duration, object)
    local increment = 0.05
    local step = increment / duration
    for i = 0, 1, step do
        object.TextTransparency = 1 - i
        task.wait(increment)
    end
  end

  -- Função para fazer o fade out
  local function fadeOutText(duration, object)
    local increment = 0.05
    local step = increment / duration
    for i = 0, 1, step do
        object.TextTransparency = i
        task.wait(increment)
    end
  end

  local function fadeInImage(duration, object)
    local increment = 0.05
    local step = increment / duration
    task.spawn(function()
      for i = 0, 1, step do
        object.ImageTransparency = 1 - i
        task.wait(increment)
      end
    end)
  end


  local function fadeOutImage(duration, object)
    local increment = 0.05
    local step = increment / duration
    for i = 0, 1, step do
      object.ImageTransparency = i
      task.wait(increment)
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
  startSound.Parent = getgenv().RaelHubScreenGuiLoad
  startSound:Play()

  -- Exemplo de uso
  fadeInText(0.5, title) -- Faz o texto aparecer
  task.wait(2)
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
  loadingIcon.Parent = getgenv().RaelHubScreenGuiLoad

  fadeInImage(0.5, loadingIcon)

  -- Inicia a rotação do ícone de carregamento
  spawn(function()
    rotateIcon(loadingIcon)
  end)
end

local RaelHubTradutor = loadstring(game:HttpGet("https://raw.githubusercontent.com/Raelhub/Rael-hub-function/refs/heads/main/RaelHubTranslatorSystem/script.lua"))()

if getgenv and getgenv().RaelHubAutoTranslator == nil then
  getgenv().RaelHubAutoTranslator = true
  warn("RaelHubAutoTranslator was created and set to true.")
else
  warn("RaelHubAutoTranslator already exists, keeping the current value.")
end

if getgenv().RaelHubAutoTranslator then
  local RaelHubText1 = RaelHubTradutor.Tradutor("THANK YOU FOR USING RAEL HUB")
  RaelHubLoadScreenGui(RaelHubText1)
elseif getgenv().RaelHubAutoTranslator == false then
  local RaelHubText1 = "THANK YOU FOR USING RAEL HUB"
  RaelHubLoadScreenGui(RaelHubText1)
end

local TranslationModule = {}
local configFolder = "RaelHub brookhaven" -- Pasta onde os arquivos de tradução serão salvos

-- Serviço de localização do Roblox
local LocalizationService = game:GetService("LocalizationService")

-- Função para detectar o idioma do jogador usando LocalizationService
local function GetPlayerLanguage()
    local result, code = pcall(function()
        return LocalizationService.RobloxLocaleId
    end)
    if result then
        return code:sub(1, 2)
    else
        return "en"
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
    
    print(currentLanguage)
    
    -- Carregar as traduções do idioma do jogador se já existirem
    local savedConfig = LoadConfig(currentLanguage)
    
    if getgenv().RaelHubAutoTranslator and currentLanguage == "pt" then

      local House = {
        name = "Casa",
        section1 = "Remover seu ban nas casas",
        section2 = "Lista de casas",
        section3 = "Adicionar id de som na sua casa (gamepass)",
        section4 = "Adicionar id de som na sua casa via playerlist (gamepass)",
        toggle1 = "Remover o ban automáticamente",
        toggle2 = "Atravessar a porta da casa",
        toggle3 = "Spawn campinha",
        toggle4 = "Spawn bater porta",
        button1 = "Remover ban",
        button2 = "Atulizar lista das casas",
        button3 = "Teleportar para a casa",
        button4 = "Teleportar para o cofre",
        button5 = "Tocar a música",
        button6 = "Salvar a playlist",
        button7 = "Carrgar a playlist",
        dropdowntext1 = "Casas",
        dropdowntext2 = "Musicas ids",
        textboxtext1 = "Musica Id",
        textboxtext2 = "Ensira seu pastebin",
        textboxdescription = "Tutorial no canal rael hub"
      }
      
      local Clothes = {
        name = "Roupas",
        section1 = "Deixar o nome do personagem colorido",
        section2 = "Deixar o bio do personagem colorido",
        section3 = "Deixar o personagem colorido",
        section4 = "Lista de jogadores",
        section5 = "Lista de partes do corpo do personagem",
        section6 = "Lista de valquírias",
        section7 = "Lista de Sparkle time fedore",
        section8 = "Lista de fardas",
        toggle1 = "Nome colorido",
        toggle2 = "Bio colorido",
        toggle3 = "Personagem colorido",
        equipedbutton = "Equipar parte",
        equipedbutton2 = "Equipar parte",
        button1 = "Copiar skin do jogador",
        button2 = "Copiar skin do jogador mais perto",
        button3 = "Copiar skin do jogador aleatório",
        dropdownplayertext = "Lista de jogadores",
        dropdownhandle = "Cabeça",
        dropdownleftarm = "Braço esquerdo",
        dropdownrigtharm = "Braço direito",
        dropdowntorso = "Tronco",
        dropdownleftleg = "Pé esquerdo",
        dropdownrigthleg = "Pé direito",
        dropdownvalkyrie = "Valquírias",
        dropdownstf = "Sparkle time fedora",
        dropdownfairy = "Fairy"
        
      }
      
      local Car = {
        name = "Carros",
        section1 = "Modificar a velocidade do veículo",
        section2 = "Deixar o carro colorido",
        section3 = "Lista de carros",
        section4 = "Spawns",
        section5 = "Fazer o carro subir",
        section6 = "Não ficar sentando em veículos",
        section7 = "Adicionar id de som no carro (gamepass)",
        section8 = "Adicionar id de som no carro via playlist (gamepass)",
        textboxtext1 = "Velocidade do veículo",
        textboxtext2 = "Música id",
        toggle1 = "Carro colorido",
        toggle2 = "Puxar carro",
        toggle3 = "Spawn fogo",
        toggle4 = "Spawn buzina 1",
        toggle5 = "Spawn buzina 2",
        toggle6 = "Subir carro",
        toggle7 = "Não se sentar em veículos",
        button1 = "Atualizar lista de carros",
        button2 = "Teleportar para o carro",
        dropdowncar = "Carros"
      }
      
      local Jogador = { 
        name = "Jogador",
        section1 = "Mandar mensagem no chat",
        section2 = "Lista de jogadores",
        section3 = "Velocidade do jogador",
        section4 = "Força do pulo",
        section5 = "Atravessar as paredes",
        section6 = "Iluminar o mapa",
        textboxtext = "Ensira seu texto",
        textboxplaceholder = "Meu texto",
        button1 = "Mandar texto",
        button2 = "Matar jogador",
        button3 = "Puxar jogador",
        slide = "Delay do texto",
        slidespeed = "Velocidade",
        slidejump = "Força",
        toggle1 = "Spawn de textos",
        toggle2 = "Spectar jogador",
        toggle3 = "Ativar velocidade",
        toggle4 = "Ativar força do pulo",
        toggle5 = "Ativar no clip",
        toggle6 = "Fullbright"
      }
      
      local Mostrar = {
        name = "Esp",
        toggle1 = "Esp player",
        toggle2 = "Veículo"
      }
      
      local Creditos = {
        name = "Creditos",
        descricao = "Entre no meu discord e se inscreva no meu canal do YouTube"
      }
      
    end
end

return TranslationModule