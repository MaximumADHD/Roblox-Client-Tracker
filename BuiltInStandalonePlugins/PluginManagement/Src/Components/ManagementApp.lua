--[[
	The main entry point for the Plugin Management window
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local ManagementMainView = require(Plugin.Src.Components.ManagementMainView)
local NavigationContainer = require(Plugin.Src.Components.Navigation.NavigationContainer)

local ContextServices = require(Plugin.Packages.Framework.ContextServices)
local UILibraryWrapper = require(Plugin.Packages.Framework.ContextServices.UILibraryWrapper) -- remove with FFlagPluginManagementRemoveUILibrary
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

local Flags = require(Plugin.Packages.Framework.Util.Flags)
local FlagsList = Flags.new({
	FFlagEnablePluginPermissionsPage = {
		"EnablePluginPermissionsPage2",
		"StudioPermissionsServiceEnabled",
	},
})
local FFlagPluginManagementFixWhiteScreen = game:DefineFastFlag("PluginManagementFixWhiteScreen", false)
local FFlagPluginManagementRemoveUILibrary = game:GetFastFlag("PluginManagementRemoveUILibrary")

local ManagementApp = Roact.PureComponent:extend("ManagementApp")

function ManagementApp:init()
	self.state = {
		enabled = false,
		killDockWidget = false,
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

	if FFlagPluginManagementFixWhiteScreen then
		self.props.plugin.MultipleDocumentInterfaceInstance.DataModelSessionEnded:connect(function(dmSession)
			-- RobloxIDEDoc has a bug in which closes DockWidget that belong to standalone plugins
			-- which causes state inconsistencies that render empty windows.
			-- killDockWidget is a workaround that forces the plugin to recreate the widget the next time it is opened
			self:setState({
				enabled = false,
				killDockWidget = true,
			})
		end)
	end
end

function ManagementApp.getDerivedStateFromProps(nextProps, finalState)
	if FFlagPluginManagementFixWhiteScreen then
		if finalState.enabled then
			return {
				killDockWidget = false
			}
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

		MainWidget = (not self.state.killDockWidget) and Roact.createElement(DockWidget, {
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
				(not FFlagPluginManagementRemoveUILibrary) and UILibraryWrapper.new() or nil,
				ContextServices.Store.new(store),
				ContextServices.Mouse.new(plugin:GetMouse()),
			}, {
				MainView = FlagsList:get("FFlagEnablePluginPermissionsPage") and Roact.createElement(NavigationContainer)
					or Roact.createElement(ManagementMainView, { plugin = plugin }),
			}),
		}),
	})
end

return ManagementApp
