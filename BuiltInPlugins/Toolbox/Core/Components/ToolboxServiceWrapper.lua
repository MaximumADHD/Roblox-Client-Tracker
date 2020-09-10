--[[
	Wraps the Toolbox with ContextItems.
]]
local FFlagToolboxNewAssetAnalytics = game:GetFastFlag("ToolboxNewAssetAnalytics")

local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)

local ContextServices = require(Libs.Framework.ContextServices)
local SettingsContext = require(Plugin.Core.ContextServices.Settings)

local Util = Plugin.Core.Util
local makeTheme = require(Util.makeTheme)

local ToolboxServiceWrapper = Roact.PureComponent:extend("ToolboxServiceWrapper")

local MOUSE = {
	Icon = "rbxasset://SystemCursors/Arrow",
}

function ToolboxServiceWrapper:render()
	local props = self.props

	local localization = props.localization
	local plugin = props.plugin
	local settings = props.settings
	local store = props.store
	local theme = props.theme

	return ContextServices.provide({
		ContextServices.API.new(),
		ContextServices.Plugin.new(plugin),
		localization,
		makeTheme(theme:getUILibraryTheme()),
		ContextServices.Store.new(store),
		SettingsContext.new(settings),
		ContextServices.Mouse.new(MOUSE),
		FFlagToolboxNewAssetAnalytics and props.assetAnalytics or nil
	}, props[Roact.Children]
)
end

return ToolboxServiceWrapper
