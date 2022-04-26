--[[
	A customizable wrapper for tests that supplies all the required providers for component testing
]]
local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local UILibrary = require(Plugin.Packages.UILibrary)
local ServiceWrapper = require(Plugin.Plugin.Components.ServiceWrapper)
local MockPlugin = require(Plugin.Plugin.TestHelpers.MockPlugin)
local Localization = UILibrary.Studio.Localization

local MockServiceWrapper = Roact.Component:extend("MockServiceWrapper")

-- props.localization : (optional, UILibrary.Localization)
-- props.plugin : (optional, plugin)
-- props.storeState : (optional, table) a default state for the MainReducer
-- props.theme : (optional, Resources.PluginTheme)
function MockServiceWrapper:render()
	local localization = self.props.localization
	if not localization then
		localization = Localization.mock()
	end

	local pluginInstance = self.props.plugin
	if not pluginInstance then
		pluginInstance = MockPlugin.new()
	end

	return Roact.createElement(ServiceWrapper, {
		localization = localization,
		plugin = pluginInstance,
	}, self.props[Roact.Children])
end

return MockServiceWrapper