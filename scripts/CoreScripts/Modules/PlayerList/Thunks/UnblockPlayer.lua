local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local BlockingUtility = require(RobloxGui.Modules.BlockingUtility)

local PlayerList = script.Parent.Parent

-- Actions
local SetPlayerIsBlocked = require(PlayerList.Actions.SetPlayerIsBlocked)

local function UnblockPlayer(player)
	return function(store)
		coroutine.wrap(function()
			if BlockingUtility:UnblockPlayerAsync(player) then
				store:dispatch(SetPlayerIsBlocked(player, false))
			end
		end)()
	end
end

return UnblockPlayer