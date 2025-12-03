--!nonstrict
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local ServerUtil = require(RobloxGui.Modules.Server.ServerUtil)

local Install = function ()

	local playerConfig = game:GetService("StarterPlayer"):FindFirstChild("PlayerSettings")
	if (playerConfig == nil) then
			playerConfig = Instance.new("ModuleScript")
			playerConfig.Name = "PlayerSettings"
			if ServerUtil.getFFlagServerCoreScriptSourceCode() then
				playerConfig.Source = ServerUtil.getSourceForServerScript(script.Parent.DefaultServerPlayerModules:WaitForChild("PlayerSettings"))
			else
				playerConfig.Source = script.Parent.DefaultServerPlayerModules:WaitForChild("PlayerSettings").Source
			end
			playerConfig.Parent = game:GetService("StarterPlayer")
			playerConfig.Archivable = false
	end

end

return Install


