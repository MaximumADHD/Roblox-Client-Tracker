local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local SharedFlags = Framework.SharedFlags
local FFlagDevFrameworkMigrateToggleButton = SharedFlags.getFFlagDevFrameworkMigrateToggleButton()

if FFlagDevFrameworkMigrateToggleButton then
	return nil
end

local MockStudioPlugin = {}
MockStudioPlugin.__index = MockStudioPlugin

function MockStudioPlugin.new(setting)
	local plugin = {}
	setmetatable(plugin, MockStudioPlugin)
	plugin.setting = setting
	return plugin
end

function MockStudioPlugin:GetSetting(_)
	return self.setting
end

function MockStudioPlugin:SetSetting(_, setting)
	self.setting = setting
end

return MockStudioPlugin