--[[
	Creates a UIGroup that allows filtering input events by several common types.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices

local UI = Framework.UI
local Decoration = UI.Decoration
local TextLabel = Decoration.TextLabel
local Pane = UI.Pane

local LabeledToggleButton = require(Plugin.Src.Components.LabeledToggleButton)

local SetGamepadEnabled = require(Plugin.Src.Actions.EventTypeEnabled.SetGamepadEnabled)
local SetKeyboardEnabled = require(Plugin.Src.Actions.EventTypeEnabled.SetKeyboardEnabled)
local SetMouseClickEnabled = require(Plugin.Src.Actions.EventTypeEnabled.SetMouseClickEnabled)
local SetMouseMoveEnabled = require(Plugin.Src.Actions.EventTypeEnabled.SetMouseMoveEnabled)
local SetTouchEnabled = require(Plugin.Src.Actions.EventTypeEnabled.SetTouchEnabled)

local FilterSettingsUIGroup = Roact.PureComponent:extend("FilterSettingsUIGroup")

function FilterSettingsUIGroup:init(props)
	assert(props.RoduxStoreContext)

	self.toggleMouseMove = function()
		local props = self.props
		props.SetMouseMoveEnabled(not props.EnabledMouseMove, props.RoduxStoreContext)
	end

	self.toggleMouseClick = function()
		local props = self.props
		props.SetMouseClickEnabled(not props.EnabledMouseClick, props.RoduxStoreContext)
	end

	self.toggleKeyboard = function()
		local props = self.props
		props.SetKeyboardEnabled(not props.EnabledKeyboard, props.RoduxStoreContext)
	end

	self.toggleGamepad = function()
		local props = self.props
		props.SetGamepadEnabled(not props.EnabledGamepad, props.RoduxStoreContext)
	end

	self.toggleTouch = function()
		local props = self.props
		props.SetTouchEnabled(not props.EnabledTouch, props.RoduxStoreContext)
	end
end

function FilterSettingsUIGroup:render()
	local props = self.props
	local localization = props.Localization
	local style = props.Stylizer

	local isUIDisabled = self.props.Disabled

	return Roact.createElement(Pane, {
		LayoutOrder = props.LayoutOrder,
		Style = "CornerBox",
		Size = UDim2.fromOffset(style.UIGroupWidthPx, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
		Layout = Enum.FillDirection.Vertical,
		Spacing = UDim.new(0, style.PaddingPx),
		Padding = style.PaddingPx,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		VerticalAlignment = Enum.VerticalAlignment.Top,
	}, {
		Label = Roact.createElement(TextLabel, {
			Text = localization:getText("PlaybackTabView", "FilterEventsLabel"),
			Size = UDim2.fromScale(1, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
			LayoutOrder = 0,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Top,
		}),

		GridLayoutArea = Roact.createElement(Pane, {
			Size = UDim2.new(1, 0, 0, style.GridAreaHeightPx),
			LayoutOrder = 1,
		}, {
			Layout = Roact.createElement("UIGridLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				CellPadding = UDim2.fromOffset(style.PaddingPx, style.GridCellPaddingYPx),
				SortOrder = Enum.SortOrder.LayoutOrder,
				VerticalAlignment = Enum.VerticalAlignment.Top,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				CellSize = style.GridLayoutCellSize,
			}),

			MouseMoveEnabled = Roact.createElement(LabeledToggleButton, {
				Selected = props.EnabledMouseMove,
				OnClick = self.toggleMouseMove,
				Text = localization:getText("RecordTabView", "FilterNameMouseMove"),
				Disabled = isUIDisabled,
			}),
			MouseClickEnabled = Roact.createElement(LabeledToggleButton, {
				Selected = props.EnabledMouseClick,
				OnClick = self.toggleMouseClick,
				Text = localization:getText("RecordTabView", "FilterNameMouseClick"),
				Disabled = isUIDisabled,
			}),
			KeyboardEnabled = Roact.createElement(LabeledToggleButton, {
				Selected = props.EnabledKeyboard,
				OnClick = self.toggleKeyboard,
				Text = localization:getText("RecordTabView", "FilterNameKeyboard"),
				Disabled = isUIDisabled,
			}),
			GamepadEnabled = Roact.createElement(LabeledToggleButton, {
				Selected = props.EnabledGamepad,
				OnClick = self.toggleGamepad,
				Text = localization:getText("RecordTabView", "FilterNameGamepad"),
				Disabled = isUIDisabled,
			}),
			TouchEnabled = Roact.createElement(LabeledToggleButton, {
				Selected = props.EnabledTouch,
				OnClick = self.toggleTouch,
				Text = localization:getText("RecordTabView", "FilterNameTouch"),
				Disabled = isUIDisabled,
			}),
		}),
	})
end

FilterSettingsUIGroup = ContextServices.withContext({
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
})(FilterSettingsUIGroup)

local function mapStateToProps(state, props)
	local context = props.RoduxStoreContext
	local settings = state[context]
	return {
		EnabledMouseMove = settings.mouseMove,
		EnabledMouseClick = settings.mouseClick,
		EnabledKeyboard = settings.keyboard,
		EnabledGamepad = settings.gamepad,
		EnabledTouch = settings.touch,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		SetMouseMoveEnabled = function(value, context)
			dispatch(SetMouseMoveEnabled(value, context))
		end,
		SetMouseClickEnabled = function(value, context)
			dispatch(SetMouseClickEnabled(value, context))
		end,
		SetKeyboardEnabled = function(value, context)
			dispatch(SetKeyboardEnabled(value, context))
		end,
		SetGamepadEnabled = function(value, context)
			dispatch(SetGamepadEnabled(value, context))
		end,
		SetTouchEnabled = function(value, context)
			dispatch(SetTouchEnabled(value, context))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(FilterSettingsUIGroup)
