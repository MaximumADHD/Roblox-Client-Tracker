--[[
	UIBlox may be used at "non-Roblox" permissions levels (third parties).
	They cannot access the GetEngineFeature API.
	So calls to GetEngineFeature need to be wrapped in pcall.  If the pcall fails we
	just act like the EngineFeature is off.
]]

local function GetEngineFeatureSafe(featureName): boolean
	local success, value = pcall(function()
		return game:GetEngineFeature(featureName)
	end)
	return success and value
end

return GetEngineFeatureSafe
