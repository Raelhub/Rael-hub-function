local RaelHubTradutor = {}

local HttpService = game:GetService("HttpService")
local LocalizationService = game:GetService("LocalizationService")

-- Pega o idioma da experiência do Roblox
local userLocale = LocalizationService.RobloxLocaleId or "en" -- Caso não consiga pegar o idioma, define como inglês

-- Cria uma tabela para armazenar traduções em cache
local cache = {}

-- Função para traduzir texto
function RaelHubTradutor.Tradutor(texto)
    -- Verifica se o texto já foi traduzido antes e está no cache
    if cache[texto] then
        return cache[texto] -- Retorna a tradução armazenada no cache
    end
    
    local url = "https://translate.googleapis.com/translate_a/single?client=gtx&sl=auto&tl=" .. userLocale .. "&dt=t&q=" .. HttpService:UrlEncqode(texto)
    
    -- Tenta fazer a requisição HTTP com tratamento de erros
    local success, response = pcall(function()
        return request({
            Url = url,
            Method = "GET",
            Headers = { ["Content-Type"] = "application/json" }
        })
    end)

    -- Verifica se a requisição foi bem-sucedida
    if success and response.StatusCode == 200 then
        local successDecode, resultado = pcall(function()
            return HttpService:JSONDecode(response.Body)
        end)

        -- Verifica se a decodificação foi bem-sucedida
        if successDecode and resultado and resultado[1] and resultado[1][1] and resultado[1][1][1] then
            local traducao = resultado[1][1][1]
            cache[texto] = traducao -- Armazena a tradução no cache
            return traducao  -- Retorna o texto traduzido
        else
            warn("Erro ao decodificar a resposta de tradução.")
            return texto -- Retorna o texto original se falhar
        end
    else
        warn("Falha na requisição de tradução. Verifique a conexão ou a URL.")
        return texto -- Retorna o texto original se falhar
    end
end

return RaelHubTradutor