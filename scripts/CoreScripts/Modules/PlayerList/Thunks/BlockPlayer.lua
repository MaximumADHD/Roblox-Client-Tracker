local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local BlockingUtility = require(RobloxGui.Modules.BlockingUtility)

local PlayerList = script.Parent.Parent

-- Actions
local SetPlayerIsBlocked = require(PlayerList.Actions.SetPlayerIsBlocked)

local function BlockPlayer(player)
	return function(store)
		coroutine.wrap(function()
			if BlockingUtility:BlockPlayerAsync(player) then
				store:dispatch(SetPlayerIsBlocked(player, true))
			end
		end)()
	end
end

return BlockPlayer