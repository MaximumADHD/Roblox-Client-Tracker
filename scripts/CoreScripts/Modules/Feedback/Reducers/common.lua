--[[
	Contains state that is not particular to any component
]]
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Cryo = require(CorePackages.Cryo)
local Rodux = require(CorePackages.Rodux)

local FeedbackModule = script.Parent.Parent

--Flags
local GetFFlagEnableFeedbackOnboardingModal = require(RobloxGui.Modules.Flags.GetFFlagEnableFeedbackOnboardingModal)

local IncrementFeedbackSubmissionAttempts = require(FeedbackModule.Actions.IncrementFeedbackSubmissionAttempts)
local ShowHelpModal = require(FeedbackModule.Actions.ShowHelpModal)

local ShowOnboardingModal = nil
if GetFFlagEnableFeedbackOnboardingModal then
	ShowOnboardingModal = require(FeedbackModule.Actions.ShowOnboardingModal)
end

-- TODO: Make sure this is working with setting true, and clean up as soon as possible after feedback mode general release.
if GetFFlagEnableFeedbackOnboardingModal() then
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
else
	return Rodux.createReducer({
		numFeedbackSubmissionAttempts = nil,
		showHelpModal = true,
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
	})
end
