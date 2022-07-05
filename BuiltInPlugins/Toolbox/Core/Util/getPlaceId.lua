local Plugin = script:FindFirstAncestor("Toolbox")
local DebugFlags = require(Plugin.Core.Util.DebugFlags)

local function getPlaceId()
	-- while game.PlaceId is normally a safe call, it's possible that the code might be executed by tests
	-- outside the context of an open place.
	local placeId = -1
	local success, result = pcall(function()
		placeId = game.PlaceId
	end)
	if not success and DebugFlags.shouldDebugWarnings() then
		warn(result)
	end
	return placeId
end

return getPlaceId
