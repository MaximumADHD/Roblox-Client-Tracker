local ProductPurchaseRoot = script.Parent
local IAPExperienceRoot = ProductPurchaseRoot.Parent
local Packages = IAPExperienceRoot.Parent

local Roact = require(Packages.Roact)
local UIBlox = require(Packages.UIBlox)
local Images = UIBlox.App.ImageSet.Images

local PREMIUM_ICON_LARGE = Images["icons/graphic/premium_xlarge"]

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
	
					itemIcon = PREMIUM_ICON_LARGE,
					itemName = "Premium Coins",
					itemRobuxCost = 9999,
					robuxPurchaseAmount = 10000,

					buyItemActivated = function()  end,
					cancelPurchaseActivated = function() end,
				})
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end)
end
