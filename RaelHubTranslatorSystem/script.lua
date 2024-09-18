local RaelHubTradutor = {}

local HttpService = game:GetService("HttpService")
local LocalizationService = game:GetService("LocalizationService")

-- Pega o idioma da experiência do Roblox
local userLocale = LocalizationService.RobloxLocaleId

-- Função para traduzir texto
function RaelHubTradutor.Tradutor(texto)
    local url = "https://translate.googleapis.com/translate_a/single?client=gtx&sl=auto&tl=" .. userLocale .. "&dt=t&q=" .. HttpService:UrlEncode(texto)
    
    -- Faz a requisição HTTP usando 'request', compatível com outros executores
    local response = request({
        Url = url,
        Method = "GET"
    })
    
    -- Decodifica o corpo da resposta e retorna a tradução
    local resultado = HttpService:JSONDecode(response.Body)
    return resultado[1][1][1]  -- Retorna o texto traduzido
end

return RaelHubTradutor