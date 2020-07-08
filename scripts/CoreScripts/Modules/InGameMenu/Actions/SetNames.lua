--Remove with isNewGamepadMenuEnabled

local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.AppTempCommon.Common.Action)

return Action("SET_GAME_NAMES", function(newNames)
	return {
		newNames = newNames,
	}
end)