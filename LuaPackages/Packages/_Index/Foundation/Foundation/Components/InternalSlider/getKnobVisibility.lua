local Foundation = script:FindFirstAncestor("Foundation")

local ControlState = require(Foundation.Enums.ControlState)
type ControlState = ControlState.ControlState

local Visibility = require(Foundation.Enums.Visibility)
type Visibility = Visibility.Visibility

export type KnobVisibilityProps = {
	knobVisibility: Visibility,
	controlState: ControlState,
	isDisabled: boolean,
	isSelected: boolean,
	isDragging: boolean,
}

local function getKnobVisibility(props: KnobVisibilityProps): boolean
	if props.isDisabled then
		return false
	elseif props.knobVisibility == Visibility.None then
		return props.isSelected
	elseif props.knobVisibility == Visibility.Always then
		return true
	end
	return props.isDragging
		or props.isSelected
		or props.controlState == ControlState.Hover
		or props.controlState == ControlState.Pressed
end

return getKnobVisibility
