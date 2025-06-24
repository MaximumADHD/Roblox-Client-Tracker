--!nonstrict
--!nolint DeprecatedApi
local Root = script.Parent.Parent
local CorePackages = game:GetService("CorePackages")
local ContentProvider = game:GetService("ContentProvider")
local GuiService = game:GetService("GuiService")
local Base64 = require(Root.Utils.Base64)
local PurchaseFlow = require(Root.Enums.PurchaseFlow)

local MarketplaceService = game:GetService("MarketplaceService")
local PlatformService = nil
pcall(function()
	PlatformService = game:GetService("PlatformService")
end)

local GetFStringVNGWebshopUrl = require(CorePackages.Workspace.Packages.SharedFlags).GetFStringVNGWebshopUrl

local PurchasePromptDeps = require(CorePackages.Workspace.Packages.PurchasePromptDeps)
local UrlBuilder = PurchasePromptDeps.UrlBuilder.UrlBuilder

local BASE_URL = string.gsub(ContentProvider.BaseUrl:lower(), "/m.", "/www.")

local PlatformInterface = {}

type BaseContext = {
	analyticId: string?,
}

local function addContextToUrl(url: string, context: any): string
	for key, value in context do
		if value then
			if url:find("?") then
				url = url .. ("&%s=%s"):format(key, value)
			else
				url = url .. ("?%s=%s"):format(key, value)
			end
		end
	end
	return url
end

function PlatformInterface.new()
	local service = {}

	setmetatable(service, {
		__tostring = function()
			return "Service(PlatformInterface)"
		end,
	})

	function service.signalMockPurchasePremium()
		MarketplaceService:SignalMockPurchasePremium()
	end

	function service.startPremiumUpsell(productId)
		local url = ("%supgrades/paymentmethods?ap=%d"):format(BASE_URL, productId)

		GuiService:OpenBrowserWindow(url)
	end

	function service.startPremiumUpsellWithContext(context: BaseContext, productId)
		local url = ("%supgrades/paymentmethods?ap=%d"):format(BASE_URL, productId)
		url = addContextToUrl(url, context)
		GuiService:OpenBrowserWindow(url)
	end

	function service.startRobuxUpsellWebByFlow(purchaseFlow, productId: string)
		if purchaseFlow == PurchaseFlow.RobuxUpsellV2 or purchaseFlow == PurchaseFlow.LargeRobuxUpsell then
			GuiService:OpenBrowserWindow(("%supgrades/paymentmethods?ap=%s"):format(BASE_URL, productId))
		else
			GuiService:OpenBrowserWindow(("%sUpgrades/Robux.aspx?product_id=%s"):format(BASE_URL, productId))
		end
	end

	function service.startRobuxUpsellWebByFlowWithContext(context: BaseContext, purchaseFlow, productId: string)
		local shouldUsePaymentMethodsUrl = purchaseFlow == PurchaseFlow.RobuxUpsellV2 or purchaseFlow == PurchaseFlow.LargeRobuxUpsell
		local url = if shouldUsePaymentMethodsUrl
			then ("%supgrades/paymentmethods?ap=%s"):format(BASE_URL, productId)
			else ("%sUpgrades/Robux.aspx?product_id=%s"):format(BASE_URL, productId)

		url = addContextToUrl(url, context)
		GuiService:OpenBrowserWindow(url)
	end

	function service.openSecuritySettings(challengeResponse: string?)
		if challengeResponse then
			--[[ Encodes the challenge response as Base64 prior to attaching it as 
			a query parameter to the webview URL, for formatting and compatibility purposes. ]]
			--
			local encodedChallengeResponse = Base64.Encode(challengeResponse)
			local url = ("%smy/account?challenge=%s#!/security"):format(BASE_URL, encodedChallengeResponse)
			GuiService:OpenBrowserWindow(url)
		else
			local url = ("%smy/account#!/security"):format(BASE_URL)
			GuiService:OpenBrowserWindow(url)
		end
	end

	function service.openTermsOfUse()
		local url = UrlBuilder.static.about.terms()

		GuiService:OpenBrowserWindow(url)
	end

	function service.openRobuxStore()
		GuiService:OpenBrowserWindow(("%sUpgrades/Robux.aspx"):format(BASE_URL))
	end

	function service.openRobuxStoreWithContext(context: BaseContext, productId: string?)
		local url = ("%sUpgrades/Robux.aspx"):format(BASE_URL)
		if productId then
			url = url .. ("?product_id=%s"):format(productId)
		end
		url = addContextToUrl(url, context)
		GuiService:OpenBrowserWindow(url)
	end

	function service.openPaymentsPageWithContext(context: BaseContext, productId: string)
		local url = ("%supgrades/paymentmethods?ap=%s"):format(BASE_URL, productId)
		url = addContextToUrl(url, context)
		GuiService:OpenBrowserWindow(url)
	end

	function service.promptNativePurchaseWithLocalPlayer(mobileProductId)
		return MarketplaceService:PromptNativePurchaseWithLocalPlayer(mobileProductId)
	end

	function service.promptNativePurchase(player, mobileProductId)
		return MarketplaceService:PromptNativePurchase(player, mobileProductId)
	end

	function service.beginPlatformStorePurchase(xboxProductId)
		return PlatformService:BeginPlatformStorePurchase(xboxProductId)
	end

	function service.openVngStore(vngShopRedirectUrl: string)
		if not vngShopRedirectUrl or vngShopRedirectUrl == "" then
			vngShopRedirectUrl = GetFStringVNGWebshopUrl()
		end
		GuiService:OpenBrowserWindow(vngShopRedirectUrl)
	end

	return service
end

return PlatformInterface
