local Foundation = script:FindFirstAncestor("Foundation")
local CoreGui = require(Foundation.Utility.Wrappers).Services.CoreGui

local success, _ = pcall(function()
	local _ = CoreGui.Name
end)

local function isPluginSecurity(): boolean
	return success
end

return isPluginSecurity
