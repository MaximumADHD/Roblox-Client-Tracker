--[[
	IXP Test flags and enrollment check for the IBV2 experiment.

	The returned table contains:

	- isEnabled - True if the IBV2 experiment is enabled at all
	- isEnabledForAll - True if the IBV2 feature is enabled for all users
	- isUserEnrolled - Function that returns whether the user is enrolled in the experiment,
	  given the layer variables
	- useEnabled - Hook that returns whether the user is enrolled from IXP
]]
local CorePackages = game:GetService("CorePackages")
local RoactAppExperiment = require(CorePackages.Packages.RoactAppExperiment)
local useUserExperiment = RoactAppExperiment.useUserExperiment

local FFlagInspectAndBuyV2IXPEnabled = require(script.Parent.FFlagInspectAndBuyV2IXPEnabled)
local FFlagInspectAndBuyV2IXPEnabledForAll = require(script.Parent.FFlagInspectAndBuyV2IXPEnabledForAll)

local FStringInspectAndBuyV2IXPLayer = game:DefineFastString("IBV2IXPLayer", "Avatar.AvatarExperience")
local FStringInspectAndBuyV2IXPVariable = game:DefineFastString("IBV2IXPVariable", "inspectAndBuyV2Enabled")

local function isEnabledForAll()
	return FFlagInspectAndBuyV2IXPEnabledForAll
end

local function isEnabled()
	return isEnabledForAll() or FFlagInspectAndBuyV2IXPEnabled
end

local function isUserEnrolled(layers): boolean
	if isEnabledForAll() then
		return true
	elseif not isEnabled() then
		return false
	end

	local layer = layers[FStringInspectAndBuyV2IXPLayer] or {}
	return layer[FStringInspectAndBuyV2IXPVariable] or false
end

-- Hook that returns a value from IXP user layers:
-- 1. Whether the user is enrolled in InspectAndBuyV2
local function useEnabled()
	return useUserExperiment({
		FStringInspectAndBuyV2IXPLayer,
	}, function(layerVariables)
		return isUserEnrolled(layerVariables)
	end)
end

return {
	isEnabled = isEnabled,
	isEnabledForAll = isEnabledForAll,
	isUserEnrolled = isUserEnrolled,
	useEnabled = useEnabled,
	layer = FStringInspectAndBuyV2IXPLayer,
}
