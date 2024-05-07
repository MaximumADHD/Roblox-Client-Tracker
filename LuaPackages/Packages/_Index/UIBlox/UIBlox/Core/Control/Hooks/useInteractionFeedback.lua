local Control = script.Parent.Parent
local Core = Control.Parent
local UIBlox = Core.Parent
local Packages = UIBlox.Parent
local React = require(Packages.React)

local FeedbackManagerInjectionContext = require(Control.FeedbackManagerInjectionContext)
local ControlStateEnum = require(Core.Control.Enum.ControlState)
type ControlState = ControlStateEnum.ControlState

local function resolveInteractionType(
	oldState: ControlState,
	newState: ControlState
): FeedbackManagerInjectionContext.InteractionType?
	local interactionType: FeedbackManagerInjectionContext.InteractionType?
	if newState == ControlStateEnum.Pressed or newState == ControlStateEnum.SelectedPressed then
		interactionType = "Press"
	elseif
		(newState == ControlStateEnum.Hover or newState == ControlStateEnum.Selected)
		and oldState == ControlStateEnum.Default
	then
		interactionType = "Hover"
	elseif
		(oldState == ControlStateEnum.Pressed or oldState == ControlStateEnum.SelectedPressed)
		and newState ~= ControlStateEnum.Disabled
	then
		interactionType = "Release"
	else
		return nil
	end
	return interactionType
end

local function useInteractionFeedback()
	local triggerFeedback = React.useContext(FeedbackManagerInjectionContext)

	return React.useCallback(function(feedbackType: string?, oldState: ControlState, newState: ControlState): ()
		local interactionType = resolveInteractionType(oldState, newState)
		if interactionType then
			triggerFeedback(
				feedbackType or "Default",
				interactionType :: FeedbackManagerInjectionContext.InteractionType
			)
		end
	end, { triggerFeedback })
end

return useInteractionFeedback
