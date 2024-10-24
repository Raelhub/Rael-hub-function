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

      if Porta then
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
            CreateEsp1(Alavanca, Color3.fromRGB(3, 133, 222), "", "Lever")
            
            local Centro = Alavanca:FindFirstChild("Main")
            
            if not Centro:FindFirstChild("RaelHubDestaque") and not Centro:FindFirstChild("RaelHubIcon") then
              CreateEsp1(Centro, Color3.fromRGB(3, 133, 222), "79484345415357", "Lever")
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
        CreateEsp1(KeyObtain, Color3.fromRGB(25, 233, 165), "", "")
        
        local KeyKey = KeyObtain.Hitbox and KeyObtain.Hitbox:FindFirstChild("Key")
        if KeyKey and not KeyKey:FindFirstChild("RaelHubDestaque") and not KeyKey:FindFirstChild("RaelHubIcon") then
            CreateEsp1(KeyKey, Color3.fromRGB(25, 233, 165), "117047144730308", "")
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
                CreateEsp1(livro, Color3.fromRGB(222, 3, 123), "112846382225194", "")
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

function RaelHubEspPDOORS.EspItensAtivado()
  local MainPasta = workspace.CurrentRooms
  local DropsPastas = workspace.Drops
  for _, Item in ipairs(DropsPastas:GetChildren()) do
    if Item:IsA("Model") and Item.Name == "Lockpick" then
      if not Item:FindFirstChild("RaelHubDestaque") and not Item:FindFirstChild("RaelHubIcon") then
        CreateEsp1(Item, Color3.fromRGB(0, 255, 255), "91526397863419", "")
      end
      
    elseif Item:IsA("Model") and Item.Name == "Candle" then
      if not Item:FindFirstChild("RaelHubDestaque") and not Item:FindFirstChild("RaelHubIcon") then
        CreateEsp1(Item, Color3.fromRGB(0, 255, 255), "99106958694614", "")
      end
    end
  end

  for _, Sala in ipairs(MainPasta:GetChildren()) do
    if Sala:IsA("Model") then
      local PastaAssest = Sala:FindFirstChild("Assets")
      
      if PastaAssest then
        for _, Object in ipairs(PastaAssest: GetDescendants()) do
          
          if Object.Name == "Candle" then
            if not Object:FindFirstChild("RaelHubDestaque") and not Object:FindFirstChild("RaelHubIcon") then
              CreateEsp1(Object, Color3.fromRGB(0, 255, 255), "99106958694614", "")
            end
          elseif Object.Name == "Lockpick" then
            if not Object:FindFirstChild("RaelHubDestaque") and not Object:FindFirstChild("RaelHubIcon") then
              CreateEsp1(Object, Color3.fromRGB(0, 255, 255), "91526397863419", "")
            end
          elseif Object.Name == "Bandage" then
            if not Object:FindFirstChild("RaelHubDestaque") and not Object:FindFirstChild("RaelHubIcon") then
              CreateEsp1(Object, Color3.fromRGB(0, 255, 255), "105204077319304", "")
            end
          elseif Object.Name == "Battery" then
            if not Object:FindFirstChild("RaelHubDestaque") and not Object:FindFirstChild("RaelHubIcon") then
                CreateEsp1(Object, Color3.fromRGB(0, 255, 255), "75525877405108", "")
            end
          elseif Object.Name == "Lighter" and Object:IsA("Model") then
            if not Object:FindFirstChild("RaelHubDestaque") and not Object:FindFirstChild("RaelHubIcon") then
                CreateEsp1(Object, Color3.fromRGB(0, 255, 255), "76220389746171", "")
            end
          end
        end
      end
    end
  end
end

function RaelHubEspPDOORS.EspItensDesativado()
  local MainPasta = workspace.CurrentRooms
  local DropsPastas = workspace.Drops

  for _, Item in ipairs(DropsPastas:GetChildren()) do
    if Item:IsA("Model") and Item.Name == "Lockpick" then
      if Item:FindFirstChild("RaelHubDestaque") and Item:FindFirstChild("RaelHubIcon") then
        if Item and Item:FindFirstChild("RaelHubDestaque") and RushPart:FindFirstChild("RaelHubIcon") then
          Item:FindFirstChild("RaelHubDestaque"):Destroy()
          Item:FindFirstChild("RaelHubIcon"):Destroy()
        end
      end
    elseif Item:IsA("Model") and Item.Name == "Candle" then
      if Item:FindFirstChild("RaelHubDestaque") and Item:FindFirstChild("RaelHubIcon") then
        if Item and Item:FindFirstChild("RaelHubDestaque") and Item:FindFirstChild("RaelHubIcon") then
          Item:FindFirstChild("RaelHubDestaque"):Destroy()
          Item:FindFirstChild("RaelHubIcon"):Destroy()
        end
      end
    end
  end
  for _, Sala in ipairs(MainPasta:GetChildren()) do
    if Sala:IsA("Model") then
      local PastaAssest = Sala:FindFirstChild("Assets")
      
      if PastaAssest then
        for _, Object in ipairs(PastaAssest: GetDescendants()) do
          
          if Object.Name == "Candle" then
            if Object and Object:FindFirstChild("RaelHubDestaque") and Object:FindFirstChild("RaelHubIcon") then
              Object:FindFirstChild("RaelHubDestaque"):Destroy()
              Object:FindFirstChild("RaelHubIcon"):Destroy()
            end
          elseif Object.Name == "Lockpick" then
            if Object and Object:FindFirstChild("RaelHubDestaque") and Object:FindFirstChild("RaelHubIcon") then
              Object:FindFirstChild("RaelHubDestaque"):Destroy()
              Object:FindFirstChild("RaelHubIcon"):Destroy()
            end
          elseif Object.Name == "Bandage" then
            if Object and Object:FindFirstChild("RaelHubDestaque") and Object:FindFirstChild("RaelHubIcon") then
              Object:FindFirstChild("RaelHubDestaque"):Destroy()
              Object:FindFirstChild("RaelHubIcon"):Destroy()
            end
          elseif Object.Name == "Battery" then
            if Object and Object:FindFirstChild("RaelHubDestaque") and Object:FindFirstChild("RaelHubIcon") then
              Object:FindFirstChild("RaelHubDestaque"):Destroy()
              Object:FindFirstChild("RaelHubIcon"):Destroy()
            end
          elseif Object.Name == "Lighter" then
            if Object and Object:FindFirstChild("RaelHubDestaque") and Object:FindFirstChild("RaelHubIcon") then
              Object:FindFirstChild("RaelHubDestaque"):Destroy()
              Object:FindFirstChild("RaelHubIcon"):Destroy()
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
    if Figure:IsA("Model") and (Figure.Name == "50" or Figure.Name == "100") then
      local FigureSetup = Figure:WaitForChild("FigureSetup")
      local FigureModel = FigureSetup:WaitForChild("FigureRig")
      
      if FigureModel and not FigureModel:FindFirstChild("RaelHubDestaque") and not FigureModel:FindFirstChild("RaelHubIcon") then
        
        CreateEsp1(FigureModel, Color3.fromRGB(255, 102, 102), "105012060760767", "")
         
      end
    end
  end    
end

function RaelHubEspPDOORS.EspFigureDesativa()
  local FigurePasta = workspace.CurrentRooms

  for _, Figure in ipairs(FigurePasta:GetChildren()) do
    if Figure:IsA("Model") and (Figure.Name == "50" or Figure.Name == "100") then
      local FigureSetup = Figure:WaitForChild("FigureSetup")
      local FigureModel = FigureSetup:WaitForChild("FigureRig")
            
      if FigureModel and FigureModel:FindFirstChild("RaelHubDestaque") and FigureModel:FindFirstChild("RaelHubIcon") then
        
        FigureModel:FindFirstChild("RaelHubDestaque"):Destroy()
        FigureModel:FindFirstChild("RaelHubIcon"):Destroy()
        
      end
    end
  end    
end

function RaelHubEspPDOORS.EspBreakAtivado()
  
  local CurrentRoomPasta = workspace.CurrentRooms
  
  for _, Sala in ipairs(CurrentRoomPasta:GetChildren()) do
    
    if Sala:IsA("Model") then
      
      for _, Break in ipairs(Sala:GetChildren()) do
        
        if Break.Name == "LiveBreakerPolePickup" then
          
          if not Break:FindFirstChild("RaelHubDestaque") and not Break:FindFirstChild("RaelHubIcon") then
        
            CreateEsp1(Break, Color3.fromRGB(104, 104, 107), "79769072112250", "")
         
          end
          
        end
        
      end
      
    end
    
  end

end

function RaelHubEspPDOORS.EspBreakDesativado()
  
  local CurrentRoomPasta = workspace.CurrentRooms
  
  for _, Sala in ipairs(CurrentRoomPasta:GetChildren()) do
    
    if Sala:IsA("Model") then
      
      for _, Break in ipairs(Sala:GetChildren()) do
        
        if Break.Name == "LiveBreakerPolePickup" then
          
          if Break:FindFirstChild("RaelHubDestaque") and Break:FindFirstChild("RaelHubIcon") then
        
            Break:FindFirstChild("RaelHubDestaque"):Destroy()
            Break:FindFirstChild("RaelHubIcon"):Destroy()
         
          end
          
        end
        
      end
      
    end
    
  end

end

function RaelHubEspPDOORS.EspArmarioAtivado()
  
  local CurrentRoomPasta = workspace.CurrentRooms
  
  for _, Sala in ipairs(CurrentRoomPasta:GetChildren()) do
    
    if Sala:IsA("Model") then
      
      for _, Armario in ipairs(Sala:GetChildren()) do
        
        if Armario.Name == "Toolshed" then
          
          if not Armario:FindFirstChild("RaelHubDestaque") and not Armario:FindFirstChild("RaelHubIcon") then
        
            CreateEsp1(Armario, Color3.fromRGB(233, 175, 25), "122840673622286", "")
         
          end
          
        end
        
      end
      
      local PastaAssest = Sala:FindFirstChild("Assets")
      
      if PastaAssest then
        
        for _, Armario in ipairs(PastaAssest:GetChildren()) do
          
          if Armario.Name == "Wardrobe" then
            
            if not Armario:FindFirstChild("RaelHubDestaque") and not Armario:FindFirstChild("RaelHubIcon") then
        
              CreateEsp1(Armario, Color3.fromRGB(233, 175, 25), "122840673622286", "")
         
            end
            
          end
          
        end
        
      end
      
      
    end
    
  end
  
end

function RaelHubEspPDOORS.EspArmarioDesativado()
  
  local CurrentRoomPasta = workspace.CurrentRooms
  
  for _, Sala in ipairs(CurrentRoomPasta:GetChildren()) do
    
    if Sala:IsA("Model") then
      
      for _, Armario in ipairs(Sala:GetChildren()) do
        
        if Armario.Name == "Toolshed" then
          
          if Armario:FindFirstChild("RaelHubDestaque") and Armario:FindFirstChild("RaelHubIcon") then
        
            Armario:FindFirstChild("RaelHubDestaque"):Destroy()
            Armario:FindFirstChild("RaelHubIcon"):Destroy()
         
          end
          
        end
        
      end
      
      local PastaAssest = Sala:FindFirstChild("Assets")
      
      if PastaAssest then
        
        for _, Armario in ipairs(PastaAssest:GetChildren()) do
          
          if Armario.Name == "Wardrobe" then
            
            if Armario:FindFirstChild("RaelHubDestaque") and Armario:FindFirstChild("RaelHubIcon") then
        
              Armario:FindFirstChild("RaelHubDestaque"):Destroy()
              Armario:FindFirstChild("RaelHubIcon"):Destroy()
         
            end
            
          end
          
        end
        
      end
      
      
    end
    
  end
  
end

function RaelHubEspPDOORS.EspCoinAtivado()
  local MainPasta = workspace.CurrentRooms
  for _, Sala in ipairs(MainPasta:GetChildren()) do
    if Sala:IsA("Model") then
      local PastaAssest = Sala:FindFirstChild("Assets")
      if PastaAssest then
        for _, Moeda in ipairs(PastaAssest:GetDescendants()) do
          if Moeda.Name == "GoldPile" then
            
            if not Moeda:FindFirstChild("RaelHubDestaque") and not Moeda:FindFirstChild("RaelHubIcon") then
              CreateEsp1(Moeda, Color3.fromRGB(255, 234, 0), "125713439145812", "")
            end
          end
        end
      end
    end
  end
end

function RaelHubEspPDOORS.EspCoinDesativado()
  local MainPasta = workspace.CurrentRooms
  for _, Sala in ipairs(MainPasta:GetChildren()) do
    if Sala:IsA("Model") then
      local PastaAssest = Sala:FindFirstChild("Assets")
      if PastaAssest then
        for _, Moeda in ipairs(PastaAssest:GetDescendants()) do
          if Moeda.Name == "GoldPile" then
            
            if Moeda:FindFirstChild("RaelHubDestaque") and Moeda:FindFirstChild("RaelHubIcon") then
        
              Moeda:FindFirstChild("RaelHubDestaque"):Destroy()
              Moeda:FindFirstChild("RaelHubIcon"):Destroy()
         
            end
          end
        end
      end
    end
  end
end

return RaelHubEspPDOORS