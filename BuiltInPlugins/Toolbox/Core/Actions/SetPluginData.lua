--[[
	This action will be triggered from the asset preview for plugins.
	Then we will using versionId retrived from this endpoint to install latest plugin if the user
	clicks the install button.
]]

local Plugin = script.Parent.Parent.Parent

local Packages = Plugin.Packages
local Util = require(Packages.Framework).Util
local Action = Util.Action

return Action(script.Name, function(pluginData)
	assert(type(pluginData) == "table", "pluginData must be a table")
	assert(next(pluginData) ~= nil, "pluginData can't be an empty table")

	return {
		pluginData = pluginData,
	}
end)
