--!nonstrict
--nonstrict only due to HttpService:RequestInternal(options):Start, follow with #creator-services-communication to address
--[[
	Fetches the experience's source language and resolves to its display name,
	localized into the player's locale. Used to label the "Original Text" section
	of the feedback report dialog.

	Two requests, mirroring GameSettings' language selector:
	  1. Locale API `v1/locales` -> maps every language code to a localized name.
	  2. GameInternationalization API `v1/source-language/games/{gameId}` -> the
	     experience's source language code.
	The source code is then resolved to a display name. Rejects if either request
	fails or the name cannot be resolved.
]]
local CorePackages = game:GetService("CorePackages")
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")

local Url = require(CorePackages.Workspace.Packages.CoreScriptsCommon).Url
local Promise = require(CorePackages.Packages.Promise)

local FeedbackModule = script.Parent.Parent
local resolveSourceLanguageName = require(FeedbackModule.Network.resolveSourceLanguageName)

local function requestJson(url)
	return Promise.new(function(resolve, reject)
		HttpService:RequestInternal({
			Url = url,
			Method = "GET",
		}):Start(function(success, response)
			if not success then
				reject("Connection error")
			elseif response.StatusCode < 200 or response.StatusCode >= 400 then
				reject("Status code: " .. tostring(response.StatusCode))
			else
				local decodeSuccess, decoded = pcall(function()
					return HttpService:JSONDecode(response.Body)
				end)
				if decodeSuccess then
					resolve(decoded)
				else
					reject("Failed to decode response body")
				end
			end
		end)
	end)
end

return function()
	local rawLocale = Players.LocalPlayer.LocaleId
	-- Defensive substitution, but backend should handle this properly
	local playerLocale = if rawLocale then (rawLocale:gsub("-", "_")) else ""

	local localesUrl = string.format("%sv1/locales?displayValueLocale=%s", Url.LOCALE_URL, playerLocale)
	local sourceLanguageUrl =
		string.format("%sv1/source-language/games/%d", Url.GAME_INTERNATIONALIZATION_URL, game.GameId)

	return Promise.all({
		requestJson(localesUrl),
		requestJson(sourceLanguageUrl),
	}):andThen(function(responses)
		local localesResponse = responses[1]
		local sourceLanguageResponse = responses[2]

		local sourceLanguageName = resolveSourceLanguageName(localesResponse.data, sourceLanguageResponse.languageCode)

		if sourceLanguageName == nil then
			return Promise.reject("Could not resolve source language name")
		end

		return sourceLanguageName
	end)
end
