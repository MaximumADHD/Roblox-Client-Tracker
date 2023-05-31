return function()
	local CoreGui = game:GetService("CoreGui")
	local CorePackages = game:GetService("CorePackages")

	local Roact = require(CorePackages.Roact)
	local UIBlox = require(CorePackages.UIBlox)

	local FTUX = script.Parent.Parent.Parent
	local MockFTUXStyleAndLocalization = require(FTUX.Utility.MockFTUXStyleAndLocalizationComponent)
	local PlatformEnum = require(FTUX.Enums.PlatformEnum)
	type Platform = PlatformEnum.Platform

	describe("FTUX Header for QuestVR", function()
		it("should create and destroy without errors for FTUX Slideshow Header", function()
			local Header = require(script.Parent.Header)

			local headerComponent = MockFTUXStyleAndLocalization({
				header = Roact.createElement(Header, {
					platform = PlatformEnum.QuestVR,
				}, {}),
			})

			local header = Roact.mount(headerComponent, CoreGui, "header")
			Roact.unmount(header)
		end)
	end)
end
