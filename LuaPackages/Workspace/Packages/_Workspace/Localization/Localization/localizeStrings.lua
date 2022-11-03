--!nonstrict
local CorePackages = game:GetService("CorePackages")
local ArgCheck = require(CorePackages.Workspace.Packages.ArgCheck)

local function localizeStrings(localization, stringsToBeLocalized)
	local localizedStrings = {}

	for stringName, stringInfo in pairs(stringsToBeLocalized) do
		if typeof(stringInfo) == "table" then
			if typeof(stringInfo[1]) == "string" then
				local success, result = pcall(function()
					return localization:Format(stringInfo[1], stringInfo)
				end)

				ArgCheck.isEqual(success, true, string.format(
					"LocalizationConsumer finding value for translation key[%s]: %s", stringName, stringInfo[1]))

				localizedStrings[stringName] = success and result or ""
			else
				error(string.format("%s[1] in stringsToBeLocalized must be a string, got %s instead",
					stringName, typeof(stringInfo[1])))
			end
		elseif typeof(stringInfo) == "string" then
			local success, result = pcall(function()
				return localization:Format(stringInfo)
			end)

			ArgCheck.isEqual(success, true, string.format(
				"LocalizationConsumer finding value for translation key[%s]: %s", stringName, stringInfo))

			localizedStrings[stringName] = success and result or ""
		else
			error(string.format("%s in stringsToBeLocalized must be a string or table, got %s instead",
				stringName, typeof(stringInfo)))
		end
	end

	return localizedStrings
end

return localizeStrings
