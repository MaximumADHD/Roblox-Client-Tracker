local SharedFlags = script:FindFirstAncestor("SharedFlags")
local Packages = SharedFlags.Parent
local AppCommonLib = require(Packages.AppCommonLib)
local rolloutByApplicationId = AppCommonLib.rolloutByApplicationId

game:DefineFastFlag("GameInviteShortUrlEnabled", false)
game:DefineFastInt("GameInviteShortUrlRollout", 0)

local getFastInt = function()
	return game:GetFastInt("GameInviteShortUrlRollout")
end

local getRolloutByApplicationId
return function()
	if game:GetFastFlag("GameInviteShortUrlEnabled") then
		if not getRolloutByApplicationId then
			getRolloutByApplicationId = rolloutByApplicationId(getFastInt)
		end

		return getRolloutByApplicationId()
	end

	return false
end
