--[[
	For Game-Table purposes, the server only accepts certain locales.
]]

local StudioLocalizationAllowHan = settings():GetFFlag("StudioLocalizationAllowHan")
local StudioLocalizationAllowKorean = settings():GetFFlag("StudioLocalizationAllowKorean")

local supportedLocalesSet = {
	["es"] = true,
	["en"] = true,
	["pt"] = true,
	["de"] = true,
	["fr"] = true,
}

if StudioLocalizationAllowHan then
	supportedLocalesSet["zh-hans"] = true
	supportedLocalesSet["zh-hant"] = true
end

if StudioLocalizationAllowKorean then
	supportedLocalesSet["ko"] = true
end


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
