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

function CreateEsp1(objeto, cor, imageId, texto)

  local highlight = Instance.new("Highlight")
  highlight.Name = "RaelHubDestaque"
  highlight.Adornee = objeto
  highlight.FillColor = cor
  highlight.Parent = objeto

  local billboard = Instance.new("BillboardGui")
  billboard.Name = "RaelHubIcon"
  billboard.Size = UDim2.new(0, 30, 0, 30)
  billboard.StudsOffset = Vector3.new(0, 0, 0)
  billboard.AlwaysOnTop = true
  billboard.Adornee = objeto
  billboard.Parent = objeto

  local imageLabel = Instance.new("ImageLabel")
  imageLabel.Size = UDim2.new(1, 0, 1, 0)
  imageLabel.BackgroundTransparency = 1
  imageLabel.Image = "rbxassetid://" .. imageId
  imageLabel.Parent = billboard

  local textLabel = Instance.new("TextLabel")
  textLabel.Size = UDim2.new(1, 0, 0.3, 0)
  textLabel.BackgroundTransparency = 1
  textLabel.Text = texto
  textLabel.Position = UDim2.new(0, 0, 1, 0)
  textLabel.TextColor3 = cor
  textLabel.TextSize = 13
  textLabel.Font = Enum.Font.GothamBold
  textLabel.Parent = billboard
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

function RaelHubEspPDOORS.EspAlavancaAtivado()
  local AlavancasPastas = workspace.CurrentRooms

  for _, AlavancaPasta in ipairs(AlavancasPastas:GetChildren()) do
    if AlavancaPasta:IsA("Model") then
      local Pasta = AlavancaPasta:FindFirstChild("Assets")

      if Pasta then
        local Alavanca = Pasta:FindFirstChild("LeverForGate")

        if Alavanca then
          if not Alavanca:FindFirstChild("RaelHubDestaque") and not Alavanca:FindFirstChild("RaelHubIcon") then
            CreateEsp1(Alavanca, Color3.fromRGB(0, 255, 255), "", "Lever")
          end
        end
      end
    end
  end
end

function RaelHubEspPDOORS.EspAlavancaDesativado()
  local AlavancasPastas = workspace.CurrentRooms

  for _, AlavancaPasta in ipairs(AlavancasPastas:GetChildren()) do
    if AlavancaPasta:IsA("Model") then
      local Pasta = AlavancaPasta:FindFirstChild("Assets")

      if Pasta then
        local Alavanca = Pasta:FindFirstChild("LeverForGate")

        if Alavanca then
          if Alavanca:FindFirstChild("RaelHubDestaque") and Alavanca:FindFirstChild("RaelHubIcon") then
            
            Alavanca:FindFirstChild("RaelHubDestaque"):Destroy()
            
            Alavanca:FindFirstChild("RaelHubIcon"):Destroy()
            
          end
        end
      end
    end
  end
end

local function ProcessarKeyObtain(KeyObtain)
    if KeyObtain and not KeyObtain:FindFirstChild("RaelHubDestaque") and not KeyObtain:FindFirstChild("RaelHubIcon") then
        CreateEsp1(KeyObtain, Color3.fromRGB(0, 255, 255), "", "")
        
        local KeyKey = KeyObtain.Hitbox and KeyObtain.Hitbox:FindFirstChild("Key")
        if KeyKey and not KeyKey:FindFirstChild("RaelHubDestaque") and not KeyKey:FindFirstChild("RaelHubIcon") then
            CreateEsp1(KeyKey, Color3.fromRGB(0, 255, 255), "117047144730308", "")
        end
    end
end

function RaelHubEspPDOORS.EspKeyAtivado()
  local KeysPastas = workspace.CurrentRooms

  for _, KeyPasta in ipairs(KeysPastas:GetChildren()) do
    if KeyPasta:IsA("Model") then
      local Pasta = KeyPasta:FindFirstChild("Assets")
      if Pasta then
        local KeyObtain = Pasta:FindFirstChild("KeyObtain")
        ProcessarKeyObtain(KeyObtain)

        local AlternatePasta = Pasta:FindFirstChild("Alternate")
        if AlternatePasta and AlternatePasta:IsA("Folder") then
          local KeysFolder = AlternatePasta:FindFirstChild("Keys")
          if KeysFolder then
            for _, PastaKey in ipairs(KeysFolder:GetChildren()) do
              ProcessarKeyObtain(PastaKey:FindFirstChild("KeyObtain"))
            end
          end
        end

        for _, PastaPossiveil in ipairs(Pasta:GetChildren()) do
          if PastaPossiveil:IsA("Model") then
                
            if PastaPossiveil then
              for _, DrawerContainerPasta in ipairs(PastaPossiveil:GetChildren()) do
                if DrawerContainerPasta.Name == "DrawerContainer" then
                  ProcessarKeyObtain(DrawerContainerPasta:FindFirstChild("KeyObtain"))
                end
              end
            end
            ProcessarKeyObtain(PastaPossiveil:FindFirstChild("KeyObtain"))
          end
        end
      end
    end
  end
end



return RaelHubEspPDOORS