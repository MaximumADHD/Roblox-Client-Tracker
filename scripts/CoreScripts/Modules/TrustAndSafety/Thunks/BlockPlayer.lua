local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local BlockingUtility = require(RobloxGui.Modules.BlockingUtility)

local function BlockPlayer(player)
	return function(store)
		coroutine.wrap(function()
			if BlockingUtility:BlockPlayerAsync(player) then
				-- NO-OP
			end
		end)()
	end
end

return BlockPlayer
