local RobuxUpsellRoot = script.Parent
local PurchaseFlowRoot = RobuxUpsellRoot.Parent
local IAPExperienceRoot = PurchaseFlowRoot.Parent
local Packages = IAPExperienceRoot.Parent

local Roact = require(Packages.Roact)
local UIBlox = require(Packages.UIBlox)
local Images = UIBlox.App.ImageSet.Images

local RobuxUpsellFlowState = require(RobuxUpsellRoot.RobuxUpsellFlowState)

local mockStyleAndLocalizationComponent = require(IAPExperienceRoot.Utility.mockStyleAndLocalizationComponent)

local PREMIUM_ICON_LARGE = Images["icons/graphic/premium_xlarge"]
local XBOX_A_ICON = Images["icons/controls/keys/xboxA"]
local XBOX_B_ICON = Images["icons/controls/keys/xboxB"]

local RobuxUpsellFlow = require(RobuxUpsellRoot.RobuxUpsellFlow)

local function testRobuxUpsellFlow(purchaseState: any, errorType: any?, u13ConfirmType: any?)
    local element = mockStyleAndLocalizationComponent({
        Overlay = Roact.createElement(RobuxUpsellFlow, {
            screenSize = Vector2.new(100, 100),

			itemIcon = PREMIUM_ICON_LARGE,
			itemName = "Premium Coins + Speed up Bonus",
			itemRobuxCost = 9000,
			iapRobuxAmount = 10000,
			beforeRobuxBalance = 50,
			isCatalogShop = true,
			
			purchaseState = purchaseState,

			acceptControllerIcon = XBOX_A_ICON,
			cancelControllerIcon =  XBOX_B_ICON,

			purchaseRobux = function () end,
			acceptPurchaseWarning = function () end,
			cancelPurchase = function () end,
			equipItem = function () end,
			showTermsOfUse = function () end,
			openSecuritySettingsfunction = function () end,
			flowComplete = function () end,

			onAnalyticEvent = function(name: string, data: table) end,
			eventPrefix = "Test"
        })
    })

    local instance = Roact.mount(element)
    Roact.unmount(instance)
end

return function()
	describe("lifecycle", function()
        it("should mount and unmount without issue (None)", function()
            testRobuxUpsellFlow(RobuxUpsellFlowState.None)
		end)
        it("should mount and unmount without issue (Loading)", function()
            testRobuxUpsellFlow(RobuxUpsellFlowState.Loading)
		end)
        it("should mount and unmount without issue (PurchaseModal)", function()
            testRobuxUpsellFlow(RobuxUpsellFlowState.PurchaseModal)
		end)
        it("should mount and unmount without issue (PurchaseWarning)", function()
            testRobuxUpsellFlow(RobuxUpsellFlowState.PurchaseWarning)
		end)
        it("should mount and unmount without issue (TwoStepRequired)", function()
            testRobuxUpsellFlow(RobuxUpsellFlowState.TwoStepRequired)
		end)
        it("should mount and unmount without issue (RobuxPurchasePending)", function()
            testRobuxUpsellFlow(RobuxUpsellFlowState.RobuxPurchasePending)
		end)
        it("should mount and unmount without issue (RobuxGrantPending)", function()
            testRobuxUpsellFlow(RobuxUpsellFlowState.RobuxGrantPending)
		end)
        it("should mount and unmount without issue (ItemPurchasePending)", function()
            testRobuxUpsellFlow(RobuxUpsellFlowState.ItemPurchasePending)
		end)
        it("should mount and unmount without issue (Success)", function()
            testRobuxUpsellFlow(RobuxUpsellFlowState.Success)
		end)
        it("should mount and unmount without issue (Error)", function()
            testRobuxUpsellFlow(RobuxUpsellFlowState.Error)
		end)
	end)
end
