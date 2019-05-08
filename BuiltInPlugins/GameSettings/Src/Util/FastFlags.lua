--[[
	functionality to check fast flags
]]

local FastFlags = {}

function FastFlags.isMorphingPanelWidgetsStandardizationOn()
	local flagExists, flagIsOn = pcall(function () return settings():GetFFlag("MorphingPanelWidgetsStandardization") end)
	return flagExists and flagIsOn
end

function FastFlags.isPlaceFilesGameSettingsSerializationOn()
	local flagExists, flagIsOn = pcall(function () return settings():GetFFlag("PlaceFilesGameSettingsSerialization4") end)
	return flagExists and flagIsOn
end

return FastFlags
