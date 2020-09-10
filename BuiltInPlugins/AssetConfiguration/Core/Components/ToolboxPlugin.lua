local StudioService = game:GetService("StudioService")

local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local Util = Plugin.Core.Util

local Constants = require(Plugin.Core.Util.Constants)
local Images = require(Plugin.Core.Util.Images)

local ExternalServicesWrapper = require(Plugin.Core.Components.ExternalServicesWrapper)
local DockWidget = require(Plugin.Core.Components.PluginWidget.DockWidget)
local Toolbox = require(Plugin.Core.Components.Toolbox)

local makeTheme = require(Util.makeTheme)

local ContextServices = require(Libs.Framework.ContextServices)
local UILibraryWrapper = ContextServices.UILibraryWrapper

local ToolboxPlugin = Roact.PureComponent:extend("ToolboxPlugin")

local Analytics = require(Util.Analytics.Analytics)

local FFlagEnableToolboxImpressionAnalytics = game:GetFastFlag("EnableToolboxImpressionAnalytics")
local FFlagBootstrapperTryAsset = game:GetFastFlag("BootstrapperTryAsset")

function ToolboxPlugin:init(props)
	self.theme = makeTheme()

	self.localization = props.localization

	self.plugin = props.plugin
	if not self.plugin then
		error("ToolboxPlugin component requires plugin to be passed as prop")
	end

	self.state = {
		enabled = true,

		-- Put the plugin gui in the state so that once its loaded, we
		-- trigger a rerender
		pluginGui = nil,
	}

	self.toolbar = self.plugin:CreateToolbar("luaToolboxToolbar")
	self.toolboxButton = self.toolbar:CreateButton("luaToolboxButton",
		"Insert items from the toolbox", Images.TOOLBOX_ICON)

	self.toolboxButton.ClickableWhenViewportHidden = true

	self.toolboxButton.Click:connect(function()
		-- Toggle dock window, update button
		self.dockWidget.Enabled = not self.dockWidget.Enabled
		if FFlagEnableToolboxImpressionAnalytics then
			if self.dockWidget.Enabled then
				Analytics.onPluginButtonClickOpen()
			else
				Analytics.onPluginButtonClickClose()
			end
		end
	end)

	self.onDockWidgetEnabledChanged = function(rbx)
		-- Update Button to match DockWidget
		self.toolboxButton:SetActive(self.dockWidget.Enabled)

		if FFlagEnableToolboxImpressionAnalytics and self.dockWidget.Enabled then
			Analytics.onToolboxDisplayed()
		end
	end

	self.onAncestryChanged = function(rbx, child, parent)
		if not parent and self.props.onPluginWillDestroy then
			self.props.onPluginWillDestroy()
		end
	end

	self.dockWidgetRefFunc = function(ref)
		self.dockWidget = ref
		-- Update Button on initial Load
		self.toolboxButton:SetActive(self.dockWidget.Enabled)
	end
end

function ToolboxPlugin:didMount()
	if FFlagBootstrapperTryAsset then
		-- Ensure that the Toolbox shows if starting Studio with an asset ID
		if StudioService:getStartupAssetId() then
			self.dockWidget.Enabled = true
		end
	end

	self.onDockWidgetEnabledChanged(self.dockWidget)

	-- Now we have the dock widget, trigger a rerender
	self:setState({
		pluginGui = self.dockWidget,
	})
end

function ToolboxPlugin:willUnmount()
	if self.disconnectLocalizationListener then
		self.disconnectLocalizationListener()
	end
end

function ToolboxPlugin:render()
	local props = self.props
	local state = self.state

	local plugin = props.plugin
	local theme = props.theme
	local networkInterface = props.networkInterface
	local localization = props.localization
	local backgrounds = props.backgrounds
	local suggestions = props.suggestions

	local tryOpenAssetConfig = props.tryOpenAssetConfig

	local enabled = state.enabled
	local pluginGui = state.pluginGui
	local initialWidth = pluginGui and pluginGui.AbsoluteSize.x or Constants.TOOLBOX_MIN_WIDTH

	local pluginGuiLoaded = pluginGui ~= nil

	-- Setting this value to false lets the DockWidget properly reflect
	-- the state when it comes up.
	local InitialEnabled = false

	local title = self.props.Localization:getText("General", "ToolboxToolbarName")

	return Roact.createElement(DockWidget, {
		plugin = plugin,

		Title = title,
		Name = "Toolbox",
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,

		InitialDockState = Enum.InitialDockState.Left,
		InitialEnabled = InitialEnabled,
		InitialEnabledShouldOverrideRestore = false,
		FloatingXSize = 0,
		FloatingYSize = 0,
		MinWidth = Constants.TOOLBOX_MIN_WIDTH,
		MinHeight = Constants.TOOLBOX_MIN_HEIGHT,

		Enabled = enabled,

		[Roact.Ref] = self.dockWidgetRefFunc,
		[Roact.Change.Enabled] = self.onDockWidgetEnabledChanged,
		[Roact.Event.AncestryChanged] = self.onAncestryChanged,
	}, {
		Toolbox = pluginGuiLoaded and ContextServices.provide({
			ContextServices.Focus.new(self.state.pluginGui),
			UILibraryWrapper.new(),
		}, {
			Roact.createElement(ExternalServicesWrapper, {
				plugin = plugin,
				pluginGui = pluginGui,
				theme = theme,
				networkInterface = networkInterface,
				localization = localization,
			}, {
				Roact.createElement(Toolbox, {
					initialWidth = initialWidth,
					backgrounds = backgrounds,
					suggestions = suggestions,
					tryOpenAssetConfig = tryOpenAssetConfig,
					pluginGui = pluginGui,
				})
			})
		})
	})
end

ContextServices.mapToProps(ToolboxPlugin, {
	Localization = ContextServices.Localization,
})

return ToolboxPlugin