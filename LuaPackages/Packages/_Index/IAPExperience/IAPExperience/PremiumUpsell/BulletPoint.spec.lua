local PremiumUpsellRoot = script.Parent
local IAPExperienceRoot = PremiumUpsellRoot.Parent
local Packages = IAPExperienceRoot.Parent

local Roact = require(Packages.Roact)

local mockStyleAndLocalizationComponent = require(IAPExperienceRoot.Utility.mockStyleAndLocalizationComponent)

local BulletPoint = require(PremiumUpsellRoot.BulletPoint)

return function()
	describe("lifecycle", function()
		it("should mount and unmount informative alerts without issue", function()
			local element = mockStyleAndLocalizationComponent({
				Item = Roact.createElement(BulletPoint, {
					text = "Test",
					width = 0,
					layoutOrder = 0,
				})
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end)
end
