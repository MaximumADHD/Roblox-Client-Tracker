local Control = script.Parent.Parent
local Core = Control.Parent
local UIBlox = Core.Parent
local Packages = UIBlox.Parent
local React = require(Packages.React)

local FeedbackManagerInjectionContext = require(Control.FeedbackManagerInjectionContext)
local ControlStateEnum = require(Core.Control.Enum.ControlState)
type ControlState = ControlStateEnum.ControlState

local function resolveFeedbackKey(
	oldState: ControlState,
	newState: ControlState
): FeedbackManagerInjectionContext.InteractionType?
	local feedbackType: FeedbackManagerInjectionContext.InteractionType?
	if newState == ControlStateEnum.Pressed or newState == ControlStateEnum.SelectedPressed then
		feedbackType = "Press"
	elseif
		(newState == ControlStateEnum.Hover or newState == ControlStateEnum.Selected)
		and oldState == ControlStateEnum.Default
	then
		feedbackType = "Hover"
	elseif
		(oldState == ControlStateEnum.Pressed or oldState == ControlStateEnum.SelectedPressed)
		and newState ~= ControlStateEnum.Disabled
	then
		feedbackType = "Release"
	else
		return nil
	end
	return feedbackType
end

local function useInteractionFeedback()
	local triggerFeedback = React.useContext(FeedbackManagerInjectionContext)

	return React.useCallback(function(contextKey: string?, oldState: ControlState, newState: ControlState): ()
		local feedbackKey = resolveFeedbackKey(oldState, newState)
		if feedbackKey then
			triggerFeedback(contextKey or "Default", feedbackKey :: FeedbackManagerInjectionContext.InteractionType)
		end
	end, { triggerFeedback })
end

return useInteractionFeedback
