--[[
	Decides whether an InputBegan on a settings selector arrow ("<" / ">") steps the value.

	With FFlagSettingsSelectorStepOnPressOnly the decision comes from the event: only an actual press
	(MouseButton1 or Touch) steps. The global input mode is not a reliable stand-in for the event type:
	VR laser hover (MouseMovement) reaches the arrows while the mode is still "tap", and VR laser clicks
	arrive while the mode is "directional".
]]

local FFlagSettingsSelectorStepOnPressOnly = require(script.Parent.Flags.FFlagSettingsSelectorStepOnPressOnly)

local function shouldSelectorArrowStep(
	userInputType: Enum.UserInputType,
	isTapMode: boolean,
	isPointerMode: boolean
): boolean
	if FFlagSettingsSelectorStepOnPressOnly then
		return userInputType == Enum.UserInputType.MouseButton1 or userInputType == Enum.UserInputType.Touch
	end
	return isTapMode or isPointerMode and userInputType == Enum.UserInputType.MouseButton1
end

return shouldSelectorArrowStep
