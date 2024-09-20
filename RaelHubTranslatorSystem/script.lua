local RaelHubTradutor = {}

local HttpService = game:GetService("HttpService")
local LocalizationService = game:GetService("LocalizationService")
local Players = game:GetService("Players")

local Player = Players.LocalPlayer

-- Configurações da API
local request = request or http_request or HttpPost or syn.request
local executeURL = "https://Translate.google.com/_/TranslateWebserverUi/data/batchexecute"
local rootURL = "https://Translate.google.com/"

-- Obtém o idioma da experiência do Roblox
local userLocale = LocalizationService.RobloxLocaleId or "en"

-- Função para encoding/decoding
local function Encode(Source)
    return HttpService:JSONEncode(Source)
end

local function Decode(Source)
    return HttpService:JSONDecode(Source)
end

-- Função para realizar requisição HTTP
local function got(Url, Method, Body)
    Method = Method or "GET"
    
    local res = request({
        ["Url"] = Url,
        ["Method"] = Method,
        ["Headers"] = {
            ["cookie"] = "CONSENT=YES+"
        },
        ["Body"] = Body
    })
    
    if res.Body:match("https://consent.google.com/s") then
        res = syn.request({
            ["Url"] = Url,
            ["Method"] = "GET",
            ["Headers"] = {
                ["cookie"] = "CONSENT=YES+"
            }
        })
    end
    
    return res
end

-- Função para codificar a query
local function stringifyQuery(Fields)
    local data = ""
    for Ind, Val1 in pairs(Fields) do
        if type(Val1) == "table" then
            for _, Val2 in pairs(Val1) do
                data = data .. ("&%s=%s"):format(HttpService:UrlEncode(Ind), HttpService:UrlEncode(Val2))
            end
        else
            data = data .. ("&%s=%s"):format(HttpService:UrlEncode(Ind), HttpService:UrlEncode(Val1))
        end
    end
    data = data:sub(2)
    return data
end

-- Função para traduzir texto
local function Translate(str, to, from)
    from = from or "auto"
    to = to or "en"
    
    local data = {{str, from, to, true}, {nil}}
    local freq = {{{"MkEWBc", Encode(data), nil, "generic"}}}
    
    local url = executeURL .. "?" .. stringifyQuery{rpcids = "MkEWBc", ["f.sid"] = "", bl = "", hl = "en", _reqid = 0, rt = "c"}
    local body = stringifyQuery{["f.req"] = Encode(freq)}
    local req = got(url, "POST", body)
    
    local body = Decode(req.Body:match"%[.-%]\n")
    local translationData = Decode(body[1][3])
    local result = {
        text = "",
        from = {
            language = "",
            text = ""
        },
        raw = ""
    }
    
    result.raw = translationData
    result.text = translationData[2][1][1][6][1][1]
    result.from.language = translationData[3]
    result.from.text = translationData[2][5][1]
    
    return result
end

-- Função para traduzir para o idioma do usuário
function RaelHubTradutor.Tradutor(texto)
    local result = Translate(texto, userLocale)
    
    if result.from.language ~= userLocale then
        return result.text
    else
        return texto
    end
end

return RaelHubTradutor