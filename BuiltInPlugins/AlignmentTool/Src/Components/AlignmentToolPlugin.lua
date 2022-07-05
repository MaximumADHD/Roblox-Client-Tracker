--[[
	The main plugin component.

	Consists of the PluginToolbar, DockWidget, and MainView.
]]
local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local StudioUI = Framework.StudioUI
local DockWidget = StudioUI.DockWidget
local PluginButton = StudioUI.PluginButton
local PluginToolbar = StudioUI.PluginToolbar

local SetToolEnabled = require(Plugin.Src.Actions.SetToolEnabled)
local UpdateActiveInstanceHighlight = require(Plugin.Src.Thunks.UpdateActiveInstanceHighlight)

local MainView = require(Plugin.Src.Components.MainView)
local HoverPreviewEnabler = require(Plugin.Src.Components.HoverPreviewEnabler)

local INITIAL_WINDOW_SIZE = Vector2.new(300, 250)
local MINIMUM_WINDOW_SIZE = Vector2.new(175, 250)

local STUDIO_RELAY_PLUGIN_TOOLBAR = "Alignment"
local STUDIO_RELAY_PLUGIN_BUTTON = "AlignTool"

local AlignmentToolPlugin = Roact.PureComponent:extend("AlignmentToolPlugin")

local FFlagFixPluginsEnabledViaDockingContextMenu = game:GetFastFlag("FixPluginsEnabledViaDockingContextMenu")

function AlignmentToolPlugin:init()
	self._hasOpenedThisSession = false

	self.toggleState = function()
			local enabled = not self.props.toolEnabled
			local initiatedByUser = true
			self.setToolEnabled(enabled, initiatedByUser)
	end

	self.onClose = function()
		local initiatedByUser = true
		self.setToolEnabled(false, initiatedByUser)
	end

	self.onRestore = function(enabled)
		local initiatedByUser = false
		self.setToolEnabled(enabled, initiatedByUser)
	end

	self.onDockWidgetCreated = function()
		self.props.pluginLoaderContext.mainButtonClickedSignal:Connect(self.toggleState)
	end

	self.onDockWidgetEnabledChanged = function(widget)
		local initiatedByUser = true 
		self.setToolEnabled(widget.Enabled, initiatedByUser)
	end

	self.setToolEnabled = function(enabled, initiatedByUser)
		local props = self.props

		props.setToolEnabled(enabled)

		if enabled then
			if initiatedByUser then
				props.Analytics:report("alignToolOpen")
			end
			if not self._hasOpenedThisSession then
				props.Analytics:report("alignToolImpression")
				self._hasOpenedThisSession = true
			end
		else
			if initiatedByUser then
				props.Analytics:report("alignToolClose")
			end
		end
	end
end

function AlignmentToolPlugin:_renderDockWidgetContents(enabled)
	if enabled then
		return Roact.createElement(HoverPreviewEnabler, {}, {
			MainView = Roact.createElement(MainView),
		})
	else
		return nil
	end
end

function AlignmentToolPlugin:didUpdate()
		self.props.pluginLoaderContext.mainButton:SetActive(self.props.toolEnabled)
end

function AlignmentToolPlugin:render()
	local props = self.props

	local localization = props.Localization
	local enabled = props.toolEnabled

	return Roact.createFragment({
		MainWidget = Roact.createElement(DockWidget, {
			Enabled = enabled,
			Widget = props.pluginLoaderContext.mainDockWidget,
			Title = localization:getText("Plugin", "WindowTitle"),
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			InitialDockState = Enum.InitialDockState.Left,
			Size = INITIAL_WINDOW_SIZE,
			MinSize = MINIMUM_WINDOW_SIZE,
			OnClose = self.onClose,
			ShouldRestore = true,
			OnWidgetRestored = self.onRestore,
			OnWidgetCreated = self.onDockWidgetCreated,
			[Roact.Change.Enabled] = if FFlagFixPluginsEnabledViaDockingContextMenu then self.onDockWidgetEnabledChanged else nil,
		}, {
			DockWidgetContent = self:_renderDockWidgetContents(enabled),
		})
	})
end

AlignmentToolPlugin = withContext({
	Localization = ContextServices.Localization,
	Analytics = ContextServices.Analytics,
})(AlignmentToolPlugin)

local function mapStateToProps(state, _)
	return {
		toolEnabled = state.toolEnabled,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		setToolEnabled = function(enabled)
			dispatch(SetToolEnabled(enabled))
			dispatch(UpdateActiveInstanceHighlight())
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(AlignmentToolPlugin)
