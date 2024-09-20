local RaelHubTradutor = {}

local HttpService = game:GetService("HttpService")
local LocalizationService = game:GetService("LocalizationService")

-- Obtém o idioma da experiência do Roblox
local userLocale = LocalizationService.RobloxLocaleId or "en"

-- Função para URL Encode
local function UrlEncode(str)
    return str:gsub("([^%w ])", function(c)
        return string.format("%%%02X", string.byte(c))
    end):gsub(" ", "+")
end

-- Função para traduzir texto
function RaelHubTradutor.Tradutor(texto)
    local url = "https://translate.googleapis.com/translate_a/single?client=gtx&sl=auto&tl=" .. userLocale .. "&dt=t&q=" .. UrlEncode(texto)
    
    -- Tenta fazer a requisição HTTP com tratamento de erros
    local success, response = pcall(function()
        return HttpService:GetAsync(url)
    end)

    -- Verifica se a requisição foi bem-sucedida
    if success then
        local successDecode, resultado = pcall(function()
            return HttpService:JSONDecode(response)
        end)

        -- Verifica se a decodificação foi bem-sucedida
        if successDecode and resultado and resultado[1] and resultado[1][1] and resultado[1][1][1] then
            return resultado[1][1][1]  -- Retorna o texto traduzido
        else
            warn("Erro ao decodificar a resposta de tradução.")
            return texto  -- Retorna o texto original se falhar
        end
    else
        warn("Falha na requisição de tradução. Verifique a conexão ou a URL.")
        return texto  -- Retorna o texto original se falhar
    end
end

return RaelHubTradutor