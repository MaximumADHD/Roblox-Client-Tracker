--[[
	The main entry point for the Plugin Management window

]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local ManagementMainView = require(Plugin.Src.Components.ManagementMainView)

local ContextServices = require(Plugin.Packages.Framework.ContextServices)
local UILibraryWrapper = require(Plugin.Packages.Framework.ContextServices.UILibraryWrapper)
local makeTheme = require(Plugin.Src.Resources.makeTheme)
local PluginAPI2 = require(Plugin.Src.ContextServices.PluginAPI2)

local StudioUI = require(Plugin.Packages.Framework.StudioUI)
local PluginButton = StudioUI.PluginButton
local PluginToolbar = StudioUI.PluginToolbar
local DockWidget = StudioUI.DockWidget

local DevelopmentStringsTable = Plugin.Src.Resources.TranslationDevelopmentTable
local TranslationStringsTable = Plugin.Src.Resources.TranslationReferenceTable


local DOCKWIDGET_MIN_WIDTH = 600
local DOCKWIDGET_MIN_HEIGHT = 180
local DOCKWIDGET_INITIAL_WIDTH = 600
local DOCKWIDGET_INITIAL_HEIGHT = 560


local ManagementApp = Roact.PureComponent:extend("ManagementApp")

function ManagementApp:init()
	self.state = {
		enabled = false,
	}

	-- TODO : Unify existing PluginInstallation code with Context2 services so these globals
	-- may all be accessed through the existing getPluginGlobals() function
	self.localization = ContextServices.Localization.new({
		stringResourceTable = DevelopmentStringsTable,
		translationResourceTable = TranslationStringsTable,
		pluginName = "PluginInstallation",
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

	self.onAncestryChanged = function(_, _, parent)
		if not parent and self.props.onPluginWillDestroy then
			self.props.onPluginWillDestroy()
		end
	end
end

function ManagementApp:renderButtons(toolbar)
	local enabled = self.state.enabled

	-- Because the button is using a connection in PluginManager,
	-- the tooltip and icon are defined in Studio C++ code, so we don't
	-- have to define one here.
	return {
		Toggle = Roact.createElement(PluginButton, {
			Toolbar = toolbar,
			Active = enabled,
			Title = "luaManagePluginsButton",
			OnClick = self.toggleState,
		}),
	}
end

function ManagementApp:render()
	local props = self.props

	local plugin = props.plugin
	local store = props.store
	local api = props.api
	local enabled = self.state.enabled

	return ContextServices.provide({
		ContextServices.Plugin.new(plugin),
		PluginAPI2.new(api),
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
			Size = Vector2.new(DOCKWIDGET_INITIAL_WIDTH, DOCKWIDGET_INITIAL_HEIGHT),
			MinSize = Vector2.new(DOCKWIDGET_MIN_WIDTH, DOCKWIDGET_MIN_HEIGHT),
			OnClose = self.onClose,
			ShouldRestore = false,
		}, {
			MainProvider = enabled and ContextServices.provide({
				self.localization,
				self.theme,
				UILibraryWrapper.new(),
				ContextServices.Store.new(store),
			}, {
				MainView = Roact.createElement(ManagementMainView, { plugin = plugin }),
			}),
		}),
	})
end

return ManagementApp
