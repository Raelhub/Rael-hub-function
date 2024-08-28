local TorreSistema = {}

function TorreSistema.EncontrarPastaDaTorre()
    for _, pasta in ipairs(Workspace:GetChildren()) do
        if pasta:IsA("Folder") then
            for _, model in ipairs(pasta:GetChildren()) do
                if model:IsA("Folder") and model.Name == "SquidGames" then
                    print("Working... " .. pasta.Name)
                    return pasta
                end
            end
        end
    end
    return nil
end

function TorreSistema.TpTorre(folder)
    if not folder then
        warn("Folder inválida ou não encontrada!")
        return
    end

    for _, PastaPuzzle in ipairs(folder:GetChildren()) do
        if PastaPuzzle:IsA("Folder") then
            for _, Models in ipairs(PastaPuzzle:GetChildren()) do
                if Models:IsA("Model") and (Models.Name == "1" or Models.Name == "2" or Models.Name == "3") then
                    for _, part in ipairs(Models:GetChildren()) do
                        if part:IsA("BasePart") and part.Name == "Base" and part.Transparency == 0 then
                            local Part1 = part:FindFirstChild("Part1")
                            local Part2 = part:FindFirstChild("Part2")

                            if Part1 and Part1:IsA("BasePart") and Part2 and Part2:IsA("BasePart") then
                                if Part1.Color == Color3.fromRGB(27, 42, 53) or Part2.Color == Color3.fromRGB(27, 42, 53) then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(part.Position)
                                    return
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    warn("Nenhuma torre válida foi encontrada!")
end

return TorreSistema