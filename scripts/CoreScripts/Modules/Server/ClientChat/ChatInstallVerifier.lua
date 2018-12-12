--- This script is used when a Player is in the game before we have a chance 
--- to put the ChatScripts in StarterPlayerScripts. This script looks for 
--- the ChatScripts in a users PlayerScripts and clones them from 
--- StarterPlayerScripts if they do not already exist. 

local PlayersService = game:GetService("Players")
local LocalPlayer = PlayersService.LocalPlayer
local PlayerScripts = LocalPlayer:WaitForChild("PlayerScripts")
local StarterPlayerScripts = game:GetService("StarterPlayer"):WaitForChild("StarterPlayerScripts")

function VerifyScriptExistance()
  local scriptToVerifyValue = script:WaitForChild("ScriptToVerify")
  local scriptToVerifyName = scriptToVerifyValue.Value
  if not PlayerScripts:FindFirstChild(scriptToVerifyName) then
    local scriptToClone = StarterPlayerScripts:FindFirstChild(scriptToVerifyName)
    if scriptToClone then
      local lastArchivable = scriptToClone.Archivable
      scriptToClone.Archivable = true
      scriptToClone:Clone().Parent = PlayerScripts
      scriptToClone.Archivable = lastArchivable
    end
  end
end

VerifyScriptExistance()
script:Destroy()
