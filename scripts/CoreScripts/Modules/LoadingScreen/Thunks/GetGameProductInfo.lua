local CoreGui = game:GetService("CoreGui")
local MarketplaceService = game:GetService("MarketplaceService")

local LoadingScreen = CoreGui.RobloxGui.Modules.LoadingScreen
local SetGameProductInfo = require(LoadingScreen.Actions.SetGameProductInfo)

return function(placeId)
	return function(store)
		coroutine.wrap(function()
			local pid = placeId
			if not pid or pid <= 0 then
				while game.PlaceId <= 0 do
					wait()
				end
				pid = game.PlaceId
			end
			local success, result = pcall(function()
				local productInfo = MarketplaceService:GetProductInfo(pid)
				store:dispatch(SetGameProductInfo(productInfo))
			end)
			if not success then
				print("LoadingScreen:GetGameProductInfo: %s", result)
			end
		end)()
	end
end
