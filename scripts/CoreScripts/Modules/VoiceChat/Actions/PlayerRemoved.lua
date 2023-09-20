local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Action = require(CorePackages.Rodux).makeActionCreator
local t = require(CorePackages.Packages.t)
local maybeAssert = require(RobloxGui.Modules.InGameChat.BubbleChat.Helpers.maybeAssert)

-- PlayerRemoved is fired when someone leaves the game, whether or not they
-- leave the voice call.
return Action(script.Name, function(userId)
	maybeAssert(tonumber(userId) ~= nil)

	return {
		userId = tostring(userId),
	}
end)
