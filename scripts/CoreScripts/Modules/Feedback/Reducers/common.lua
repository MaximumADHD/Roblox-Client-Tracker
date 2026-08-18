--[[
	Contains state that is not particular to any component
]]
local CorePackages = game:GetService("CorePackages")

local Cryo = require(CorePackages.Packages.Cryo)
local Rodux = require(CorePackages.Packages.Rodux)

local FeedbackModule = script.Parent.Parent

local IncrementFeedbackSubmissionAttempts = require(FeedbackModule.Actions.IncrementFeedbackSubmissionAttempts)
local ShowHelpModal = require(FeedbackModule.Actions.ShowHelpModal)
local ShowOnboardingModal = require(FeedbackModule.Actions.ShowOnboardingModal)
local SetSourceLanguageName = require(FeedbackModule.Actions.SetSourceLanguageName)

return Rodux.createReducer({
	numFeedbackSubmissionAttempts = nil,
	showHelpModal = false,
	showOnboardingModal = true,
	sourceLanguageName = "",
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
	[SetSourceLanguageName.name] = function(state, action: { [string]: any })
		return Cryo.Dictionary.join(state, {
			sourceLanguageName = action.sourceLanguageName,
		})
	end,
})
