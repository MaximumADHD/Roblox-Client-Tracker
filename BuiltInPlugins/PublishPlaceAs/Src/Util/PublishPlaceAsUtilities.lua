local FFlagLuobuDevPublishLua = game:GetFastFlag("LuobuDevPublishLua")
local FStringDevPublishChinaRequirementsLink = game:GetFastString("DevPublishChinaRequirementsLink")
local FFlagLuobuDevPublishAnalyticsKeys = game:GetFastFlag("LuobuDevPublishAnalyticsKeys")
local FFlagLuobuDevPublishAnalytics = game:GetFastFlag("LuobuDevPublishAnalytics")

local RbxAnalyticsService = game:GetService("RbxAnalyticsService")
local PublishPlaceAsPolicy = game:GetService("PluginPolicyService"):getPluginPolicy("PublishPlaceAs")

local Plugin = script.Parent.Parent.Parent

local Cryo = require(Plugin.Packages.Cryo)

local KeyProvider = require(Plugin.Src.Util.KeyProvider)

local contextKey = FFlagLuobuDevPublishAnalyticsKeys and KeyProvider.getContextKeyName() or "context"
local pluginKey = FFlagLuobuDevPublishAnalyticsKeys and KeyProvider.getPluginKeyName() or "plugin"
local publishPlaceAsKey = FFlagLuobuDevPublishAnalyticsKeys and KeyProvider.getPublishPlaceAsKeyName() or "PublishPlaceAs"

local PublishPlaceAsUtilities =  {}

function PublishPlaceAsUtilities.shouldShowDevPublishLocations()
    assert(FFlagLuobuDevPublishLua)

    return PublishPlaceAsPolicy["ShowOptInLocations"]
end

function PublishPlaceAsUtilities.getOptInLocationsRequirementsLink(location)
	assert(FFlagLuobuDevPublishLua)

	return FStringDevPublishChinaRequirementsLink
end

function PublishPlaceAsUtilities.getPlayerAppDownloadLink(location)
	assert(FFlagLuobuDevPublishLua)

	return PublishPlaceAsPolicy["PlayerAppDownloadLink"][location]
end

local function getDevPublishKibanaPoints(plugin, context)
	assert(FFlagLuobuDevPublishAnalytics)
	return {
		[pluginKey] = plugin,
		[contextKey] = context,
	}
end

function PublishPlaceAsUtilities.sendAnalyticsToKibana(seriesName, throttlingPercentage, context, values)
	assert(FFlagLuobuDevPublishAnalytics)
	local points = getDevPublishKibanaPoints(publishPlaceAsKey, context)
	points = Cryo.Dictionary.join(points, values)
	RbxAnalyticsService:reportInfluxSeries(seriesName, points, throttlingPercentage)
end

return PublishPlaceAsUtilities
