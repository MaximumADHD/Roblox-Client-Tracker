--[[
	functionality to check fast flags
]]

local FastFlags = {}

local isEngineMorphingHumanoidDescriptionSystemOn = nil

function FastFlags.isMorphingHumanoidDescriptionSystemOn()
	local MorphingPluginFlagExists, MorphingPluginFlagIsOn = pcall(function () return settings():GetFFlag("MorphingHumanoidDescriptionSystemPlugin") end)
	return MorphingPluginFlagExists and MorphingPluginFlagIsOn and isEngineMorphingHumanoidDescriptionSystemOn()
end

function FastFlags.isMorphingPanelWidgetsStandardizationOn()
	local flagExists, flagIsOn = pcall(function () return settings():GetFFlag("MorphingPanelWidgetsStandardization") end)
	return flagExists and flagIsOn
end

function FastFlags.isPlaceFilesGameSettingsSerializationOn()
	local flagExists, flagIsOn = pcall(function () return settings():GetFFlag("PlaceFilesGameSettingsSerialization2") end)
	return flagExists and flagIsOn
end

-- NOTE: this function should be the same as HumanoidDescription::IsFeatureFlagEnabled(), found in Client\App\humanoid\HumanoidDescription.cpp
isEngineMorphingHumanoidDescriptionSystemOn = function()
	local MorphingFlagExists, MorphingFlagIsOn = pcall(function () return settings():GetFFlag("MorphingHumanoidDescriptionSystemEngine") end)

	return MorphingFlagExists and MorphingFlagIsOn
end

return FastFlags
