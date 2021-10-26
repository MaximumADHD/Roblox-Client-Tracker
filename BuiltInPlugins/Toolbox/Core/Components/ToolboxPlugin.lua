local ABTestService = game:GetService("ABTestService")
local StudioService = game:GetService("StudioService")
local MemStorageService = game:GetService("MemStorageService")

local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local RoactRodux = require(Libs.RoactRodux)
local Util = Plugin.Core.Util

local SharedPluginConstants = require(Plugin.SharedPluginConstants)

local Constants = require(Plugin.Core.Util.Constants)
local Images = require(Plugin.Core.Util.Images)

local ExternalServicesWrapper = require(Plugin.Core.Components.ExternalServicesWrapper)
local DockWidget = require(Plugin.Core.Components.PluginWidget.DockWidget)
local Toolbox = require(Plugin.Core.Components.Toolbox)

local StopAllSounds = require(Plugin.Core.Actions.StopAllSounds)

local makeTheme = require(Util.makeTheme)

local ContextServices = require(Libs.Framework).ContextServices
local withContext = ContextServices.withContext
local UILibraryWrapper = ContextServices.UILibraryWrapper
local FrameworkUtil = require(Libs.Framework).Util
local getTestVariation = FrameworkUtil.getTestVariation

local Analytics = require(Util.Analytics.Analytics)

local FFlagToolboxWithContext = game:GetFastFlag("ToolboxWithContext")
local FFlagStudioShowHideABTestV2 = game:GetFastFlag("StudioShowHideABTestV2")
local FFlagToolboxStopAudioFromPlayingOnCloseAndCategorySwitch = game:GetFastFlag("ToolboxStopAudioFromPlayingOnCloseAndCategorySwitch")
local FFlagPluginDockWidgetRaiseFromLua = game:GetFastFlag("PluginDockWidgetRaiseFromLua")
local FFlagRemoveUILibraryFromToolbox = require(Plugin.Core.Util.getFFlagRemoveUILibraryFromToolbox)()

local ShowHideABTestName = "AllUsers.RobloxStudio.ShowHideToolbox"
local ABTEST_SHOWHIDEV2_NAME = "AllUsers.RobloxStudio.ShowHideV2"

local function shouldSeeTestBehavior(abTestName)
	-- REMOVE THIS WITH FFlagShowHideABTest

	-- helper function for showing a behavior so long as the result is not "Control"
	-- further specificity can be used if the exact variation is required
	local variation = ABTestService:GetVariant(abTestName)
	local shouldShowBehavior = variation ~= "Control"
	return shouldShowBehavior, variation
end


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

	self.toolbar = self.plugin:CreateToolbar("luaToolboxToolbar")
	self.toolboxButton = self.toolbar:CreateButton("luaToolboxButton",
		"Insert items from the toolbox", Images.TOOLBOX_ICON)

	self.toolboxButton.ClickableWhenViewportHidden = true

	self.toolboxButton.Click:connect(function()
		-- Toggle dock window, update button
		self.dockWidget.Enabled = not self.dockWidget.Enabled
		if self.dockWidget.Enabled then
			Analytics.onPluginButtonClickOpen()
		else
			Analytics.onPluginButtonClickClose()
		end
	end)

	self.onDockWidgetEnabledChanged = function(rbx)
		if FFlagToolboxStopAudioFromPlayingOnCloseAndCategorySwitch and self.dockWidget.Enabled == false then
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
end

function ToolboxPlugin:didMount()
	-- Ensure that the Toolbox shows if starting Studio with an asset ID
	local startupAsset = StudioService:getStartupAssetId()
	if startupAsset and #startupAsset > 0 then
		self.dockWidget.Enabled = true
	end

	self.onDockWidgetEnabledChanged(self.dockWidget)

	-- Now we have the dock widget, trigger a rerender
	self:setState({
		pluginGui = self.dockWidget,
	})

	self._showPluginsConnection = MemStorageService:Bind(SharedPluginConstants.SHOW_TOOLBOX_PLUGINS_EVENT, function()
		self.dockWidget.Enabled = true
		if FFlagPluginDockWidgetRaiseFromLua then
			self.dockWidget:RequestRaise()
		end
	end)
end

function ToolboxPlugin:willUnmount()
	if self.disconnectLocalizationListener then
		self.disconnectLocalizationListener()
	end

	self._showPluginsConnection:Disconnect()
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
	local initialEnabled = false

	if FFlagStudioShowHideABTestV2 then
		local variation = getTestVariation(ABTEST_SHOWHIDEV2_NAME)
		if variation == 0 or variation == 2 then
			-- Even though 0 is supposed to be the Control group and preserve existing behaviors,
			-- Toolbox should be enabled by default. The fact that it isn't is a bug.
			initialEnabled = true
		elseif variation == 1 then
			initialEnabled = false
		end
	end

	local title = self.props.Localization:getText("General", "ToolboxToolbarName")

	return Roact.createElement(DockWidget, {
		plugin = plugin,

		Title = title,
		Name = "Toolbox",
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,

		InitialDockState = Enum.InitialDockState.Left,
		InitialEnabled = initialEnabled,
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
			(not FFlagRemoveUILibraryFromToolbox) and UILibraryWrapper.new() or nil,
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

if FFlagToolboxWithContext then
	ToolboxPlugin = withContext({
		Localization = ContextServices.Localization,
	})(ToolboxPlugin)
else
	ContextServices.mapToProps(ToolboxPlugin, {
		Localization = ContextServices.Localization,
	})
end


if FFlagToolboxStopAudioFromPlayingOnCloseAndCategorySwitch then
	local function mapDispatchToProps(dispatch)
		return {
			stopAllSounds = function()
				dispatch(StopAllSounds())
			end,
		}
	end

	return RoactRodux.connect(nil, mapDispatchToProps)(ToolboxPlugin)
else
	return ToolboxPlugin
end
