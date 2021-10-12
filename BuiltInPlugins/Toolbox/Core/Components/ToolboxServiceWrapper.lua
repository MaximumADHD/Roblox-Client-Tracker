--[[
	Wraps the Toolbox with ContextItems.
]]
local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)

local ContextServices = require(Libs.Framework).ContextServices
local SettingsContext = require(Plugin.Core.ContextServices.Settings)

local Util = Plugin.Core.Util
local makeTheme = require(Util.makeTheme)

local FFlagRemoveUILibraryFromToolbox = require(Plugin.Core.Util.getFFlagRemoveUILibraryFromToolbox)()

local ToolboxServiceWrapper = Roact.PureComponent:extend("ToolboxServiceWrapper")

function ToolboxServiceWrapper:render()
	local props = self.props

	local localization = props.localization
	local plugin = props.plugin
	local settings = props.settings
	local store = props.store
	local theme = props.theme
	local analytics = props.analytics

	local mouse = plugin:GetMouse()

	return ContextServices.provide({
		ContextServices.API.new(),
		ContextServices.Plugin.new(plugin),
		localization,
		makeTheme((not FFlagRemoveUILibraryFromToolbox) and theme:getUILibraryTheme() or nil),
		ContextServices.Store.new(store),
		SettingsContext.new(settings),
		ContextServices.Mouse.new(mouse),
		analytics,
		props.assetAnalytics,
	}, props[Roact.Children]
)
end

return ToolboxServiceWrapper
