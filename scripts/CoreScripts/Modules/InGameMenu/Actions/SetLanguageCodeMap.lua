--Remove with isNewGamepadMenuEnabled

local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.AppTempCommon.Common.Action)

return Action("SET_LANGUAGE_CODE_MAP", function(languageCodeMap)
	return {
		languageCodeMap = languageCodeMap,
	}
end)