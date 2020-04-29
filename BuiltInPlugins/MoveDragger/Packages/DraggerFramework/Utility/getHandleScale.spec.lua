local Workspace = game:GetService("Workspace")

local Framework = script.Parent.Parent
local getHandleScale = require(Framework.Utility.getHandleScale)

return function()
	it("should return scale proportional to the camera distance", function()
		local camera = Workspace.CurrentCamera
		camera.CFrame = CFrame.new()
		local farScale = getHandleScale(Vector3.new(0, 0, 100))
		local nearScale = getHandleScale(Vector3.new(0, 0, 10))

		expect(farScale > nearScale).to.equal(true)
	end)

	it("should return scale proportional to the camera FOV", function()
		local camera = Workspace.CurrentCamera
		camera.CFrame = CFrame.new()
		camera.FieldOfView = 75
		local wideScale = getHandleScale(Vector3.new(0, 0, 100))
		camera.FieldOfView = 60
		local narrowScale = getHandleScale(Vector3.new(0, 0, 100))

		expect(wideScale > narrowScale).to.equal(true)
	end)

	it("should return zero if the focus is the camera", function()
		local camera = Workspace.CurrentCamera
		local scale = getHandleScale(camera.CFrame.Position)

		expect(scale).to.equal(0)
	end)
end
