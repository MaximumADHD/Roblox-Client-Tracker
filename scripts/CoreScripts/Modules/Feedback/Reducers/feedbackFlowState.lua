--[[
	Contains feedback flow state
]]
local CorePackages = game:GetService("CorePackages")

local Cryo = require(CorePackages.Cryo)
local Rodux = require(CorePackages.Rodux)

local FeedbackModule = script.Parent.Parent
-- Constants
local Constants = require(FeedbackModule.Resources.Constants)

-- Actions
local SetFeedbackFlowState = require(FeedbackModule.Actions.SetFeedbackFlowState)
local SetFeedbackReason = require(FeedbackModule.Actions.SetFeedbackReason)

return Rodux.createReducer({
	feedbackFlowState = Constants.State.Default,
	feedbackReason = 0,
}, {
	[SetFeedbackFlowState.name] = function(state, action: { [string]: any })
		return Cryo.Dictionary.join(state, {
			feedbackFlowState = action.feedbackFlowState,
		})
	end,
	[SetFeedbackReason.name] = function(state, action: { [string]: any })
		return Cryo.Dictionary.join(state, {
			feedbackReason = action.feedbackReason,
		})
	end,
})
