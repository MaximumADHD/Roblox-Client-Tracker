local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Packages = script:FindFirstAncestor("SceneManagement").Parent
local JestGlobals = require(Packages.Dev.JestGlobals)
local jest = JestGlobals.jest
local it = JestGlobals.it
local expect = JestGlobals.expect
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach

local BackgroundScene = require(script.Parent.BackgroundScene)

local backgroundModelName = "TestBackgroundShapes"
local backgroundModel
beforeEach(function()
	backgroundModel = Instance.new("Model")
	backgroundModel.Name = backgroundModelName
	backgroundModel.Parent = ReplicatedStorage
end)
afterEach(function()
	backgroundModel:Destroy()
end)

local testBackgroundSceneConfigInitial = {
	BackgroundConfigs = {
		BackgroundModelName = backgroundModelName,
		PositionOffset = Vector3.new(0, -2, 0),
		RotationOffset = Vector3.new(0, 90, 0),
	},
	CameraConfigs = {
		FieldOfView = 99,
		Position = Vector3.one,
	},
}

it("should throw if background model does not exist under ReplicatedStorage", function()
	local model = ReplicatedStorage:FindFirstChild(backgroundModelName)
	model:Destroy()
	expect(function()
		BackgroundScene.initialize(testBackgroundSceneConfigInitial)
	end).toThrow()
end)

it("should initialize correctly", function()
	local spy = jest.fn()
	local connection = workspace.ChildAdded:Connect(function(child)
		if child.Name == backgroundModelName then
			spy()
		else
			assert(false, "Unexpected child was created.")
		end
	end)
	local backgroundInstance, camera = BackgroundScene.initialize(testBackgroundSceneConfigInitial)
	task.wait()

	expect(backgroundInstance).never.toBeNil()
	expect(backgroundInstance.Parent).toBe(workspace)
	expect(spy).toHaveBeenCalledTimes(1)

	expect(camera).never.toBeNil()
	expect(camera.Parent).toBe(workspace)
	expect(camera.FieldOfView).toEqual(testBackgroundSceneConfigInitial.CameraConfigs.FieldOfView)
	expect(camera.CFrame.Position).toEqual(testBackgroundSceneConfigInitial.CameraConfigs.Position)

	connection:Disconnect()
end)

it("should updateBackgroundScenePosition correctly", function()
	local createBackgroundSpy = jest.fn()
	local connection = workspace.ChildAdded:Connect(function(child)
		if child.Name == backgroundModelName then
			createBackgroundSpy()
		else
			assert(false, "Unexpected child was created.")
		end
	end)

	local backgroundInstance, camera = BackgroundScene.initialize(testBackgroundSceneConfigInitial)
	task.wait()

	expect(backgroundInstance).never.toBeNil()
	expect(backgroundInstance.Parent).toBe(workspace)
	expect(createBackgroundSpy).toHaveBeenCalledTimes(1)

	expect(camera).never.toBeNil()
	expect(camera.Parent).toBe(workspace)
	expect(camera.FieldOfView).toEqual(testBackgroundSceneConfigInitial.CameraConfigs.FieldOfView)
	expect(camera.CFrame.Position).toEqual(testBackgroundSceneConfigInitial.CameraConfigs.Position)

	-- update position
	local initialCFrame = (backgroundInstance :: PVInstance):GetPivot()
	local offset = Vector3.new(1, 1, 1)

	BackgroundScene.updateBackgroundScenePosition(backgroundModelName, offset)
	expect(createBackgroundSpy).toHaveBeenCalledTimes(1) -- should only create once
	local updatedCframe = (backgroundInstance :: PVInstance):GetPivot()
	expect(initialCFrame).never.toEqual(updatedCframe)

	connection:Disconnect()
end)
