local SocialLibraries = script.Parent.Parent
local dependencies = require(SocialLibraries.dependencies)
local throttleUserId = require(script.Parent.throttleUserId)

return function(getRolloutPercentage: () -> number)
	return function()
		local localPlayer = dependencies.Players.LocalPlayer
		if not localPlayer or not localPlayer.UserId then
			return false
		else
			return throttleUserId({ throttle = getRolloutPercentage(), userId = localPlayer.UserId })
		end
	end
end
