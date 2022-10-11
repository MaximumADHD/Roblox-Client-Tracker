local PremiumUpsellRoot = script.Parent
local IAPExperienceRoot = PremiumUpsellRoot.Parent
local Packages = IAPExperienceRoot.Parent

local Roact = require(Packages.Roact)

local mockStyleAndLocalizationComponent = require(IAPExperienceRoot.Utility.mockStyleAndLocalizationComponent)

local PremiumUpsellPrompt = require(PremiumUpsellRoot.PremiumUpsellPrompt)

return function()
	describe("lifecycle", function()
		it("should mount and unmount informative alerts without issue", function()
			local element = mockStyleAndLocalizationComponent({
				Item = Roact.createElement(PremiumUpsellPrompt, {
					currencySymbol = "$",
					robuxPrice = 4.99,
					robuxAmount = 450,
					screenSize = Vector2.new(100, 100),
					purchasePremiumActivated = function() end,
				})
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end)
end