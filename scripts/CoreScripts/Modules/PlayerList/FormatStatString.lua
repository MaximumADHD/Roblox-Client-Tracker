local CorePackages = game:GetService("CorePackages")
local LocalizationService = game:GetService("LocalizationService")

local NumberLocalization = require(CorePackages.Localization.NumberLocalization)
local RoundingBehaviour = require(CorePackages.Localization.RoundingBehaviour)

local ABBREVIATE_LENGTH = 7

return function(statValue)
	if statValue == nil then
		return "-"
	elseif type(statValue) == "number" then
		local abbreviate = tostring(statValue):len() >= ABBREVIATE_LENGTH
		if abbreviate then
			return NumberLocalization.abbreviate(statValue, LocalizationService.RobloxLocaleId, RoundingBehaviour.Truncate)
		else
			return NumberLocalization.localize(statValue, LocalizationService.RobloxLocaleId)
		end
	end
	return tostring(statValue)
end
