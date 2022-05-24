local StudioService = game:GetService("StudioService")
local MemStorageService = game:GetService("MemStorageService")

local Plugin = script.Parent.Parent.Parent

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local RoactRodux = require(Packages.RoactRodux)
local Util = Plugin.Core.Util

local SharedPluginConstants = require(Plugin.SharedPluginConstants)

local Constants = require(Plugin.Core.Util.Constants)
local Images = require(Plugin.Core.Util.Images)

local ExternalServicesWrapper = require(Plugin.Core.Components.ExternalServicesWrapper)
local DockWidget = require(Plugin.Core.Components.PluginWidget.DockWidget)
local Toolbox = require(Plugin.Core.Components.Toolbox)

local StopAllSounds = require(Plugin.Core.Actions.StopAllSounds)

local makeTheme = require(Util.makeTheme)

local ContextServices = require(Packages.Framework).ContextServices
local withContext = ContextServices.withContext
local FrameworkUtil = require(Packages.Framework).Util
local NavigationContext = require(Plugin.Core.ContextServices.NavigationContext)

local Analytics = require(Util.Analytics.Analytics)

local ToolboxPlugin = Roact.PureComponent:extend("ToolboxPlugin")

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

	self.toolbar = props.pluginLoaderContext.toolbar
	self.toolboxButton = props.pluginLoaderContext.mainButton

	props.pluginLoaderContext.mainButtonClickedSignal:Connect(function()
		-- Toggle dock window, update button
		self.dockWidget.Enabled = not self.dockWidget.Enabled
		if self.dockWidget.Enabled then
			Analytics.onPluginButtonClickOpen()
		else
			Analytics.onPluginButtonClickClose()
		end
	end)

	self.onDockWidgetEnabledChanged = function(rbx)
		if self.dockWidget.Enabled == false then
			self.props.stopAllSounds()
		end
		-- Update Button to match DockWidget
		self.toolboxButton:SetActive(self.dockWidget.Enabled)

		if self.dockWidget.Enabled then
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

	local lastSize = nil
	self.onDockWidgetInteraction = function()
		local size = self.dockWidget.AbsoluteSize
		-- If the size has changed, fire this Analytic
		if lastSize == nil or lastSize.X ~= size.X or lastSize.Y ~= size.Y then
			Analytics.onToolboxWidgetInteraction(size)
			lastSize = size
		end
	end
end

function ToolboxPlugin:didMount()
	-- Ensure that the Toolbox shows if starting Studio with an asset ID
	local startupAsset = StudioService:getStartupAssetId()
	if startupAsset and #startupAsset > 0 then
		self.dockWidget.Enabled = true
	end

	self.onDockWidgetEnabledChanged(self.dockWidget)

	self._dockWidgetInteractionConnection = self.dockWidget.WindowFocused:Connect(self.onDockWidgetInteraction)

	-- Now we have the dock widget, trigger a rerender
	self:setState({
		pluginGui = self.dockWidget,
	})

	self._showPluginsConnection =
		self.props.pluginLoaderContext.signals["MemStorageService." .. SharedPluginConstants.SHOW_TOOLBOX_PLUGINS_EVENT]:Connect(
			function()
				self.dockWidget.Enabled = true
				self.dockWidget:RequestRaise()
			end
		)
end

function ToolboxPlugin:willUnmount()
	if self.disconnectLocalizationListener then
		self.disconnectLocalizationListener()
	end

	if self._showPluginsConnection then
		self._showPluginsConnection:Disconnect()
		self._showPluginsConnection = nil
	end

	if self._dockWidgetInteractionConnection then
		self._dockWidgetInteractionConnection:Disconnect()
		self._dockWidgetInteractionConnection = nil
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

	local initialEnabled = true

	local title = self.props.Localization:getText("General", "ToolboxToolbarName")

	return Roact.createElement(DockWidget, {
		Title = title,
		Name = "Toolbox",
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		Widget = props.pluginLoaderContext.mainDockWidget,
		MinWidth = Constants.TOOLBOX_MIN_WIDTH,
		MinHeight = Constants.TOOLBOX_MIN_HEIGHT,

		[Roact.Ref] = self.dockWidgetRefFunc,
		[Roact.Change.Enabled] = self.onDockWidgetEnabledChanged,
		[Roact.Event.AncestryChanged] = self.onAncestryChanged,
	}, {
		Toolbox = pluginGuiLoaded and ContextServices.provide({
			ContextServices.Focus.new(self.state.pluginGui),
			NavigationContext.new(), -- create a no-op version of navigation
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
					pluginLoaderContext = props.pluginLoaderContext,
					onMouseEnter = self.onDockWidgetInteraction,
				}),
			}),
		}),
	})
end

ToolboxPlugin = withContext({
	Localization = ContextServices.Localization,
})(ToolboxPlugin)

local function mapDispatchToProps(dispatch)
	return {
		stopAllSounds = function()
			dispatch(StopAllSounds())
		end,
	}
end

return RoactRodux.connect(nil, mapDispatchToProps)(ToolboxPlugin)
