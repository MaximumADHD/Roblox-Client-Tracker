--Remove with isNewGamepadMenuEnabled

local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.AppTempCommon.Common.Action)

return Action("SET_SOURCE_LANGUAGE_CODE", function(languageCode)
	return {
		languageCode = languageCode,
	}
end)