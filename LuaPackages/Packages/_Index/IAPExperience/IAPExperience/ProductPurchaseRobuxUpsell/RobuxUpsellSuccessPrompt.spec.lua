local ProductPurchaseRobuxUpsellRoot = script.Parent
local IAPExperienceRoot = ProductPurchaseRobuxUpsellRoot.Parent
local Packages = IAPExperienceRoot.Parent

local Roact = require(Packages.Roact)
local UIBlox = require(Packages.UIBlox)
local Images = UIBlox.App.ImageSet.Images

local mockStyleAndLocalizationComponent = require(IAPExperienceRoot.Utility.mockStyleAndLocalizationComponent)

local PREMIUM_ICON_LARGE = Images["icons/graphic/premium_xlarge"]
local XBOX_A_ICON = Images["icons/controls/keys/xboxA"]
local XBOX_B_ICON = Images["icons/controls/keys/xboxB"]

local RobuxUpsellSuccessPrompt = require(ProductPurchaseRobuxUpsellRoot.RobuxUpsellSuccessPrompt)

return function()
	describe("lifecycle", function()
		it("should mount and unmount without issue", function()
			local element = mockStyleAndLocalizationComponent({
				Overlay = Roact.createElement(RobuxUpsellSuccessPrompt, {
					position = UDim2.new(0.5, 0, 0.5, 0),
					anchorPoint = Vector2.new(0.5, 0.5),
					screenSize = Vector2.new(100, 100),

					itemIcon = PREMIUM_ICON_LARGE,
					itemName = "Premium Coins",
					balance = 9999,
					isCatalogShop = true,

					buyItemControllerIcon = XBOX_A_ICON,
					cancelControllerIcon = XBOX_B_ICON,

					equipActivated = function() end,
					doneActivated = function() end,
				}),
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end)
end
