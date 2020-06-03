local Locales = script.Parent.Locales

local FALLBACK_LOCALE = "en-us"

local function getLocalizationContext(locale)
	local primary = Locales:FindFirstChild(locale)

	if primary ~= nil then
		return {
			locale = locale,
			translations = require(primary),
			fallbackTranslations = require(Locales:FindFirstChild(FALLBACK_LOCALE))
		}
	else
		--[[
			If the requested language is not available, fallback to
			the default; for now, this will be American English.
		]]
		local fallback = Locales:FindFirstChild(FALLBACK_LOCALE)
		return {
			locale = FALLBACK_LOCALE,
			translations = require(fallback),
		}
	end
end

return getLocalizationContext