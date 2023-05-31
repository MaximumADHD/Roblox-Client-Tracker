return function()
	local CoreGui = game:GetService("CoreGui")
	local CorePackages = game:GetService("CorePackages")
	local LocalizationService = game:GetService("LocalizationService")

	local Roact = require(CorePackages.Roact)
	local UIBlox = require(CorePackages.UIBlox)

	local FTUX = script.Parent.Parent.Parent
	local MockFTUXStyleAndLocalization = require(FTUX.Utility.MockFTUXStyleAndLocalizationComponent)
	local PlatformEnum = require(FTUX.Enums.PlatformEnum)
	type Platform = PlatformEnum.Platform

	describe("FTUX EndItem for QuestVR", function()
		it("should create and destroy without errors for the End Item Footer Text", function()
			local EndItem = require(script.Parent.EndItem)
			local slideshowData = require(FTUX.Resources.FTUXSlideshowData)

			local questVRData = slideshowData[PlatformEnum.QuestVR]

			local function mockIncreaseCurrentIndex(currentIndex: number)
				currentIndex += 1
				return
			end

			local endItemComponent = MockFTUXStyleAndLocalization({
				EndItem = Roact.createElement(EndItem, {
					platform = PlatformEnum.QuestVR,
					currentIndex = #questVRData,
					increaseCurrentIndex = mockIncreaseCurrentIndex,
				}, {}),
			})

			local EndItem = Roact.mount(endItemComponent, CoreGui, "EndItem")
			Roact.unmount(EndItem)
		end)
	end)
end
