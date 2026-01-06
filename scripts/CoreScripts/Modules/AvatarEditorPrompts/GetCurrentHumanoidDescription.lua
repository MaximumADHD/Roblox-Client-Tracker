local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")

local Promise = require(CorePackages.Packages.Promise)

return function()
	return Promise.new(function(resolve, reject)
		local success, result = pcall(function()
			if game:GetEngineFeature("AsyncRenamesUsedInLuaApps") then
				return Players:GetHumanoidDescriptionFromUserIdAsync((Players.LocalPlayer :: Player).UserId)
			else
				return (Players :: never):GetHumanoidDescriptionFromUserId((Players.LocalPlayer :: Player).UserId)
			end
		end)

		if success then
			resolve(result)
		else
			reject()
		end
	end)
end
