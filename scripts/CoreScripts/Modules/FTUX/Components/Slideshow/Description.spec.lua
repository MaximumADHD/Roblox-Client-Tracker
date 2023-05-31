return function()
	local CoreGui = game:GetService("CoreGui")
	local CorePackages = game:GetService("CorePackages")

	local Roact = require(CorePackages.Roact)
	local UIBlox = require(CorePackages.UIBlox)

	local FTUX = script.Parent.Parent.Parent
	local MockFTUXStyleAndLocalization = require(FTUX.Utility.MockFTUXStyleAndLocalizationComponent)
	local PlatformEnum = require(FTUX.Enums.PlatformEnum)
	type Platform = PlatformEnum.Platform

	describe("FTUX Description for QuestVR", function()
		it("should create and destroy without errors for FTUX Slideshow Description Component", function()
			local Description = require(script.Parent.Description)

			local descriptionComponent = MockFTUXStyleAndLocalization({
				description = Roact.createElement(Description, {
					platform = PlatformEnum.QuestVR,
					currentIndex = 1,
				}, {}),
			})

			local description = Roact.mount(descriptionComponent, CoreGui, "Description")
			Roact.unmount(description)
		end)
	end)
end
