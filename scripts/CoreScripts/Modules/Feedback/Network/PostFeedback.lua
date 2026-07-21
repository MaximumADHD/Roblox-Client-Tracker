--!nonstrict
--nonstrict only due to HttpService:RequestInternal(options):Start, follow with #creator-services-communication to address
--[[
    Contains logic for using HttpService to make a request to the feedback API when feedback is left by the user
    Currently dependent on InGameMenuv1's url library
]]
local Modules = script.Parent.Parent.Parent
local FeedbackModules = script.Parent.Parent
-- We are using v1's Url library for the v1 version of the UI
local InGameMenu = Modules.InGameMenu
local Url = require(InGameMenu.Network.Url)
local Constants = require(FeedbackModules.Resources.Constants)
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local CorePackages = game:GetService("CorePackages")
local InGameMenuDependencies = require(CorePackages.Packages.InGameMenuDependencies)
local Promise = InGameMenuDependencies.Promise
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local GetFFlagEnableSendImageFeedbackToBackend =
	require(RobloxGui.Modules.Flags.GetFFlagEnableSendImageFeedbackToBackend)

--[[
    For the authenticated user, POSTs feedback for a particular translation entry on behalf of the user
    A successful POST returns a 202 with an empty request body.
]]

local function request(options, resolve, reject)
	return HttpService:RequestInternal(options):Start(function(success, response)
		if success then
			resolve()
		else
			reject(tostring(response.StatusMessage))
		end
	end)
end

return function(
	contentType,
	originalContent,
	feedbackContent,
	feedbackIdentifier,
	suggestedTranslationText,
	additionalCommentsText,
	feedbackReason
)
	local payload

	if not GetFFlagEnableSendImageFeedbackToBackend() then
		local serviceSourceType = 1 -- Corresponds to IN_GAME_TRANSLATIONS service source type from feedback api

		if feedbackIdentifier == "" or feedbackIdentifier == nil then
			-- If no suitable identifier is provided from the engine, then we try the next best effort identification of universeID
			feedbackIdentifier = "UID_" .. game.GameId
			serviceSourceType = 2 -- Corresponds to IN_GAME_TRANSLATIONS_NO_ENTRY_ID source type from feedback api
		end

		payload = {
			LocalizationFeedback = {
				FeedbackTarget = {
					ServiceSource = {
						Type = serviceSourceType,
						ExternalId = feedbackIdentifier,
					},
					Source = {
						ContentType = 1, -- Type: text
						Value = originalContent,
					},
					Translation = {
						ContentType = 1, -- Type: text
						Value = feedbackContent,
					},
				},
				Locale = if Players.LocalPlayer.LocaleId then Players.LocalPlayer.LocaleId:gsub("-", "_") else "", --Defensive substitution, but back end should handle this properly
				ReasonType = feedbackReason,
				Suggestion = {
					ContentType = 1, -- Type: text
					Value = suggestedTranslationText,
				},
				Comments = additionalCommentsText,
			},
		}
	else
		local serviceSourceType = Constants.ServiceSourceType.InGameTranslations

		if feedbackIdentifier == "" or feedbackIdentifier == nil then
			-- If no suitable identifier is provided from the engine, then we try the next best effort identification of universeID
			feedbackIdentifier = "UID_" .. game.GameId
			serviceSourceType = Constants.ServiceSourceType.InGameTranslationsNoEntryId
		end

		if contentType == Constants.ContentType.Image then
			serviceSourceType = Constants.ServiceSourceType.InGameUniverseAndImageAsset
		end

		payload = {
			LocalizationFeedback = {
				FeedbackTarget = {
					ServiceSource = {
						Type = serviceSourceType,
						ExternalId = feedbackIdentifier,
					},
					Source = {
						ContentType = contentType,
						Value = originalContent,
					},
					Translation = {
						ContentType = contentType,
						Value = feedbackContent,
					},
				},
				Locale = if Players.LocalPlayer.LocaleId then Players.LocalPlayer.LocaleId:gsub("-", "_") else "", --Defensive substitution, but back end should handle this properly
				ReasonType = feedbackReason,
				Suggestion = {
					ContentType = Constants.ContentType.Text,
					Value = suggestedTranslationText,
				},
				Comments = additionalCommentsText,
			},
		}
	end

	-- Url format looks like this: "https://apis.roblox.com/feedback-api/v1/feedback/create-localization"
	local url = string.format("%sfeedback-api/v1/feedback/create-localization", Url.APIS_URL)

	local options = {
		Url = url,
		Method = "POST",
		Body = HttpService:JSONEncode(payload),
		Headers = {
			["Content-Type"] = "application/json",
			["Accept"] = "application/json",
		},
	}

	return Promise.new(function(resolve, reject)
		spawn(function()
			request(options, resolve, reject)
		end)
	end)
end
