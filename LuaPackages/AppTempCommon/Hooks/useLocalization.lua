--[[
	A hook used to localize strings (equivalent to withLocalization).
]]

local CorePackages = game:GetService("CorePackages")
local LocalizationService = game:GetService("LocalizationService")

local React = require(CorePackages.Packages.React)
local ArgCheck = require(CorePackages.ArgCheck)
local RobloxLocaleIdKey = require(CorePackages.Localization.RobloxLocaleIdKey)
local LocalizationRoactContext = require(CorePackages.Localization.LocalizationRoactContext)
local localizeStrings = require(CorePackages.Localization.localizeStrings)
local useSignal = require(script.Parent.useSignal)

type FormatTable = {any}

local function useLocalization(stringsToBeLocalized: {[string]: string | FormatTable | nil})
	local localization: any = React.useContext(LocalizationRoactContext)

	local locale, setLocale = React.useState(LocalizationService.RobloxLocaleId)

	local updateLocalization = React.useCallback(function(newLocale)
		newLocale = localization:GetLocale()
		if newLocale ~= locale then
			setLocale(newLocale)
		end
	end, {localization})

	useSignal(localization.changed, updateLocalization)

	ArgCheck.isType(stringsToBeLocalized, "table", "LocalizationConsumer.props.stringsToBeLocalized")

	local localizedStrings = localizeStrings(localization, stringsToBeLocalized)
	localizedStrings[RobloxLocaleIdKey] = locale

	return localizedStrings
end

return useLocalization
