--[[
	Thunk that handles posting a feedback request and handling actions taken as a result of posting such a request (incrementing submission attempts, for example)
]]
local CorePackages = game:GetService("CorePackages")
local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Promise = InGameMenuDependencies.Promise
local PerformFetch = require(CorePackages.Workspace.Packages.Http).PerformFetch

local FeedbackModule = script.Parent.Parent

-- Network Request
local PostFeedbackRequest = require(FeedbackModule.Network.PostFeedback)

-- Actions
local IncrementFeedbackSubmissionAttempts = require(FeedbackModule.Actions.IncrementFeedbackSubmissionAttempts)

return function(
	originalText,
	feedbackText,
	feedbackIdentifier,
	suggestedTranslationText,
	additionalCommentsText,
	feedbackReason,
	numFeedbackSubmissionAttempts
)
	-- Make POST request and only update on success if running from client
	return PerformFetch.Single("PostFeedbackRequest", function(store)
		return PostFeedbackRequest(
			originalText,
			feedbackText,
			feedbackIdentifier,
			suggestedTranslationText,
			additionalCommentsText,
			feedbackReason
		):andThen(function(result)
			store:dispatch(IncrementFeedbackSubmissionAttempts(numFeedbackSubmissionAttempts))
			return Promise.resolve(result)
		end, function(err)
			-- Consider adding a failure toast later
			return Promise.reject(err)
		end)
	end)
end
