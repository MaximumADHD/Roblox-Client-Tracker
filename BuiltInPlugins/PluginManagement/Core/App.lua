local Main = script.Parent.Parent
local Roact = require(Main.Libs.Roact)
local MainView = require(Main.Core.Components.MainView)
local Constants = require(Main.Core.Util.Constants)

local DevelopmentStringsTable = Main.Core.Resources.DevelopmentReferenceTable
local TranslationStringsTable = Main.Core.Resources.TranslationReferenceTable

local ContextServices = require(Main.Libs.Framework.ContextServices)
local Localization = ContextServices.Localization
local Store = ContextServices.Store
local Plugin = ContextServices.Plugin
local makeTheme = require(Main.Core.Resources.makeTheme)

local UILibraryWrapper = require(Main.Libs.Framework.ContextServices.UILibraryWrapper)

local StudioUI = require(Main.Libs.Framework.StudioUI)
local PluginButton = StudioUI.PluginButton
local PluginToolbar = StudioUI.PluginToolbar
local DockWidget = StudioUI.DockWidget

local App = Roact.PureComponent:extend("App")

function App:init(props)
	self.state = {
		enabled = false,
	}

	self.localization = Localization.new({
		stringResourceTable = DevelopmentStringsTable,
		translationResourceTable = TranslationStringsTable,
		pluginName = "PluginManagement",
	})

	self.theme = makeTheme()

	self.toggleState = function()
		self:setState({
			enabled = not self.state.enabled,
		})
	end

	self.onClose = function()
		self:setState({
			enabled = false,
		})
	end

	self.onAncestryChanged = function(rbx, child, parent)
		if not parent and self.props.onPluginWillDestroy then
			self.props.onPluginWillDestroy()
		end
	end
end

function App:renderButtons(toolbar)
	local enabled = self.state.enabled

	-- Because the button is using a connection in PluginManager,
	-- the tooltip is defined in Studio C++ code, so we don't
	-- have to define one here.
	return {
		Toggle = Roact.createElement(PluginButton, {
			Toolbar = toolbar,
			Active = enabled,
			Title = "luaManagePluginsButton",
			Icon = "rbxasset://textures/StudioToolbox/ToolboxIcon.png",
			OnClick = self.toggleState,
		}),
	}
end

function App:render()
	local props = self.props

	local plugin = props.plugin
	local store = props.store
	local enabled = self.state.enabled

	return ContextServices.provide({
		Plugin.new(plugin),
	}, {
		Toolbar = Roact.createElement(PluginToolbar, {
			Title = "luaManagePluginsToolbar",
			RenderButtons = function(toolbar)
				return self:renderButtons(toolbar)
			end,
		}),

		MainWidget = Roact.createElement(DockWidget, {
			Enabled = enabled,
			Title = self.localization:getText("Manage", "WindowTitle"),
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,

			InitialDockState = Enum.InitialDockState.Float,
			Size = Vector2.new(Constants.DOCKWIDGET_MIN_WIDTH, Constants.DOCKWIDGET_MIN_HEIGHT),
			MinSize = Vector2.new(Constants.DOCKWIDGET_MIN_WIDTH, Constants.DOCKWIDGET_MIN_HEIGHT),
			OnClose = self.onClose,
			ShouldRestore = false,
		}, {
			MainProvider = enabled and ContextServices.provide({
				self.localization,
				self.theme,
				UILibraryWrapper.new(),
				Store.new(store),
			}, {
				MainView = Roact.createElement(MainView, {plugin = plugin}),
			}),
		}),
	})
end

return App
