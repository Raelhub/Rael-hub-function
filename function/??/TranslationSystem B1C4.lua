local TranslationModule = {}
local configFolder = "Rael Hub B1C4" -- Pasta onde os arquivos de tradução serão salvos

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
        return savedConfig.Main, savedConfig.saigomo, savedConfig.Jogador, savedConfig.Mostrar, savedConfig.EspNames, savedConfig.Creditos
    end

    -- Se as traduções não existem, fazer a tradução e salvar para o idioma atual
    local Main = {
        name = RaelHubTradutor.Tradutor("Main", currentLanguage),
        section1 = RaelHubTradutor.Tradutor("Auto win part 1", currentLanguage),
        section2 = RaelHubTradutor.Tradutor("Auto win part 2", currentLanguage),
        section3 = RaelHubTradutor.Tradutor("Auto win part 3", currentLanguage),
        section4 = RaelHubTradutor.Tradutor("Auto matar todos os corações da saigomo", currentLanguage),
        button = RaelHubTradutor.Tradutor("Auto win", currentLanguage),
        button1 = RaelHubTradutor.Tradutor("Auto matar saigomo", currentLanguage)
    }

    local saigomo = {
        section1 = RaelHubTradutor.Tradutor("Auto matar a saigomo simples", currentLanguage),
        section2 = RaelHubTradutor.Tradutor("Auto matar a saigomo completo [Beta]", currentLanguage),
        section3 = RaelHubTradutor.Tradutor("Auto clicar na tela", currentLanguage),
        button1 = RaelHubTradutor.Tradutor("Auto saigomo simples", currentLanguage),
        button2 = RaelHubTradutor.Tradutor("Auto saigomo completo", currentLanguage),
        button3 = RaelHubTradutor.Tradutor("Auto click", currentLanguage)
    }

    local Jogador = {
        name = RaelHubTradutor.Tradutor("Player", currentLanguage),
        section1 = RaelHubTradutor.Tradutor("Teleport to players", currentLanguage),
        section2 = RaelHubTradutor.Tradutor("Player Speed", currentLanguage),
        section3 = RaelHubTradutor.Tradutor("Light up the map", currentLanguage),
        dropdowntext = RaelHubTradutor.Tradutor("Players: ", currentLanguage),
        slidetext = RaelHubTradutor.Tradutor("Speed: ", currentLanguage),
        button = RaelHubTradutor.Tradutor("Teleport to player", currentLanguage)
    }

    local Mostrar = {
        name = "Esp",
        toggle1 = "Esp " .. RaelHubTradutor.Tradutor(" object ", currentLanguage),
        toggle2 = "Esp " .. RaelHubTradutor.Tradutor(" monster ", currentLanguage),
        toggle3 = "Esp " .. RaelHubTradutor.Tradutor(" players ", currentLanguage)
    }

    local EspNames = {
        section1 = {
            name1 = RaelHubTradutor.Tradutor("Key ", currentLanguage),
            name2 = RaelHubTradutor.Tradutor("Pé de cabra", currentLanguage)
        },
        section3 = {
            name1 = RaelHubTradutor.Tradutor("Armadura", currentLanguage)
        },
        section4 = {
            name1 = RaelHubTradutor.Tradutor("Coração", currentLanguage)
        }
    }

    local Creditos = {
        name = RaelHubTradutor.Tradutor("Credits", currentLanguage),
        section = RaelHubTradutor.Tradutor("Script creator", currentLanguage),
        descricao = RaelHubTradutor.Tradutor("Join my YouTube channel and Discord for new updates", currentLanguage),
        ContentNotify = RaelHubTradutor.Tradutor("The script has been copied to the desktop", currentLanguage)
    }

    -- Salvar as traduções para o idioma do jogador
    local updatedConfig = {
        Main = Main,
        saigomo = saigomo,
        Jogador = Jogador,
        Mostrar = Mostrar,
        EspNames = EspNames,
        Creditos = Creditos
    }

    SaveConfig(updatedConfig, currentLanguage)

    -- Retorna os valores traduzidos
    return Main, saigomo, Jogador, Mostrar, EspNames, Creditos
end

return TranslationModule