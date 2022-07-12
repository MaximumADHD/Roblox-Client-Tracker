local CoreGui = game:GetService("CoreGui")
local SetUniverseId = require(CoreGui.RobloxGui.Modules.LoadingScreen.Actions.SetUniverseId)

return function()
	return function(store)
		coroutine.wrap(function()
			while game.GameId <= 0 do
				wait()
			end
			local uid = game.GameId
			while game.PlaceId <= 0 do
				wait()
			end
			local pid = game.PlaceId
			store:dispatch(SetUniverseId({
				universeId = uid,
				placeId = pid,
			}))
		end)()
	end
end
