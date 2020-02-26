local CorePackages = game:GetService("CorePackages")
local LocalizationService = game:GetService("LocalizationService")

local NumberLocalization = require(CorePackages.Localization.NumberLocalization)
local RoundingBehaviour = require(CorePackages.Localization.RoundingBehaviour)

local FFlagPlayerListDesignUpdate = settings():GetFFlag("PlayerListDesignUpdate")
local FFlagPlayerListFixStatFlickering = game:DefineFastFlag("PlayerListFixStatFlickering", false)

local ABBREVIATE_LENGTH = 7

-- Formats a number by adding commas seperation.
-- e.g -1000000.57 -> -1,000,000.57
local function formatNumber(value)
	local _,_,minusSign, int, fraction = tostring(value):find("([-]?)(%d+)([.]?%d*)")
	-- Reverses the int then adds a , every 3 digits.
	int = int:reverse():gsub("%d%d%d", "%1,")
	-- Reverses the int and removes any extra , at the start.
	int = int:reverse():gsub("^,", "")
	return minusSign .. int .. fraction
end

if FFlagPlayerListFixStatFlickering then
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
else
	return function(statValue, abbreviate)
		if statValue == nil then
			return "-"
		elseif type(statValue) == "number" then
			if FFlagPlayerListDesignUpdate then
				if abbreviate then
					return NumberLocalization.abbreviate(statValue, LocalizationService.RobloxLocaleId, RoundingBehaviour.Truncate)
				else
					return NumberLocalization.localize(statValue, LocalizationService.RobloxLocaleId)
				end
			else
				return formatNumber(statValue)
			end
		end
		return tostring(statValue)
	end
end
