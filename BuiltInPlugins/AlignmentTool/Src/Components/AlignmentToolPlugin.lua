--[[
	The main plugin component.

	Consists of the PluginToolbar, DockWidget, and MainView.
]]

local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local ContextServices = require(Plugin.Packages.Framework.ContextServices)
local StudioUI = require(Plugin.Packages.Framework.StudioUI)
local DockWidget = StudioUI.DockWidget
local PluginButton = StudioUI.PluginButton
local PluginToolbar = StudioUI.PluginToolbar

local SetToolEnabled = require(Plugin.Src.Actions.SetToolEnabled)
local UpdateActiveInstanceHighlight = require(Plugin.Src.Thunks.UpdateActiveInstanceHighlight)

local MainView = require(Plugin.Src.Components.MainView)

local getEngineFeatureActiveInstanceHighlight = require(Plugin.Src.Flags.getEngineFeatureActiveInstanceHighlight)
local getFFlagAlignToolAnalytics = require(Plugin.Src.Flags.getFFlagAlignToolAnalytics)
local getFFlagFixAlignToolAnalyticsEventCount = require(Plugin.Src.Flags.getFFlagFixAlignToolAnalyticsEventCount)

local TOOLBAR_BUTTON_ICON = "rbxasset://textures/AlignTool/AlignTool.png"
local INITIAL_WINDOW_SIZE = Vector2.new(300, 220)
local MINIMUM_WINDOW_SIZE = Vector2.new(150, 200)

local AlignmentToolPlugin = Roact.PureComponent:extend("AlignmentToolPlugin")

function AlignmentToolPlugin:init()
	if getFFlagAlignToolAnalytics() then
		self._hasOpenedThisSession = false
	end

	self.toggleState = function()
		if getFFlagAlignToolAnalytics() then
			local enabled = not self.props.toolEnabled
			if getFFlagFixAlignToolAnalyticsEventCount() then
				local initiatedByUser = true
				self.setToolEnabled(enabled, initiatedByUser)
			else
				self.setToolEnabled(enabled)
			end
		else
			local props = self.props
			props.setToolEnabled(not props.toolEnabled)
		end
	end

	self.onClose = function()
		if getFFlagAlignToolAnalytics() then
			if getFFlagFixAlignToolAnalyticsEventCount() then
				local initiatedByUser = true
				self.setToolEnabled(false, initiatedByUser)
			else
				self.setToolEnabled(false)
			end
		else
			self.props.setToolEnabled(false)
		end
	end

	self.onRestore = function(enabled)
		if getFFlagAlignToolAnalytics() then
			if getFFlagFixAlignToolAnalyticsEventCount() then
				local initiatedByUser = false
				self.setToolEnabled(enabled, initiatedByUser)
			else
				self.setToolEnabled(enabled)
			end
		else
			self.props.setToolEnabled(enabled)
		end
	end

	self.renderButtons = function(toolbar)
		local props = self.props

		local localization = props.Localization
		local enabled = props.toolEnabled

		return {
			Toggle = Roact.createElement(PluginButton, {
				Toolbar = toolbar,
				Active = enabled,
				Title = localization:getText("Plugin", "Button"),
				Tooltip = localization:getText("Plugin", "Description"),
				Icon = TOOLBAR_BUTTON_ICON,
				OnClick = self.toggleState,
			})
		}
	end

	if getFFlagAlignToolAnalytics() then
		self.setToolEnabled = function(enabled, initiatedByUser)
			local props = self.props

			props.setToolEnabled(enabled)

			if getFFlagFixAlignToolAnalyticsEventCount() then
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
			else
				if enabled then
					props.Analytics:report("alignToolOpen")
					if not self._hasOpenedThisSession then
						props.Analytics:report("alignToolImpression")
						self._hasOpenedThisSession = true
					end
				else
					props.Analytics:report("alignToolClose")
				end
			end
		end
	end
end

function AlignmentToolPlugin:render()
	local props = self.props

	local localization = props.Localization
	local enabled = props.toolEnabled

	return Roact.createFragment({
		Toolbar = Roact.createElement(PluginToolbar, {
			Title = localization:getText("Plugin", "Toolbar"),
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
			MainView = enabled and Roact.createElement(MainView),
		})
	})
end

ContextServices.mapToProps(AlignmentToolPlugin, {
	Localization = ContextServices.Localization,
	Analytics = ContextServices.Analytics,
})

local function mapStateToProps(state, _)
	return {
		toolEnabled = state.toolEnabled,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		setToolEnabled = function(enabled)
			dispatch(SetToolEnabled(enabled))
			if getEngineFeatureActiveInstanceHighlight() then
				dispatch(UpdateActiveInstanceHighlight())
			end
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(AlignmentToolPlugin)
