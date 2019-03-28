--[[
	For Game-Table purposes, the server only accepts certain locales.
]]

local supportedLocalesSet = {
	["es"] = true,
	["en"] = true,
	["pt"] = true,
	["de"] = true,
	["fr"] = true,
	["zh-hans"] = true,
	["zh-hant"] = true,
	["ko"] = true,
}

local function SetToList(tableAsSet)
	local result = {}
	for key,_ in pairs(tableAsSet) do
		table.insert(result, key)
	end
	return result
end

local function IsLocaleSupported(localeId)
	return supportedLocalesSet[localeId] or false
end

local function GetSupportedLocalesList()
	local localesList = SetToList(supportedLocalesSet)
	table.sort(localesList)
	return localesList
end

--[[
	Converts locales to lower-case.
]]
local function NormalizeLocaleIdForWeb(localeId)
	return localeId:lower()
end

return {
	IsLocaleSupported = IsLocaleSupported,
	GetSupportedLocalesList = GetSupportedLocalesList,
	NormalizeLocaleIdForWeb = NormalizeLocaleIdForWeb,
}
