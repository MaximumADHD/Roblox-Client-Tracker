--[[
	functionality to check fast flags
]]

local FastFlags = {}

function FastFlags.isPlaceFilesGameSettingsSerializationOn()
	local flagExists, flagIsOn = pcall(function () return settings():GetFFlag("PlaceFilesGameSettingsSerialization4") end)
	return flagExists and flagIsOn
end

return FastFlags
