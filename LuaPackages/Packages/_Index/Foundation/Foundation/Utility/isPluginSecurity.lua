local Foundation = script:FindFirstAncestor("Foundation")
local Flags = require(Foundation.Utility.Flags)
local Wrappers = require(Foundation.Utility.Wrappers)

local function isPluginSecurity(): boolean
	local coreGui = Wrappers.Services.CoreGui

	if Flags.FoundationPopoverPluginSecurityGate then
		local childAccessSuccess, _ = pcall(function()
			local _ = coreGui:GetChildren()
		end)

		return childAccessSuccess
	end

	local nameAccessSuccess, _ = pcall(function()
		local _ = coreGui.Name
	end)

	return nameAccessSuccess
end

return isPluginSecurity
