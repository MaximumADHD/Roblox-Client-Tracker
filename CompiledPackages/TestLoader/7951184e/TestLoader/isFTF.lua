--!strict
local plugin = script:FindFirstAncestorWhichIsA("Plugin") :: Plugin

local isFTF, _ = pcall(function()
	return plugin:GetPluginComponent("FTFUtil")
end)

return function()
	return isFTF
end
