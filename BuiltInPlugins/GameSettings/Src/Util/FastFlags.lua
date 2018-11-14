--[[
	functionality to check fast flags
]]

local FastFlags = {}

local isEngineMorphingHumanoidDescriptionSystemOn = nil

function FastFlags.isMorphingHumanoidDescriptionSystemOn()	
	local MorphingPluginFlagExists, MorphingPluginFlagIsOn = pcall(function () return settings():GetFFlag("MorphingHumanoidDescriptionSystemPlugin") end)
	return MorphingPluginFlagExists and MorphingPluginFlagIsOn and isEngineMorphingHumanoidDescriptionSystemOn()
end

-- NOTE: this function should be the same as HumanoidDescription::IsFeatureFlagEnabled(), found in Client\App\humanoid\HumanoidDescription.cpp
isEngineMorphingHumanoidDescriptionSystemOn = function()
	local MorphingFlagExists, MorphingFlagIsOn = pcall(function () return settings():GetFFlag("MorphingHumanoidDescriptionSystemEngine") end)

	return MorphingFlagExists and MorphingFlagIsOn
end

return FastFlags
