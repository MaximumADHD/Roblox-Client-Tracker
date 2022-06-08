local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local BlockingUtility = require(RobloxGui.Modules.BlockingUtility)

local TnsModule = script.Parent.Parent
local ShowToast = require(TnsModule.Actions.ShowToast)

local function BlockPlayer(player, doneToastText)
	return function(store)
		coroutine.wrap(function()
			if BlockingUtility:BlockPlayerAsync(player) then
				store:dispatch(ShowToast(doneToastText))
			end
		end)()
	end
end

return BlockPlayer
