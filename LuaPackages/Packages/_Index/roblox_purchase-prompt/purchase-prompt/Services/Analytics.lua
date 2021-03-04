local Players = game:GetService("Players")
local AnalyticsService = game:GetService("RbxAnalyticsService")
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

	function service.reportNativeUpsellStarted(productId)
		AnalyticsService:SendEventImmediately("mobile", "robuxSelected", "mobileUpsell", {
			productId = productId,
		})
	end

	function service.signalPurchaseSuccess(id, infoType, salePrice, result)
		if infoType == Enum.InfoType.Product then
			MarketplaceService:SignalClientPurchaseSuccess(result.receipt, Players.LocalPlayer.UserId, id)
		else
			MarketplaceService:ReportAssetSale(id, salePrice)
		end
	end

	function service.signalPremiumUpsellShownPremium()
		AnalyticsService:SetRBXEvent("client", "InGamePrompt", "PremiumUpsellShownPremium", { gameID = game.GameId })
	end

	function service.signalPremiumUpsellShownNonPremium()
		AnalyticsService:SetRBXEvent("client", "InGamePrompt", "PremiumUpsellShownNonPremium", { gameID = game.GameId })
	end

	function service.signalAdultLegalTextShown()
		AnalyticsService:SetRBXEvent("client", "InGamePrompt", "AdultLegalTextShown", { gameID = game.GameId })
	end

	return service
end

return Analytics
