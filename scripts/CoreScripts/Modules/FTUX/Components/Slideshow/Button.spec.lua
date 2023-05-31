return function()
	local CoreGui = game:GetService("CoreGui")
	local CorePackages = game:GetService("CorePackages")

	local Roact = require(CorePackages.Roact)
	local UIBlox = require(CorePackages.UIBlox)

	local FTUX = script.Parent.Parent.Parent
	local MockFTUXStyleAndLocalization = require(FTUX.Utility.MockFTUXStyleAndLocalizationComponent)
	local PlatformEnum = require(FTUX.Enums.PlatformEnum)
	type Platform = PlatformEnum.Platform

	describe("FTUX Button for QuestVR", function()
		local Button = require(script.Parent.Button)

		local function mockIncreaseCurrentIndex(currentIndex: number)
			currentIndex += 1
			return
		end

		it("should create and destroy without errors for the Next Button", function()
			local nextButtonComponent = MockFTUXStyleAndLocalization({
				button = Roact.createElement(Button, {
					platform = PlatformEnum.QuestVR,
					currentIndex = 3,
					increaseCurrentIndex = mockIncreaseCurrentIndex,
				}),
			})

			local NextButton = Roact.mount(nextButtonComponent, CoreGui, "NextButton")
			Roact.unmount(NextButton)
		end)

		it("should create and destroy without errors for the Skip Button", function()
			local skipButtonComponent = MockFTUXStyleAndLocalization({
				button = Roact.createElement(Button, {
					platform = PlatformEnum.QuestVR,
					currentIndex = 1,
					increaseCurrentIndex = mockIncreaseCurrentIndex,
				}),
			})

			local SkipButton = Roact.mount(skipButtonComponent, CoreGui, "SkipButton")
			Roact.unmount(SkipButton)
		end)
	end)
end
