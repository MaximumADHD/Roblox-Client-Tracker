local Root = script.Parent.Parent
local Players = game:GetService("Players")
local AnalyticsService = game:GetService("RbxAnalyticsService")
local MarketplaceService = game:GetService("MarketplaceService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")

local GetFFlagEnableLuobuInGameUpsell = require(Root.Flags.GetFFlagEnableLuobuInGameUpsell)
local GetFFlagEnableAmazonInGameUpsell = require(Root.Flags.GetFFlagEnableAmazonInGameUpsell)

local FFlagPPExpandedAnalyticPlatforms = game:DefineFastFlag("PPExpandedAnalyticPlatforms", false)

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
		if FFlagPPExpandedAnalyticPlatforms then
			local platformStr = "UNKNOWN"
			if platform == Enum.Platform.Windows then
				platformStr = "Windows"
			elseif platform == Enum.Platform.OSX then
				platformStr = "OSX"
			elseif platform == Enum.Platform.IOS then
				platformStr = "IOS"
			elseif platform == Enum.Platform.Android then
				if GetFFlagEnableAmazonInGameUpsell() then
					local useragent = HttpService:GetUserAgent()
					if string.find(useragent, "AmazonAppStore") then
						platformStr = "Amazon"
					else
						platformStr = "Android"
					end
				else
					platformStr = "Android"
				end
			elseif platform == Enum.Platform.XBoxOne then
				platformStr = "XBoxOne"
			elseif platform == Enum.Platform.UWP then
				platformStr = "UWP"
			end

			if GetFFlagEnableLuobuInGameUpsell() then
				platformStr += "-Luobu"
			end

			return platformStr
		else
			if platform == Enum.Platform.Windows then return "Windows"
			elseif platform == Enum.Platform.OSX then return "OSX"
			elseif platform == Enum.Platform.IOS then return "IOS"
			elseif platform == Enum.Platform.Android then return "Android"
			elseif platform == Enum.Platform.XBoxOne then return "XBoxOne"
			elseif platform == Enum.Platform.UWP then return "UWP"
			end
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

	function service.signalPurchaseSuccess(id, infoType, salePrice, result)
		if infoType == Enum.InfoType.Product then
			MarketplaceService:SignalClientPurchaseSuccess(result.receipt, Players.LocalPlayer.UserId, id)
		else
			MarketplaceService:ReportAssetSale(id, salePrice)
		end
	end

	function service.signalPremiumUpsellShownPremium()
		AnalyticsService:SetRBXEvent("client", "InGamePrompt", "PremiumUpsellShownPremium", { gameID = game.GameId })
		ReportPlatformCounter("PremiumUpsellShownPremium")
	end

	function service.signalPremiumUpsellShownNonPremium()
		AnalyticsService:SetRBXEvent("client", "InGamePrompt", "PremiumUpsellShownNonPremium", { gameID = game.GameId })
		ReportPlatformCounter("PremiumUpsellShownNonPremium")
	end

	function service.signalPremiumUpsellConfirmed()
		AnalyticsService:SetRBXEvent("client", "InGamePrompt", "PremiumUpsellConfirmed", { gameID = game.GameId })
		ReportPlatformCounter("PremiumUpsellConfirmed")
	end

	function service.signalPremiumUpsellPrecheckFail()
		AnalyticsService:SetRBXEvent("client", "InGamePrompt", "PremiumUpsellPrecheckFail", { gameID = game.GameId })
		ReportPlatformCounter("PremiumUpsellPrecheckFail")
	end

	function service.signalPremiumUpsellInvalidProducts()
		AnalyticsService:SetRBXEvent("client", "InGamePrompt", "PremiumUpsellInvalidProducts", { gameID = game.GameId })
		ReportPlatformCounter("PremiumUpsellInvalidProducts")
	end

	function service.signalPremiumUpsellInvalidPlatform()
		AnalyticsService:SetRBXEvent("client", "InGamePrompt", "PremiumUpsellInvalidPlatform", { gameID = game.GameId })
		ReportPlatformCounter("PremiumUpsellInvalidPlatform")
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

	function service.signalXboxInGamePurchaseCanceled(productId, requestType, iapProductId)
		ReportEvent("XboxPaymentsInGamePurchaseCanceled", {
			gameID = game.GameId,
			productId = productId,
			requestType = requestType,
			iapProductId = iapProductId or "",
		})
		if not RunService:IsStudio() then
			AnalyticsService:ReportCounter("XboxPaymentsInGamePurchaseCanceled")
		end
	end

	function service.signalXboxInGamePurchaseSuccess(productId, requestType, iapProductId)
		ReportEvent("XboxPaymentsInGamePurchaseSuccess", {
			gameID = game.GameId,
			productId = productId,
			requestType = requestType,
			iapProductId = iapProductId or "",
		})
		if not RunService:IsStudio() then
			AnalyticsService:ReportCounter("XboxPaymentsInGamePurchaseSuccess")
		end
	end

	function service.signalXboxInGamePurchaseFailure(productId, requestType, iapProductId)
		ReportEvent("XboxPaymentsInGamePurchaseFailure", {
			gameID = game.GameId,
			productId = productId,
			requestType = requestType,
			iapProductId = iapProductId or "",
		})
		if not RunService:IsStudio() then
			AnalyticsService:ReportCounter("XboxPaymentsInGamePurchaseFailure")
		end
	end

	function service.signalTwoSVSettingsErrorShown(productId, requestType)
		ReportEvent("2SVSettingsErrorShown", {
			gameID = game.GameId,
			productId = productId,
			requestType = requestType,
		}) 
		ReportPlatformCounter("2SVSettingsErrorShown")
	end

	function service.signalTwoSVSettingsErrorConfirmed(productId, requestType)
		ReportEvent("2SVSettingsErrorConfirmed", {
			gameID = game.GameId,
			productId = productId,
			requestType = requestType,
		}) 
		ReportPlatformCounter("2SVSettingsErrorConfirmed")
	end

	return service
end

return Analytics
