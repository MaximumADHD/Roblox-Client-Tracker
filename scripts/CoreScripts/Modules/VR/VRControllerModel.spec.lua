return function()
	local CoreGui = game:GetService("CoreGui")
	local VRService = game:GetService("VRService")
	local RobloxGui = CoreGui.RobloxGui
	local VRControllerModel = require(RobloxGui.Modules.VR.VRControllerModel)
	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	describe("VRControllerModel", function()
		it("should position controller model correctly when HeadScale is set", function()
			local camera = workspace.CurrentCamera
			if camera then
				camera.CFrame = CFrame.new()
				local controllerModel = VRControllerModel.new(Enum.UserCFrame.LeftHand)
				controllerModel:setEnabled(true)
				local dt = 0.03
				controllerModel:update(dt)
				
				expect(controllerModel.currentModel.model.PrimaryPart.CFrame.p.X).toBeCloseTo(0)
				expect(controllerModel.currentModel.model.PrimaryPart.CFrame.p.Y).toBeCloseTo(-0.0487)
				expect(controllerModel.currentModel.model.PrimaryPart.CFrame.p.Z).toBeCloseTo(0.046)
				camera.HeadScale = 10
				controllerModel:update(dt)
				expect(controllerModel.currentModel.model.PrimaryPart.CFrame.p.X).toBeCloseTo(0)
				expect(controllerModel.currentModel.model.PrimaryPart.CFrame.p.Y).toBeCloseTo(-0.487)
				expect(controllerModel.currentModel.model.PrimaryPart.CFrame.p.Z).toBeCloseTo(0.461)
			end
		end)
	end)
end
