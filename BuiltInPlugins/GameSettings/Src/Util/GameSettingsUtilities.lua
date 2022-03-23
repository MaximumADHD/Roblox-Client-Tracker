local FStringDevPublishChinaRequirementsLink = game:GetFastString("DevPublishChinaRequirementsLink")
local FFlagGsPermissionsUseCentralizedTcCheck = game:GetFastFlag("GsPermissionsUseCentralizedTcCheck")
local FFlagRemoveUILibraryPartialHyperlink = game:GetFastFlag("RemoveUILibraryPartialHyperlink")

local RbxAnalyticsService = game:GetService("RbxAnalyticsService")
local RunService = game:GetService("RunService")

local GameSettingsPolicy = game:GetService("PluginPolicyService"):getPluginPolicy("GameSettings")

local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)
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

function GameSettingsUtilities.isTeamCreateEnabled()
	-- The endpoint to check this fails a permission error if you do not have Manage, so we have
	-- to check it with a hack. In non-TC games you are running both client/server in Edit, but in
	-- TC you are only running the client. The server is run by RCC
	return RunService:IsEdit() and not RunService:IsServer()
end

function GameSettingsUtilities.calculateTextSize(text, textSize, font)
	assert(FFlagRemoveUILibraryPartialHyperlink)

	local hugeFrameSizeNoTextWrapping = Vector2.new(5000, 5000)
	return game:GetService('TextService'):GetTextSize(text, textSize, font, hugeFrameSizeNoTextWrapping)
end

return GameSettingsUtilities
