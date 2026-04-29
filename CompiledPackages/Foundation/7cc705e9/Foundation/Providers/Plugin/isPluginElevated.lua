--[[
	Parts of our plugin path requires elevated APIs like the Panels component to be available.
	Currently, this is only available to internal plugins.
]]
local function isPluginElevated(plugin: Plugin): boolean
	local success = pcall(function()
		return plugin:GetPluginComponent("Panels")
	end)

	return success
end

return isPluginElevated
