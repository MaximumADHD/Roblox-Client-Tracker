local Workspace = game:GetService("Workspace")

local Framework = script.Parent.Parent
local ViewChangeDetector = require(Framework.Utility.ViewChangeDetector)

return function()
	it("should return false initially", function()
		local mockMouse = {X = 0, Y = 0}
		local detector = ViewChangeDetector.new(mockMouse)

		expect(detector:poll()).to.equal(false)
	end)

	it("should return true when camera changes", function()
		local mockMouse = {X = 0, Y = 0}
		local detector = ViewChangeDetector.new(mockMouse)
		local camera = Workspace.CurrentCamera

		camera.CFrame = camera.CFrame + Vector3.new(1, 0, 0)
		expect(detector:poll()).to.equal(true)
	end)

	it("should return true when mouse changes", function()
		local mockMouse = {X = 0, Y = 0}
		local detector = ViewChangeDetector.new(mockMouse)

		mockMouse.X = 1
		expect(detector:poll()).to.equal(true)
	end)
end
