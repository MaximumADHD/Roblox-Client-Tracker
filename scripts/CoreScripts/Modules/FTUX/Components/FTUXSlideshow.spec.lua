return function()
	local CoreGui = game:GetService("CoreGui")
	local CorePackages = game:GetService("CorePackages")
	local RobloxGui = CoreGui:WaitForChild("RobloxGui")

	local Roact = require(CorePackages.Roact)
	local UIBlox = require(CorePackages.UIBlox)

	local FTUX = RobloxGui.Modules.FTUX
	local MockFTUXStyleAndLocalization = require(FTUX.Utility.MockFTUXStyleAndLocalizationComponent)
	local PlatformEnum = require(FTUX.Enums.PlatformEnum)

	describe("FTUXSlideshow platform scenarios", function()
		it("should create and destroy without errors for QuestVR", function()
			local FTUXSlideshow = require(FTUX.Components.FTUXSlideshow)

			local ftuxSlideshow = MockFTUXStyleAndLocalization({
				FTUXSlideshow = Roact.createElement(FTUXSlideshow, {
					platform = PlatformEnum.QuestVR,
				}, {}),
			})
			local instance = Roact.mount(ftuxSlideshow, CoreGui)
			Roact.unmount(instance)
		end)
	end)
end
