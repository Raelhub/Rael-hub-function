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
            
            local Centro = Alavanca:FindFirstChild("Main")
            
            if not Centro:FindFirstChild("RaelHubDestaque") and not Centro:FindFirstChild("RaelHubIcon") then
              CreateEsp1(Centro, Color3.fromRGB(0, 255, 255), "79484345415357", "Lever")
            end
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
            
            local Centro = Alavanca:FindFirstChild("Main")
            
            if Centro:FindFirstChild("RaelHubDestaque") and Centro:FindFirstChild("RaelHubIcon") then
              Centro:FindFirstChild("RaelHubDestaque"):Destroy()
            
              Centro:FindFirstChild("RaelHubIcon"):Destroy()
            end
            
          end
        end
      end
    end
  end
end

local function ProcessarKeyObtainOn(KeyObtain)
    if KeyObtain and not KeyObtain:FindFirstChild("RaelHubDestaque") and not KeyObtain:FindFirstChild("RaelHubIcon") then
        CreateEsp1(KeyObtain, Color3.fromRGB(0, 255, 255), "", "")
        
        local KeyKey = KeyObtain.Hitbox and KeyObtain.Hitbox:FindFirstChild("Key")
        if KeyKey and not KeyKey:FindFirstChild("RaelHubDestaque") and not KeyKey:FindFirstChild("RaelHubIcon") then
            CreateEsp1(KeyKey, Color3.fromRGB(0, 255, 255), "117047144730308", "")
        end
    end
end

local function ProcessarKeyObtainOff(KeyObtain)
    if KeyObtain and KeyObtain:FindFirstChild("RaelHubDestaque") and KeyObtain:FindFirstChild("RaelHubIcon") then
        KeyObtain:FindFirstChild("RaelHubDestaque"):Destroy()
            
        KeyObtain:FindFirstChild("RaelHubIcon"):Destroy()
        
        local KeyKey = KeyObtain.Hitbox and KeyObtain.Hitbox:FindFirstChild("Key")
        if KeyKey and KeyKey:FindFirstChild("RaelHubDestaque") and KeyKey:FindFirstChild("RaelHubIcon") then
            KeyKey:FindFirstChild("RaelHubDestaque"):Destroy()
            
            KeyKey:FindFirstChild("RaelHubIcon"):Destroy()
        
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
        ProcessarKeyObtainOn(KeyObtain)

        for _, AlternatePasta in ipairs(Pasta:GetChildren()) do
          if AlternatePasta and AlternatePasta:IsA("Folder") then
            local KeysFolder = AlternatePasta:FindFirstChild("Keys")
            if KeysFolder then
              for _, PastaKey in ipairs(KeysFolder:GetChildren()) do
                ProcessarKeyObtainOn(PastaKey:FindFirstChild("KeyObtain"))
              end
            end
          end
        end

        for _, PastaPossiveil in ipairs(Pasta:GetChildren()) do
          if PastaPossiveil:IsA("Model") then
                
            if PastaPossiveil then
              for _, DrawerContainerPasta in ipairs(PastaPossiveil:GetChildren()) do
                if DrawerContainerPasta.Name == "DrawerContainer" then
                  ProcessarKeyObtainOn(DrawerContainerPasta:FindFirstChild("KeyObtain"))
                end
              end
            end
            ProcessarKeyObtainOn(PastaPossiveil:FindFirstChild("KeyObtain"))
          end
        end
      end
    end
  end
end

function RaelHubEspPDOORS.EspKeyDesativado()
  local KeysPastas = workspace.CurrentRooms

  for _, KeyPasta in ipairs(KeysPastas:GetChildren()) do
    if KeyPasta:IsA("Model") then
      local Pasta = KeyPasta:FindFirstChild("Assets")
      if Pasta then
        local KeyObtain = Pasta:FindFirstChild("KeyObtain")
        ProcessarKeyObtainOff(KeyObtain)

        for _, AlternatePasta in ipairs(Pasta:GetChildren()) do
          if AlternatePasta and AlternatePasta:IsA("Folder") then
            local KeysFolder = AlternatePasta:FindFirstChild("Keys")
            if KeysFolder then
              for _, PastaKey in ipairs(KeysFolder:GetChildren()) do
                ProcessarKeyObtainOff(PastaKey:FindFirstChild("KeyObtain"))
              end
            end
          end
        end

        for _, PastaPossiveil in ipairs(Pasta:GetChildren()) do
          if PastaPossiveil:IsA("Model") then
                
            if PastaPossiveil then
              for _, DrawerContainerPasta in ipairs(PastaPossiveil:GetChildren()) do
                if DrawerContainerPasta.Name == "DrawerContainer" then
                  ProcessarKeyObtainOff(DrawerContainerPasta:FindFirstChild("KeyObtain"))
                end
              end
            end
            ProcessarKeyObtainOff(PastaPossiveil:FindFirstChild("KeyObtain"))
          end
        end
      end
    end
  end
end

function RaelHubEspPDOORS.EspBookAtivado()
  local BooksPastas = workspace.CurrentRooms

  for _, BookPasta in ipairs(BooksPastas:GetChildren()) do
    if BookPasta:IsA("Model") then
      local Pasta = BookPasta:FindFirstChild("Assets")
      if Pasta then
        for _, LivroPasta in ipairs(Pasta:GetChildren()) do
          if LivroPasta:IsA("Model") then
            local livro = LivroPasta:FindFirstChild("LiveHintBook")
              if livro and not livro:FindFirstChild("RaelHubDestaque") and not livro:FindFirstChild("RaelHubIcon") then
                CreateEsp1(livro, Color3.fromRGB(0, 255, 255), "112846382225194", "")
              end
          end
        end
      end
    end
  end
end

function RaelHubEspPDOORS.EspBookDesativado()
  local BooksPastas = workspace.CurrentRooms

  for _, BookPasta in ipairs(BooksPastas:GetChildren()) do
    if BookPasta:IsA("Model") then
      local Pasta = BookPasta:FindFirstChild("Assets")
      if Pasta then
        for _, LivroPasta in ipairs(Pasta:GetChildren()) do
          if LivroPasta:IsA("Model") then
            local livro = LivroPasta:FindFirstChild("LiveHintBook")
              if livro and livro:FindFirstChild("RaelHubDestaque") and livro:FindFirstChild("RaelHubIcon") then
                
                livro:FindFirstChild("RaelHubDestaque"):Destroy()
            
                livro:FindFirstChild("RaelHubIcon"):Destroy()
                
              end
          end
        end
      end
    end
  end
end


function RaelHubEspPDOORS.EspRushAtivado()
  for _, Rush in ipairs(workspace:GetChildren()) do
    if Rush.Name == "RushMoving" then
      local RushPart = Rush:FindFirstChild("RushNew")

      if RushPart and not RushPart:FindFirstChild("RaelHubDestaque") and not RushPart:FindFirstChild("RaelHubIcon") then
        CreateEsp1(RushPart, Color3.fromRGB(255, 102, 102), "140731226103831", "")
        RushPart:FindFirstChild("RaelHubIcon").Size = UDim2.new(0, 50, 0, 50)
      end
    end
  end
end

function RaelHubEspPDOORS.EspAmbushAtivado()
  for _, Ambush in ipairs(workspace:GetChildren()) do
    if Ambush.Name == "AmbushMoving" then
      local AmbushPart = Ambush:FindFirstChild("RushNew")

      if AmbushPart and not AmbushPart:FindFirstChild("RaelHubDestaque") and not AmbushPart:FindFirstChild("RaelHubIcon") then
        CreateEsp1(AmbushPart, Color3.fromRGB(255, 102, 102), "104928133693808", "")
        AmbushPart:FindFirstChild("RaelHubIcon").Size = UDim2.new(0, 50, 0, 50)
      end
    end
  end
end

function RaelHubEspPDOORS.EspRushDesativado()
  for _, Rush in ipairs(workspace:GetChildren()) do
    if Rush.Name == "RushMoving" then
      local RushPart = Rush:FindFirstChild("RushNew")

      if RushPart and RushPart:FindFirstChild("RaelHubDestaque") and RushPart:FindFirstChild("RaelHubIcon") then
        RushPart:FindFirstChild("RaelHubDestaque"):Destroy()
        RushPart:FindFirstChild("RaelHubIcon"):Destroy()
      end
    end
  end
end

function RaelHubEspPDOORS.EspAmbushDesativado()
  for _, Ambush in ipairs(workspace:GetChildren()) do
    if Ambush.Name == "AmbushMoving" then
      local AmbushPart = Ambush:FindFirstChild("RushNew")

      if AmbushPart and AmbushPart:FindFirstChild("RaelHubDestaque") and AmbushPart:FindFirstChild("RaelHubIcon") then
        AmbushPart:FindFirstChild("RaelHubDestaque"):Destroy()
        AmbushPart:FindFirstChild("RaelHubIcon"):Destroy()
      end
    end
  end
end

function RaelHubEspPDOORS.EspFigureAtivado()
  local FigurePasta = workspace.CurrentRooms
  
  for _, Figure in ipairs(FigurePasta:GetChildren()) do
    if Figure:IsA("Model") then
      if Figure:FindFirstChild("FigureSetup") then
        
        local FigureModel = Figure:FindFirstChild("FigureSetup")
        
        if FigureModel and not FigureModel:FindFirstChild("RaelHubDestaque") and not FigureModel:FindFirstChild("RaelHubIcon") then
          
          CreateEsp1(FigureModel, Color3.fromRGB(255, 102, 102), "", "")
          
          local FigureTorso = FigureModel:FindFirstChild("FigureRig"):FindFirstChild("Torso")
          
          if FigureModel and not FigureModel:FindFirstChild("RaelHubDestaque") and not FigureModel:FindFirstChild("RaelHubIcon") then
          
            CreateEsp1(FigureTorso, Color3.fromRGB(255, 102, 102), "104928133693808", "")
          
          end
        end
      end
    end
  end    
end

function RaelHubEspPDOORS.EspFigureDesativa()
  local FigurePasta = workspace.CurrentRooms
  
  for _, Figure in ipairs(FigurePasta:GetChildren()) do
    if Figure:IsA("Model") then
      if Figure:FindFirstChild("FigureSetup") then
        
        local FigureModel = Figure:FindFirstChild("FigureSetup")
        
        if FigureModel and FigureModel:FindFirstChild("RaelHubDestaque") and FigureModel:FindFirstChild("RaelHubIcon") then
          
          FigureModel:FindFirstChild("RaelHubDestaque"):Destroy()
          FigureModel:FindFirstChild("RaelHubIcon"):Destroy()
          
          local FigureTorso = FigureModel:FindFirstChild("FigureRig"):FindFirstChild("Torso")
          
          if FigureTorso and FigureTorso:FindFirstChild("RaelHubDestaque") and FigureTorso:FindFirstChild("RaelHubIcon") then
          
            FigureTorso:FindFirstChild("RaelHubDestaque"):Destroy()
            FigureTorso:FindFirstChild("RaelHubIcon"):Destroy()
          
          end
        end
      end
    end
  end    
end

return RaelHubEspPDOORS