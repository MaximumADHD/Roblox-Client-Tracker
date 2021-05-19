local Players = game:GetService("Players")
local AnalyticsService = game:GetService("RbxAnalyticsService")
local MarketplaceService = game:GetService("MarketplaceService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local Analytics = {}

function Analytics.new()
	local service = {}

	setmetatable(service, {
		__tostring = function()
			return "Service(Analytics)"
		end,
		-- MockAnalytics needs to see the functions for automated spy creation
		__index = function(table, key)
			return table[key]
		end,
	})

	local function GetPlatformString()
		local platform = UserInputService:GetPlatform()
		if platform == Enum.Platform.Windows then return "Windows"
		elseif platform == Enum.Platform.OSX then return "OSX"
		elseif platform == Enum.Platform.IOS then return "IOS"
		elseif platform == Enum.Platform.Android then return "Android"
		elseif platform == Enum.Platform.XBoxOne then return "XBoxOne"
		elseif platform == Enum.Platform.UWP then return "UWP"
		end
	end
	
	local function ReportPlatformCounter(eventName)
		if RunService:IsStudio() then
			return
		end
		AnalyticsService:ReportCounter(eventName..GetPlatformString())
	end

	local function ReportEvent(eventName, params)
		if RunService:IsStudio() then
			return
		end
		AnalyticsService:SetRBXEvent("client", "InGamePrompt", eventName, params) 
	end

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

	function service.signalFailedPurchasePostUpsell()
		ReportPlatformCounter("FailedBalanceCheckPostUpsell")
	end

	function service.signalProductPurchaseShown(productId, requestType)
		ReportEvent("ProductPurchaseShown", {
			gameID = game.GameId,
			productId = productId,
			requestType = tostring(requestType),
		}) 
		ReportPlatformCounter("ProductPurchaseShown")
	end

	function service.signalProductPurchaseUpsellShown(productId, requestType, iapProductId)
		ReportEvent("ProductPurchaseUpsellShown", {
			gameID = game.GameId,
			productId = productId,
			requestType = tostring(requestType),
			iapProductId = iapProductId,
		}) 
		ReportPlatformCounter("ProductPurchaseUpsellShown")
	end

	function service.signalProductPurchaseConfirmed(productId, requestType)
		ReportEvent("ProductPurchaseConfirmed", {
			gameID = game.GameId,
			productId = productId,
			requestType = tostring(requestType),
		}) 
		ReportPlatformCounter("ProductPurchaseConfirmed")
	end

	function service.signalProductPurchaseUpsellConfirmed(productId, requestType, iapProductId)
		ReportEvent("ProductPurchaseUpsellConfirmed", {
			gameID = game.GameId,
			productId = productId,
			requestType = tostring(requestType),
			iapProductId = iapProductId,
		}) 
		ReportPlatformCounter("ProductPurchaseUpsellConfirmed")
	end

	function service.signalScaryModalShown(productId, requestType, iapProductId)
		ReportEvent("ScaryModalShown", {
			gameID = game.GameId,
			productId = productId,
			requestType = requestType,
			iapProductId = iapProductId or "",
		}) 
		ReportPlatformCounter("ScaryModalShown"..requestType)
	end

	function service.signalScaryModalConfirmed(productId, requestType, iapProductId)
		ReportEvent("ScaryModalConfirmed", {
			gameID = game.GameId,
			productId = productId,
			requestType = requestType,
			iapProductId = iapProductId or "",
		}) 
		ReportPlatformCounter("ScaryModalConfirmed"..requestType)
	end

	function service.signalScaryModalCanceled(productId, requestType, iapProductId)
		ReportEvent("ScaryModalCanceled", {
			gameID = game.GameId,
			productId = productId,
			requestType = requestType,
			iapProductId = iapProductId or "",
		}) 
		ReportPlatformCounter("ScaryModalCanceled"..requestType)
	end

	return service
end

return Analytics
