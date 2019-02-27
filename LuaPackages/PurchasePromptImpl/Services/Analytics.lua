local Players = game:GetService("Players")

local MarketplaceService = game:GetService("MarketplaceService")

local Analytics = {}

function Analytics.new()
	local service = {}

	setmetatable(service, {
		__tostring = function()
			return "Service(Analytics)"
		end
	})

	function service.reportRobuxUpsellStarted()
		return MarketplaceService:ReportRobuxUpsellStarted()
	end

	function service.signalPurchaseSuccess(id, infoType, salePrice, result)
		if infoType == Enum.InfoType.Product then
			MarketplaceService:SignalClientPurchaseSuccess(result.receipt, Players.LocalPlayer.UserId, id)
		else
			MarketplaceService:ReportAssetSale(id, salePrice)
		end
	end

	return service
end

return Analytics