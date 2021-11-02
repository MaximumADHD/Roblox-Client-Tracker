local FStringDevPublishChinaRequirementsLink = game:GetFastString("DevPublishChinaRequirementsLink")

local RbxAnalyticsService = game:GetService("RbxAnalyticsService")

local GameSettingsPolicy = game:GetService("PluginPolicyService"):getPluginPolicy("GameSettings")

local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Cryo)
local KeyProvider = require(Plugin.Src.Util.KeyProvider)

local contextKey = KeyProvider.getContextKeyName()
local pluginKey = KeyProvider.getPluginKeyName()
local gameSettingsKey = KeyProvider.getGameSettingsKeyName()

local GameSettingsUtilities =  {}

function GameSettingsUtilities.getAutoTranslationAllowed()
	return GameSettingsPolicy["AutoTranslationAllowed"]
end

function GameSettingsUtilities.getAutoTranslatedLanguages()
	return GameSettingsPolicy["AutoTranslationTargetLanguages"]
end

function GameSettingsUtilities.getSocialMediaReferencesAllowed()
	return GameSettingsPolicy["SocialMediaReferencesAllowed"]
end

function GameSettingsUtilities.shouldDisablePrivateServersAndPaidAccess()
	return GameSettingsPolicy["DisablePrivateServersAndPaidAccess"]
end

function GameSettingsUtilities.shouldAllowBadges()
	return GameSettingsPolicy["ShowBadges"]
end

function GameSettingsUtilities.shouldShowDevPublishLocations()
	return GameSettingsPolicy["ShowOptInLocations"]
end

function GameSettingsUtilities.getPlayerAppDownloadLink(location)
	return GameSettingsPolicy["PlayerAppDownloadLink"][location]
end

function GameSettingsUtilities.getOptInLocationsRequirementsLink(location)
	return FStringDevPublishChinaRequirementsLink
end

local function getDevPublishKibanaPoints(plugin, context)
	return {
		[pluginKey] = plugin,
		[contextKey] = context,
	}
end

function GameSettingsUtilities.sendAnalyticsToKibana(seriesName, throttlingPercentage, context, values)
	local points = getDevPublishKibanaPoints(gameSettingsKey, context)
	points = Cryo.Dictionary.join(points, values)
	RbxAnalyticsService:reportInfluxSeries(seriesName, points, throttlingPercentage)
end

return GameSettingsUtilities
