local NagisaSistema = {}

function NagisaSistema.EncontrarPastaDaNagisa()
    for _, pasta in ipairs(Workspace:GetChildren()) do
        if pasta:IsA("Folder") then
            for _, model in ipairs(pasta:GetChildren()) do
                if model:IsA("Folder") and model.Name == "Stage2BOSS" then
                    print("Working... " .. pasta.Name)
                    return pasta
                end
            end
        end
    end
    return nil
end

return NagisaSistema