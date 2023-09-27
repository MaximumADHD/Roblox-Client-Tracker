--!nonstrict
local Root = script.Parent.Parent
local Players = game:GetService("Players")
local AnalyticsService = game:GetService("RbxAnalyticsService")
local MarketplaceService = game:GetService("MarketplaceService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")

local getPaymentPlatform = require(Root.Utils.getPaymentPlatform)

local GetFFlagEnableLuobuInGameUpsell = require(Root.Flags.GetFFlagEnableLuobuInGameUpsell)
local GetFFlagUsePlatformNameForUnknown = require(Root.Flags.GetFFlagUsePlatformNameForUnknown)
local GetFFlagEnableQuestIAPAnalytics = require(Root.Flags.GetFFlagEnableQuestIAPAnalytics)

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
		local platformStr = "UNKNOWN"
		if GetFFlagUsePlatformNameForUnknown() then
			platformStr = tostring(platform)
		end
		
		if platform == Enum.Platform.Windows then
			platformStr = "Windows"
		elseif platform == Enum.Platform.OSX then
			platformStr = "OSX"
		elseif platform == Enum.Platform.IOS then
			platformStr = "IOS"
		elseif platform == Enum.Platform.Android then
			local useragent = HttpService:GetUserAgent()
			if string.find(useragent, "AmazonAppStore") then
				platformStr = "Amazon"
			else
				platformStr = "Android"
			end
			if GetFFlagEnableQuestIAPAnalytics() and string.find(useragent, "OculusQuest3Store") then
				platformStr = "Quest"
			end
		elseif platform == Enum.Platform.XBoxOne then
			platformStr = "XBoxOne"
		elseif platform == Enum.Platform.UWP then
			platformStr = "UWP"
		elseif platform == Enum.Platform.PS4 then
			platformStr = "PlayStation"
		end

		if GetFFlagEnableLuobuInGameUpsell() then
			platformStr += "-Luobu"
		end

		return platformStr
	end

	local function ReportPlatformCounter(eventName)
		if RunService:IsStudio() then
			return
		end
		AnalyticsService:ReportCounter(eventName..GetPlatformString())
	end

	function service.sendCounter(eventName: string)
		if RunService:IsStudio() then
			return
		end
		AnalyticsService:ReportCounter(eventName)
	end

	local function ReportEvent(eventName, params)
		if RunService:IsStudio() then
			return
		end
		AnalyticsService:SetRBXEvent("client", "InGamePrompt", eventName, params or {}) 
	end

	function service.signalEvent(name, data )
		ReportEvent(name, data)
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

	function service.signalRobuxUpsellInGameIXP(isInExperiment)
		ReportEvent("RobuxUpsellInGameIXP", {})
		if isInExperiment then
			ReportPlatformCounter("RobuxUpsellInGameIXP")
		end
	end

	return service
end

return Analytics
