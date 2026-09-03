local Foundation = script:FindFirstAncestor("Foundation")
local ColorNamespace = require(Foundation.Enums.ColorNamespace)
local Types = require(Foundation.Components.Types)
type ColorNamespace = ColorNamespace.ColorNamespace
local StateLayerMode = require(Foundation.Enums.StateLayerMode)
type StateLayerMode = StateLayerMode.StateLayerMode

local InputPlacement = require(Foundation.Enums.InputPlacement)
type InputPlacement = InputPlacement.InputPlacement

local MAX_LAYOUT_ORDER = 2147483648
local MIN_LAYOUT_ORDER = -2147483648
local DEFAULT_DELAY_TIME = 0.15
-- this should live in tokens
local DISABLED_TRANSPARENCY = 0.5
local SHADOW_IMAGE = "component_assets/dropshadow_17_8"
local SHADOW_SIZE = 16

local INPUT_PLACEMENT_TO_LABEL_ALIGNMENT: { [InputPlacement]: Enum.HorizontalAlignment } = {
	[InputPlacement.Start] = Enum.HorizontalAlignment.Right,
	[InputPlacement.End] = Enum.HorizontalAlignment.Left,
}

local ColorNamespaceToStateLayerMode: { [boolean]: { [ColorNamespace]: StateLayerMode } } = {
	[false] = {
		[ColorNamespace.Color] = StateLayerMode.Default,
		[ColorNamespace.Inverse] = StateLayerMode.Inverse,
		[ColorNamespace.LightMode] = StateLayerMode.Light,
		[ColorNamespace.DarkMode] = StateLayerMode.Dark,
	},
	[true] = {
		[ColorNamespace.Color] = StateLayerMode.Inverse,
		[ColorNamespace.Inverse] = StateLayerMode.Default,
		[ColorNamespace.LightMode] = StateLayerMode.Dark,
		[ColorNamespace.DarkMode] = StateLayerMode.Light,
	},
}

return {
	MAX_LAYOUT_ORDER = MAX_LAYOUT_ORDER,
	MIN_LAYOUT_ORDER = MIN_LAYOUT_ORDER,
	DISABLED_TRANSPARENCY = DISABLED_TRANSPARENCY,
	DEFAULT_DELAY_TIME = DEFAULT_DELAY_TIME,
	DEFAULT_INPUT_FIELD_WIDTH_PIXELS = 400,
	DEFAULT_NUMBER_INPUT_WIDTH = 300,
	TOOLTIP_MAX_WIDTH = 280,
	SHADOW_IMAGE = SHADOW_IMAGE,
	SHADOW_SIZE = SHADOW_SIZE,
	MODAL = {
		-- Prevents the modal container itself from being selectable
		DISABLE_SELECTION = {
			Selectable = false,
		} :: Types.Selection,
		-- Creates a selection boundary that prevents focus from escaping the modal content
		TRAP_FOCUS = {
			SelectionBehaviorRight = Enum.SelectionBehavior.Stop,
			SelectionBehaviorLeft = Enum.SelectionBehavior.Stop,
			SelectionBehaviorDown = Enum.SelectionBehavior.Stop,
			SelectionBehaviorUp = Enum.SelectionBehavior.Stop,
		} :: Types.SelectionGroup,
	},
	COLOR_NAMESPACE_TO_STATE_LAYER_MODE = ColorNamespaceToStateLayerMode,
	INPUT_PLACEMENT_TO_LABEL_ALIGNMENT = INPUT_PLACEMENT_TO_LABEL_ALIGNMENT,
	BUILDER_SANS_FONT_ASSET = "rbxasset://fonts/families/BuilderSans.json",
}
