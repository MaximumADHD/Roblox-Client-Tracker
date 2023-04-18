local GenericRoot = script.Parent
local IAPExperienceRoot = GenericRoot.Parent
local Packages = IAPExperienceRoot.Parent

local Roact = require(Packages.Roact)

local LoadingOverlayState = require(GenericRoot.LoadingOverlayState)

local mockStyleAndLocalizationComponent = require(IAPExperienceRoot.Utility.mockStyleAndLocalizationComponent)

local LoadingOverlay = require(GenericRoot.LoadingOverlay)

return function()
	describe("lifecycle", function()
		it("should mount and unmount without issue (loadingState = nil)", function()
			local element = mockStyleAndLocalizationComponent({
				Overlay = Roact.createElement(LoadingOverlay, {
					loadingState = nil,
				}),
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)

		it("should mount and unmount without issue (LoadingOverlayState.None)", function()
			local element = mockStyleAndLocalizationComponent({
				Overlay = Roact.createElement(LoadingOverlay, {
					loadingState = LoadingOverlayState.None,
				}),
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end)
end
