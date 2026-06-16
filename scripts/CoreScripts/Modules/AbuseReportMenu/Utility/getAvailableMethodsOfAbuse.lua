local root = script:FindFirstAncestor("AbuseReportMenu")
local CorePackages = game:GetService("CorePackages")
local Constants = require(root.Components.Constants)

local RobloxTranslator = require(CorePackages.Workspace.Packages.RobloxTranslator)

function getAvailableMethodsOfAbuse(shouldIncludeVoice: boolean, reportAnythingActive: boolean)
	--Using Roblox Translator to call title and description keys

	local MOAList = {
		{
			label = RobloxTranslator:FormatByKey(Constants.localizationKeys[Constants.AbuseMethods.TextChat]),
			subLabel = RobloxTranslator:FormatByKey("Feature.SettingsHub.MethodOfAbuse.Text.Subtitle"),
			identifier = Constants.AbuseMethods.TextChat,
		},
	}
	if reportAnythingActive then
		MOAList[#MOAList + 1] = {
			label = RobloxTranslator:FormatByKey(Constants.localizationKeys[Constants.AbuseMethods.Avatar]),
			subLabel = RobloxTranslator:FormatByKey("Feature.SettingsHub.MethodOfAbuse.AvatarSubtitle"),
			identifier = Constants.AbuseMethods.Avatar,
		}
	else
		MOAList[#MOAList + 1] = {
			label = RobloxTranslator:FormatByKey(Constants.localizationKeys[Constants.AbuseMethods.Other]),
			subLabel = RobloxTranslator:FormatByKey("Feature.SettingsHub.MethodOfAbuse.Other.Subtitle"),
			identifier = Constants.AbuseMethods.Other,
		}
	end
	if shouldIncludeVoice then
		table.insert(MOAList, 1, {
			label = RobloxTranslator:FormatByKey(Constants.localizationKeys[Constants.AbuseMethods.VoiceChat]),
			subLabel = RobloxTranslator:FormatByKey("Feature.SettingsHub.MethodOfAbuse.VoiceChat.Subtitle"),
			identifier = Constants.AbuseMethods.VoiceChat,
		})
	end

	return MOAList
end

return getAvailableMethodsOfAbuse
