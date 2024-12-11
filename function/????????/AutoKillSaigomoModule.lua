local SaigomoModule = {}
local RunService = game:GetService("RunService")

function SaigomoModule.AutoKillSimple(value)
  if getgenv().RaelHubAutoKillSaigomoSimpleRunService then
    getgenv().RaelHubAutoKillSaigomoSimpleRunService:Disconnect()
    getgenv().RaelHubAutoKillSaigomoSimpleRunService = nil
  end

  getgenv().RaelHubAutoKillSaigomoSimpleValue = value

  local function TpSaigomoAndIncreaseHitBox()
    local player = game.Players.LocalPlayer
    local character = player.Character
    if not character then return end
    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
    if not humanoidRootPart then return end
    local saigomoHeightOffset = 27
    local bossbattle = workspace:FindFirstChild("BossBattle")

    if bossbattle then
      local saigomo = bossbattle:FindFirstChild("Saigomo")
      if saigomo then
        local saigomoRootPart = saigomo:FindFirstChild("HumanoidRootPart")
        local spiderHitbox = saigomo:FindFirstChild("SpiderHitbox")

        if saigomoRootPart then
          local targetPosition = saigomoRootPart.Position + Vector3.new(0, saigomoHeightOffset, 0)
          humanoidRootPart.CFrame = CFrame.new(targetPosition)
        end

        if spiderHitbox then
          spiderHitbox.Size = Vector3.new(150, 21, 21)
        end
      end
    end
  end

  if getgenv().RaelHubAutoKillSaigomoSimpleValue then
    getgenv().RaelHubAutoKillSaigomoSimpleRunService = RunService.Heartbeat:Connect(function()
      TpSaigomoAndIncreaseHitBox()
    end)
  end
end

function SaigomoModule.AutoKillAdvanced(value)
  
  
  
end

return SaigomoModule