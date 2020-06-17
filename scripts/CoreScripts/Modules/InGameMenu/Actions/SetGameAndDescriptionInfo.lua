local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.AppTempCommon.Common.Action)

return Action("SET_GAME_NAME_AND_DESCRIPTIONS", function(gameNameLocaleMap, gameDescriptionsLocaleMap, sourceLocale)
	return {
		gameNames = gameNameLocaleMap,
		gameDescriptions = gameDescriptionsLocaleMap,
		sourceLocale = sourceLocale,
	}
end)