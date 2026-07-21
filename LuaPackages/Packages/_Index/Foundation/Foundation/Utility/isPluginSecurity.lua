local Foundation = script:FindFirstAncestor("Foundation")
local Wrappers = require(Foundation.Utility.Wrappers)

local function isPluginSecurity(): boolean
	local coreGui = Wrappers.Services.CoreGui
	local childAccessSuccess, _ = pcall(function()
		local _ = coreGui:GetChildren()
	end)

	return childAccessSuccess
end

return isPluginSecurity
