local CorePackages = game:GetService("CorePackages")
local BlockingUtility = require(CorePackages.Workspace.Packages.BlockingUtility)

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