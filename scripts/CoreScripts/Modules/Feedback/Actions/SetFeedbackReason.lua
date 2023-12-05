--[[
	Action that manages the reason selection from the UI's perspective. Allows report dialog to manage state for its child radiobuttonlist instead of leaving the source of truth directly on the button list.
    The reason is merely an index value for the radio button list of reasons.
]]
local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.Rodux).makeActionCreator

return Action(script.Name, function(newFeedbackReason)
	return {
		feedbackReason = newFeedbackReason,
	}
end)
