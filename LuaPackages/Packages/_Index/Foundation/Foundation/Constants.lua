local Foundation = script:FindFirstAncestor("Foundation")
local Types = require(Foundation.Components.Types)
local ColorMode = require(Foundation.Enums.ColorMode)
type ColorMode = ColorMode.ColorMode
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

-- Mapping of color mode to state layer mode for normal and inverse buttons
-- Boolean index reflects whether we want an inverted state layer, which requires
-- the correctly inverted state layer corresponding to that ColorMode.
local ColorModeToStateLayerMode: { [boolean]: { [ColorMode]: StateLayerMode } } = {
	[false] = {
		[ColorMode.Color] = StateLayerMode.Default,
		[ColorMode.Inverse] = StateLayerMode.Inverse,
		[ColorMode.LightMode] = StateLayerMode.Light,
		[ColorMode.DarkMode] = StateLayerMode.Dark,
	},
	[true] = {
		[ColorMode.Color] = StateLayerMode.Inverse,
		[ColorMode.Inverse] = StateLayerMode.Default,
		[ColorMode.LightMode] = StateLayerMode.Dark,
		[ColorMode.DarkMode] = StateLayerMode.Light,
	},
}

return {
	MAX_LAYOUT_ORDER = MAX_LAYOUT_ORDER,
	MIN_LAYOUT_ORDER = MIN_LAYOUT_ORDER,
	DISABLED_TRANSPARENCY = DISABLED_TRANSPARENCY,
	DEFAULT_DELAY_TIME = DEFAULT_DELAY_TIME,
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
	COLOR_MODE_TO_STATE_LAYER_MODE = ColorModeToStateLayerMode,
	INPUT_PLACEMENT_TO_LABEL_ALIGNMENT = INPUT_PLACEMENT_TO_LABEL_ALIGNMENT,
}
