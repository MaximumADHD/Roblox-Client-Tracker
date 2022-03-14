local ProductPurchaseRoot = script.Parent
local IAPExperienceRoot = ProductPurchaseRoot.Parent
local Packages = IAPExperienceRoot.Parent

local Roact = require(Packages.Roact)
local UIBlox = require(Packages.UIBlox)
local Images = UIBlox.App.ImageSet.Images

local PREMIUM_ICON_LARGE = Images["icons/graphic/premium_xlarge"]
local XBOX_A_ICON = Images["icons/controls/keys/xboxA"]
local XBOX_B_ICON = Images["icons/controls/keys/xboxB"]

local mockStyleAndLocalizationComponent = require(IAPExperienceRoot.Utility.mockStyleAndLocalizationComponent)

local ProductPurchaseRobuxUpsell = require(ProductPurchaseRoot.ProductPurchaseRobuxUpsell)

return function()
	describe("lifecycle", function()
		it("should mount and unmount informative alerts without issue", function()
			local element = mockStyleAndLocalizationComponent({
				Item = Roact.createElement(ProductPurchaseRobuxUpsell, {
					position = UDim2.new(0.5, 0, 0.5, 0),
					anchorPoint = Vector2.new(0.5, 0.5),
					screenSize = Vector2.new(100, 100),

					isLoading = true,
					isDisabled = true,
					isDelayedInput = true,
					enableInputDelayed = true,
	
					itemIcon = PREMIUM_ICON_LARGE,
					itemName = "Premium Coins",
					itemRobuxCost = 9999,
					robuxPurchaseAmount = 10000,
					balanceAmount = 500,

					buyItemControllerIcon = XBOX_A_ICON,
					cancelControllerIcon = XBOX_B_ICON,

					buyItemActivated = function()  end,
					cancelPurchaseActivated = function() end,

					isLuobu = false,
				})
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end)
end
