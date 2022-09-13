local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)

local ContextServices = Framework.ContextServices

local StudioUI = Framework.StudioUI
local DockWidget = StudioUI.DockWidget

local Manager = require(Plugin.Src.Components.Manager)
local ToolSelectionListener = require(Plugin.Src.Components.ToolSelectionListener)

local Constants = require(Plugin.Src.Util.Constants)

local INITIAL_WIDGET_SIZE = Vector2.new(300, 600)

local TerrainTools = Roact.PureComponent:extend("TerrainTools")

function TerrainTools:init()
	local initiallyEnabled = true

	self.state = {
		enabled = initiallyEnabled,
	}

	self.toggleEnabled = function()
		self:setState(function(state)
			local newEnabled = not state.enabled
			self:sendWindowEnabledAnalytics(newEnabled)
			return {
				enabled = newEnabled,
			}
		end)
	end

	self.onClose = function()
		local initiatedByUser = true
		self:setEnabled(false, initiatedByUser)
	end

	self.onRestore = function(enabled)
		local initiatedByUser = false
		self:setEnabled(enabled, initiatedByUser)
	end

	self.onDockWidgetCreated = function(enabled)
		self.props.pluginLoaderContext.mainButton:SetActive(enabled)
		self.props.pluginLoaderContext.mainButtonClickedSignal:Connect(self.toggleEnabled)
	end

	self.onWidgetEnabledChanged = function(widget)
		local initiatedByUser = true
		self:setEnabled(widget.Enabled, initiatedByUser)
	end

	self.onFocused = function()
		self.props.pluginActivationController:restoreSelectedTool()
	end

	self.button = self.props.pluginLoaderContext and self.props.pluginLoaderContext.mainButton or nil
end

function TerrainTools:sendWindowEnabledAnalytics(enabled)
	if not self.props.analytics then
		return
	end
	self.props.analytics:report("toggleWidget")
	self.props.analytics:report(enabled and "openWidget" or "closeWidget")
end

function TerrainTools:setEnabled(newEnabled, initiatedByUser)
	self:setState(function(state)
		if state.enabled == newEnabled then
			return nil
		end

		if initiatedByUser then
			self:sendWindowEnabledAnalytics(newEnabled)
		end

		return {
			enabled = newEnabled,
		}
	end)
end

function TerrainTools:didUpdate(prevProps, prevState)
	if prevState.enabled ~= self.state.enabled then
		if self.state.enabled then
			self.props.pluginActivationController:restoreSelectedTool()
		else
			self.props.pluginActivationController:pauseActivatedTool()
		end
	end

	self.button:SetActive(self.state.enabled)
end

function TerrainTools:render()
	local enabled = self.state.enabled

	local plugin = self.props.plugin
	local mouse = self.props.mouse
	local store = self.props.store

	local theme = self.props.theme
	local devFrameworkThemeItem = self.props.devFrameworkThemeItem
	local localization = self.props.localization
	local analytics = self.props.analytics

	local terrain = self.props.terrain

	local pluginActivationController = self.props.pluginActivationController
	local pluginActionsController = self.props.pluginActionsController
	local terrainImporter = self.props.terrainImporter
	local terrainGeneration = self.props.terrainGeneration
	local seaLevel = self.props.seaLevel
	local partConverter = self.props.partConverter

	local imageLoader = self.props.imageLoader

	local calloutController = self.props.calloutController

	return ContextServices.provide({
		plugin,
		mouse,
		store,
		theme,
		devFrameworkThemeItem,
		localization,
		analytics,
		terrain,
		pluginActivationController,
		pluginActionsController,
		terrainImporter,
		terrainGeneration,
		seaLevel,
		imageLoader,
		calloutController,
	}, {
		TerrainTools = Roact.createElement(DockWidget, {
			Title = localization:getText("Main", "Title"),
			Enabled = enabled,

			Widget = self.props.pluginLoaderContext and
				self.props.pluginLoaderContext.mainDockWidget or nil,

			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			InitialDockState = Enum.InitialDockState.Left,
			Size = INITIAL_WIDGET_SIZE,
			MinSize = Constants.MIN_WIDGET_SIZE,

			OnClose = self.onClose,

			ShouldRestore = true,
			OnWidgetRestored = self.onRestore,
			OnWidgetCreated = self.onDockWidgetCreated,

			OnWidgetFocused = self.onFocused,

			[Roact.Change.Enabled] = self.onWidgetEnabledChanged,
		}, enabled and {
			UIManager = Roact.createElement(Manager),
			ToolSelectionListener = Roact.createElement(ToolSelectionListener),
		} or nil),
	})
end

return TerrainTools
