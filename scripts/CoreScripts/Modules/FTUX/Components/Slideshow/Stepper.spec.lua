return function()
	local CoreGui = game:GetService("CoreGui")
	local CorePackages = game:GetService("CorePackages")

	local Roact = require(CorePackages.Roact)
	local UIBlox = require(CorePackages.UIBlox)

	local FTUX = script.Parent.Parent.Parent
	local MockFTUXStyleAndLocalization = require(FTUX.Utility.MockFTUXStyleAndLocalizationComponent)
	local PlatformEnum = require(FTUX.Enums.PlatformEnum)
	type Platform = PlatformEnum.Platform

	describe("FTUX Stepper for QuestVR", function()
		it("should create and destroy without errors for FTUX Slideshow Stepper Component", function()
			local Stepper = require(script.Parent.Stepper)
			local slideshowData = require(FTUX.Resources.FTUXSlideshowData)

			local questVRData = slideshowData[PlatformEnum.QuestVR]
			local stepperComponent = MockFTUXStyleAndLocalization({
				stepper = Roact.createElement(Stepper, {
					layoutOrder = 1,
					numberOfSteps = #questVRData,
					numberActivated = 2,
				}, {}),
			})

			local stepper = Roact.mount(stepperComponent, CoreGui, "Stepper")
			Roact.unmount(stepper)
		end)
	end)
end
