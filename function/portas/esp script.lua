function createESP2(part)
  local espBox = Instance.new("BoxHandleAdornment")
  espBox.Name = "RaelHubEsp2"
  espBox.Size = part.Size
  espBox.Adornee = part
  espBox.Color3 = Color3.fromRGB(0, 255, 0)
  espBox.AlwaysOnTop = true
  espBox.ZIndex = 0
  espBox.Transparency = 0.7
  espBox.Parent = part
end

local RaelHubEspPDOORS = {}

function RaelHubEspPDOORS.EspDoorsAtivado()
  local PortasPastas = workspace.CurrentRooms

  for _, PortaPasta in ipairs(PortasPastas:GetChildren()) do
    if PortaPasta:IsA("Folder") or PortaPasta:IsA("Model") then

      local Porta = PortaPasta:FindFirstChild("Door")

      if Porta:FindFirstChild("Door") then
        if not Porta:FindFirstChild("Door"):FindFirstChild("RaelHubEsp2") then
            createESP2(Porta:FindFirstChild("Door"))
        end
      end
    end
  end
end

function RaelHubEspPDOORS.EspDoorsDesativado()
  
  local PortasPastas = workspace.CurrentRooms
  
  for _, PortaPasta in ipairs(PortasPastas:GetChildren()) do
    if PortaPasta:IsA("Folder") or PortaPasta:IsA("Model") then
  
      local Porta = PortaPasta:FindFirstChild("Door")
            
      if Porta:FindFirstChild("Door") then
        if Porta:FindFirstChild("Door"):FindFirstChild("RaelHubEsp2") then
  
          Porta:FindFirstChild("Door"):FindFirstChild("RaelHubEsp2"):Destroy()
  
        end
      end
    end
  end
end

return RaelHubEspPDOORS