--[[
	IXP Test flags and enrollment check for the "Larger Robux Upsell" experiment.

	The returned table contains:

	- isEnabled - True if the experiment is enabled at all
	- isEnabledForAll - True if the feature is enabled for all users
	- isUserEnrolled - Function that returns whether the user is enrolled in the experiment,
	  given the layer variables
]]
game:DefineFastFlag("InGameLargerRobuxUpsellIXP", false)
game:DefineFastFlag("InGameLargerRobuxUpsellIXPRolledOut", false)
game:DefineFastFlag("InGameLargerRobuxUpsellEnabled", false)
game:DefineFastString("InGameLargerRobuxUpsellIXPLayerParam", "isInExperiment")

local function isEnabledForAll()
	return game:GetFastFlag("InGameLargerRobuxUpsellEnabled")
end

local function isRolledOut()
	return isEnabledForAll() or game:GetFastFlag("InGameLargerRobuxUpsellIXPRolledOut")
end

local function isEnabled()
	return isEnabledForAll() or game:GetFastFlag("InGameLargerRobuxUpsellIXP")
end

local function isUserEnrolled(experimentLayer): boolean
	if isEnabledForAll() then
		return true
	elseif not isEnabled() then
		return false
	end

	experimentLayer = experimentLayer or {}

	local layerParam = game:GetFastString("InGameLargerRobuxUpsellIXPLayerParam")

	if experimentLayer[layerParam] == nil then
		return isRolledOut()
	else
		return experimentLayer[layerParam]
	end
end

return {
	isEnabled = isEnabled,
	isEnabledForAll = isEnabledForAll,
	isUserEnrolled = isUserEnrolled,
}
