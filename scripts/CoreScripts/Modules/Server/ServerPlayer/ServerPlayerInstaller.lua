
local Install = function ()

	local playerConfig = game:GetService("StarterPlayer"):FindFirstChild("PlayerSettings")
	if (playerConfig == nil) then
			playerConfig = Instance.new("ModuleScript")
			playerConfig.Name = "PlayerSettings"
			playerConfig.Source = script.Parent.DefaultServerPlayerModules:WaitForChild("PlayerSettings").Source
			playerConfig.Parent = game:GetService("StarterPlayer")
			playerConfig.Archivable = false
	end

end

return Install


