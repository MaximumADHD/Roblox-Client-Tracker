local UtilityRoot = script.Parent
local UIBlox = UtilityRoot.Parent

local ControlState = require(UIBlox.Core.Control.Enum.ControlState)
local StyleTypes = require(UIBlox.App.Style.StyleTypes)

type ControlStateColors = StyleTypes.ControlStateColors
type ThemeItem = StyleTypes.ThemeItem

return function(controlState: any, controlStateColors: ControlStateColors): ThemeItem?
	if controlState == ControlState.Initialize then
		return controlStateColors.Initialize
	elseif controlState == ControlState.Default then
		return controlStateColors.Default
	elseif controlState == ControlState.Pressed then
		return controlStateColors.Pressed
	elseif controlState == ControlState.Hover then
		return controlStateColors.Hover
	elseif controlState == ControlState.Selected then
		return controlStateColors.Selected
	elseif controlState == ControlState.SelectedPressed then
		return controlStateColors.SelectedPressed
	elseif controlState == ControlState.Disabled then
		return controlStateColors.Disabled
	else
		return nil
	end
end
