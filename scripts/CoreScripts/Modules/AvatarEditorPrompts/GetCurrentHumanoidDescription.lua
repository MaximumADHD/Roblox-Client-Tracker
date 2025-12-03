local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")

local Promise = require(CorePackages.Packages.Promise)

return function()
	return Promise.new(function(resolve, reject)
		local success, result = pcall(function()
			-- SBT-5736: `any` cast present due to in-flight PR to rename methods.
			-- Will be removed when that PR is merged.
			if game:GetEngineFeature("AsyncRenamesUsedInLuaApps") then
				return (Players :: any):GetHumanoidDescriptionFromUserIdAsync((Players.LocalPlayer :: Player).UserId)
			else
				return (Players :: any):GetHumanoidDescriptionFromUserId((Players.LocalPlayer :: Player).UserId)
			end
		end)

		if success then
			resolve(result)
		else
			reject()
		end
	end)
end
