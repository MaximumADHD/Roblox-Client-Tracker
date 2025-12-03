--!nonstrict
--- This script is used when a Player is in the game before we have a chance 
--- to put the ChatScripts in StarterPlayerScripts. This script looks for 
--- the ChatScripts in a users PlayerScripts and clones them from 
--- StarterPlayerScripts if they do not already exist. 

local Players = game:GetService("Players")
local StarterPlayer = game:GetService("StarterPlayer")

local function waitForChildOfClass(parent, className)
	local child = parent:FindFirstChildOfClass(className)
	while not child or child.ClassName ~= className do
		child = parent.ChildAdded:Wait()
	end
	return child
end

local LocalPlayer = Players.LocalPlayer
local PlayerScripts = waitForChildOfClass(LocalPlayer, "PlayerScripts")
local StarterPlayerScripts = waitForChildOfClass(StarterPlayer, "StarterPlayerScripts")

function VerifyScriptExistence()
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

VerifyScriptExistence()
script:Destroy()
