return function()
	local GuiService = game:GetService("GuiService")
	local Players = game:GetService("Players")
	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	beforeEach(function()
		GuiService.SelectedCoreObject = nil
		local localPlayer = Players.LocalPlayer :: Player
		localPlayer.PlayerGui:ClearAllChildren()
	end)

	afterEach(function()
		GuiService.SelectedCoreObject = nil
		local localPlayer = Players.LocalPlayer :: Player
		localPlayer.PlayerGui:ClearAllChildren()
	end)

	it("should require without errors", function()
		local InGameMenu = require(script.Parent)
		expect(InGameMenu).never.toBeNil()
	end)
end
