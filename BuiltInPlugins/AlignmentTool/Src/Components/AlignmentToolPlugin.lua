--[[
	The main plugin component.

	Consists of the PluginToolbar, DockWidget, and MainView.
]]
local FFlagAlignmentToolWithContext = game:GetFastFlag("AlignmentToolWithContext")

local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local ContextServices = require(Plugin.Packages.Framework).ContextServices
local StudioUI = require(Plugin.Packages.Framework).StudioUI
local withContext = ContextServices.withContext
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

	self.renderButtons = function(toolbar)
		local props = self.props
		local enabled = props.toolEnabled

		return {
			Toggle = Roact.createElement(PluginButton, {
				Toolbar = toolbar,
				Active = enabled,
				Title = STUDIO_RELAY_PLUGIN_BUTTON,
				Tooltip = "",
				Icon = "", -- C++ code is source of truth for Tooltip & Icon
				OnClick = self.toggleState,
			})
		}
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

function AlignmentToolPlugin:render()
	local props = self.props

	local localization = props.Localization
	local enabled = props.toolEnabled

	return Roact.createFragment({
		Toolbar = Roact.createElement(PluginToolbar, {
			Title = STUDIO_RELAY_PLUGIN_TOOLBAR,
			RenderButtons = self.renderButtons,
		}),

		MainWidget = Roact.createElement(DockWidget, {
			Enabled = enabled,
			Title = localization:getText("Plugin", "WindowTitle"),
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			InitialDockState = Enum.InitialDockState.Left,
			Size = INITIAL_WINDOW_SIZE,
			MinSize = MINIMUM_WINDOW_SIZE,
			OnClose = self.onClose,
			ShouldRestore = true,
			OnWidgetRestored = self.onRestore,
		}, {
			DockWidgetContent = self:_renderDockWidgetContents(enabled),
		})
	})
end

if FFlagAlignmentToolWithContext then
	AlignmentToolPlugin = withContext({
		Localization = ContextServices.Localization,
		Analytics = ContextServices.Analytics,
	})(AlignmentToolPlugin)
else
	ContextServices.mapToProps(AlignmentToolPlugin, {
		Localization = ContextServices.Localization,
		Analytics = ContextServices.Analytics,
	})
end


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
