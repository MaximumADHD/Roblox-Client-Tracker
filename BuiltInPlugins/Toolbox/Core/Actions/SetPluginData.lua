--[[
	This action will be triggered from the asset preview for plugins.
	Then we will using versionId retrived from this endpoint to install latest plugin if the user
	clicks the install button.
]]

local Plugin = script.Parent.Parent.Parent

local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
local Libs
if FFlagToolboxDeduplicatePackages then
	Libs = Plugin.Packages
else
	Libs = Plugin.Libs
end
local Util = require(Libs.Framework).Util
local Action = Util.Action

return Action(script.Name, function(pluginData)
	assert(type(pluginData) == "table", "pluginData must be a table")
	assert(next(pluginData) ~= nil, "pluginData can't be an empty table")

	return {
		pluginData = pluginData,
	}
end)
