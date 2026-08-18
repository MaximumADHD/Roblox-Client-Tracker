--[[
	Thunk that fetches the experience's source language display name and stores it
	so the feedback report dialog can label its "Original Text" section.
]]
local CorePackages = game:GetService("CorePackages")
local PerformFetch = require(CorePackages.Workspace.Packages.Http).PerformFetch

local FeedbackModule = script.Parent.Parent

-- Network Request
local GetExperienceSourceLanguage = require(FeedbackModule.Network.GetExperienceSourceLanguage)

-- Actions
local SetSourceLanguageName = require(FeedbackModule.Actions.SetSourceLanguageName)

return function()
	return PerformFetch.Single("GetExperienceSourceLanguage", function(store)
		return GetExperienceSourceLanguage():andThen(function(sourceLanguageName)
			store:dispatch(SetSourceLanguageName(sourceLanguageName))
		end)
	end)
end
