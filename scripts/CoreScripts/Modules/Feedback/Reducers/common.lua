--[[
	Contains state that is not particular to any component
]]
local CorePackages = game:GetService("CorePackages")

local Cryo = require(CorePackages.Cryo)
local Rodux = require(CorePackages.Rodux)

local FeedbackModule = script.Parent.Parent

local IncrementFeedbackSubmissionAttempts = require(FeedbackModule.Actions.IncrementFeedbackSubmissionAttempts)
local ShowHelpModal = require(FeedbackModule.Actions.ShowHelpModal)
local ShowOnboardingModal = require(FeedbackModule.Actions.ShowOnboardingModal)

return Rodux.createReducer({
	numFeedbackSubmissionAttempts = nil,
	showHelpModal = false,
	showOnboardingModal = true,
}, {
	[IncrementFeedbackSubmissionAttempts.name] = function(state, action: { [string]: any })
		return Cryo.Dictionary.join(state, {
			numFeedbackSubmissionAttempts = action.numFeedbackSubmissionAttempts,
		})
	end,
	[ShowHelpModal.name] = function(state, action: { [string]: any })
		return Cryo.Dictionary.join(state, {
			showHelpModal = action.helpModalVisible,
		})
	end,
	[ShowOnboardingModal.name] = function(state, action: { [string]: any })
		return Cryo.Dictionary.join(state, {
			showOnboardingModal = action.onboardingModalVisible,
		})
	end,
})
