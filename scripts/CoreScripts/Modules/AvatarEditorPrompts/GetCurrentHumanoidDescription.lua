local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")

local Promise = require(CorePackages.Promise)

return function()
	return Promise.new(function(resolve, reject)
		local success, result = pcall(function()
			return Players:GetHumanoidDescriptionFromUserId(Players.LocalPlayer.UserId)
		end)

		if success then
			resolve(result)
		else
			reject()
		end
	end)
end