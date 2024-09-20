local RaelHubTradutor = {}

local HttpService = game:GetService("HttpService")
local LocalizationService = game:GetService("LocalizationService")

local userLocale = LocalizationService.RobloxLocaleId or "en" -- Idioma padrão como inglês
local cache = {}

function RaelHubTradutor.Tradutor(texto)
    -- Verifica se o texto já foi traduzido para o idioma do jogador
    if cache[texto] and cache[texto][userLocale] then
        return cache[texto][userLocale]
    end
    
    local url = "https://libretranslate.com/translate"
    local body = HttpService:JSONEncode({
        q = texto,
        source = "auto",
        target = userLocale,
        format = "text"
    })

    local headers = {
        ["Content-Type"] = "application/json"
    }

    -- Faz a requisição HTTP
    local success, response = pcall(function()
        return request({
            Url = url,
            Method = "POST",
            Headers = headers,
            Body = body
        })
    end)

    if success and response.StatusCode == 200 then
        local successDecode, resultado = pcall(function()
            return HttpService:JSONDecode(response.Body)
        end)

        if successDecode and resultado and resultado.translatedText then
            local traducao = resultado.translatedText
            cache[texto] = cache[texto] or {}
            cache[texto][userLocale] = traducao -- Armazena no cache
            return traducao -- Retorna a tradução
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