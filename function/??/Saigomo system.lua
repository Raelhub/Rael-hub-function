local RunService = game:GetService("RunService")
local heightOffset = 27


local function teleportPlayerToBoss(player, bossPart)
    local character = player.Character
    if character then
        local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
        if humanoidRootPart and bossPart then
            local targetPosition = bossPart.Position + Vector3.new(0, heightOffset, 0)
            humanoidRootPart.CFrame = CFrame.new(targetPosition)
        end
    end
end

local function onHeartbeat()
  local Players = game:GetService("Players")
  local Workspace = game:GetService("Workspace")
  
  local bossPartPath = Workspace.BossBattle.Saigomo:WaitForChild("HumanoidRootPart")
  local spiderHitbox = Workspace.BossBattle.Saigomo:WaitForChild("SpiderHitbox")
  
  spiderHitbox.Size = Vector3.new(150, 21, 21)
  
  if isTeleportEnabled and bossPartPath then
    local player = Players.LocalPlayer
    if player then
      teleportPlayerToBoss(player, bossPartPath)
    end
  end

end