local CorePackages = game:GetService("CorePackages")
local BlockingUtility = require(CorePackages.Workspace.Packages.BlockingUtility)

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