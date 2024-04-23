local Control = script.Parent.Parent
local Core = Control.Parent
local UIBlox = Core.Parent
local Packages = UIBlox.Parent
local React = require(Packages.React)

local FeedbackManagerInjectionContext = require(Control.FeedbackManagerInjectionContext)
local ControlStateEnum = require(Core.Control.Enum.ControlState)
type ControlState = ControlStateEnum.ControlState

--[[ Reduces 3 inputs into a single key to trigger feedback
interactionID: identifier from the top-level component for what type of interaction is happening, e.g. "Toggle"
oldState: the previous state of the control
newState: the new state of the control
]]
local resolveFeedbackKey = function(interactionID: string?, oldState: ControlState, newState: ControlState): string?
	local feedbackType
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

	if interactionID then
		return interactionID .. feedbackType
	else
		return feedbackType
	end
end

local function useInteractionFeedback()
	-- TODO: UIBLOX-707 use proper Rotriever package dependencies once DACI is resolved
	local InteractionFeedbackManager: any? = React.useContext(FeedbackManagerInjectionContext)
	if not InteractionFeedbackManager then
		warn(
			"UIBlox was initialized with enableInteractionFeedback = true, but not all UIBlox components are under a FeedbackManagerInjectionContext.Provider."
		)
		InteractionFeedbackManager = {
			useInteractionFeedback = function()
				return function() end
			end,
		}
	elseif not InteractionFeedbackManager.useInteractionFeedback then
		error("FeedbackManagerInjectionContext.Provider was found, but useInteractionFeedback was not provided.")
	end

	local triggerFeedback = InteractionFeedbackManager.useInteractionFeedback()
	return function(interactionID: string?, oldState: ControlState, newState: ControlState): ()
		local feedbackKey = resolveFeedbackKey(interactionID, oldState, newState)
		if feedbackKey then
			triggerFeedback(feedbackKey)
		end
	end
end

return useInteractionFeedback
