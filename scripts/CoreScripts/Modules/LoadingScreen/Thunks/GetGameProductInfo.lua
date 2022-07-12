local CoreGui = game:GetService("CoreGui")
local MarketplaceService = game:GetService("MarketplaceService")

local LoadingScreen = CoreGui.RobloxGui.Modules.LoadingScreen
local SetGameProductInfo = require(LoadingScreen.Actions.SetGameProductInfo)

return function()
	return function(store)
		coroutine.wrap(function()
			while game.PlaceId <= 0 do
				wait()
			end
			local success, result = pcall(function()
				local productInfo = MarketplaceService:GetProductInfo(game.PlaceId)
				store:dispatch(SetGameProductInfo(productInfo))
			end)
			if not success then
				print("LoadingScreen:GetGameProductInfo: %s", result)
			end
		end)()
	end
end
