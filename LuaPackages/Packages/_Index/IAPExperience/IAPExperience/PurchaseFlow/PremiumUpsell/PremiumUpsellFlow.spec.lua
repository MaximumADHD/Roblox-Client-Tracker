local PremiumUpsellRoot = script.Parent
local PurchaseFlowRoot = PremiumUpsellRoot.Parent
local IAPExperienceRoot = PurchaseFlowRoot.Parent
local Packages = IAPExperienceRoot.Parent

local Roact = require(Packages.Roact)
local UIBlox = require(Packages.UIBlox)
local Images = UIBlox.App.ImageSet.Images

local PremiumUpsellFlowState = require(PremiumUpsellRoot.PremiumUpsellFlowState)

local mockStyleAndLocalizationComponent = require(IAPExperienceRoot.Utility.mockStyleAndLocalizationComponent)

local PREMIUM_ICON_LARGE = Images["icons/graphic/premium_xlarge"]
local XBOX_A_ICON = Images["icons/controls/keys/xboxA"]
local XBOX_B_ICON = Images["icons/controls/keys/xboxB"]

local PremiumUpsellFlow = require(PremiumUpsellRoot.PremiumUpsellFlow)

local function testPremiumUpsellFlow(purchaseState: any, errorType: any?, u13ConfirmType: any?)
	local element = mockStyleAndLocalizationComponent({
		Overlay = Roact.createElement(PremiumUpsellFlow, {
			screenSize = Vector2.new(100, 100),

			isCatalog = false,

			currencySymbol = "$",
			robuxPrice = 4.99,
			robuxAmount = 450,

			purchaseState = purchaseState,

			acceptControllerIcon = XBOX_A_ICON,

			purchasePremium = function() end,
			cancelPurchase = function() end,
			flowComplete = function() end,

			onAnalyticEvent = function(name: string, data: table) end,
			eventPrefix = "Test",
		}),
	})

	local instance = Roact.mount(element)
	Roact.unmount(instance)
end

return function()
	describe("lifecycle", function()
		it("should mount and unmount without issue (None)", function()
			testPremiumUpsellFlow(PremiumUpsellFlowState.None)
		end)
		it("should mount and unmount without issue (Loading)", function()
			testPremiumUpsellFlow(PremiumUpsellFlowState.PurchaseModal)
		end)
		it("should mount and unmount without issue (PurchaseModal)", function()
			testPremiumUpsellFlow(PremiumUpsellFlowState.Error)
		end)
	end)
end
