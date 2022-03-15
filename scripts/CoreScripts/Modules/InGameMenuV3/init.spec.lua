return function()
	local GuiService = game:GetService("GuiService")
	local Players = game:GetService("Players")

	beforeEach(function()
		GuiService.SelectedCoreObject = nil
		Players.LocalPlayer.PlayerGui:ClearAllChildren()
	end)

	afterEach(function()
		GuiService.SelectedCoreObject = nil
		Players.LocalPlayer.PlayerGui:ClearAllChildren()
	end)

	it("should require without errors", function()
		local InGameMenu = require(script.Parent)
		expect(InGameMenu).to.be.ok()
	end)
end
