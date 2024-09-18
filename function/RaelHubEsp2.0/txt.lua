-- Função para obter a lista de jogadores
local function getPlayers()
    local Players = {}
    for _, jogador in ipairs(game.Players:GetPlayers()) do
        table.insert(Players, jogador.Name)
    end
    return Players
end

-- Criando uma seção de jogador para que o dropdown seja recriado no mesmo lugar
local Player_section2 = Tabs.Player:AddSection("Teleportar para jogadores")

-- Função para criar um novo dropdown na mesma posição
local function createPlayerDropdown()
    return Player_section2:AddDropdown("Players", {
        Title = "Player: ",
        Values = getPlayers(),
        Multi = false,
        Default = 1,
    })
end

-- Inicializa o dropdown com a lista de jogadores


-- Atualiza o dropdown quando um jogador entrar ou sair
local function updateDropdown()
    PlayersDropdown:Destroy() -- Remove o dropdown antigo
    PlayersDropdown = createPlayerDropdown() -- Recria o dropdown na posição original
end

game.Players.PlayerAdded:Connect(updateDropdown)
game.Players.PlayerRemoving:Connect(updateDropdown)

-- Botão de teleporte
