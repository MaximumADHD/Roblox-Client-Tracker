--[[
	Action that tracks the feedback flow state from the UI's perspective. Acts as a control for behavior for certain components on the UI.
]]
local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.Rodux).makeActionCreator

return Action(script.Name, function(newFeedbackFlowState)
	return {
		feedbackFlowState = newFeedbackFlowState,
	}
end)
