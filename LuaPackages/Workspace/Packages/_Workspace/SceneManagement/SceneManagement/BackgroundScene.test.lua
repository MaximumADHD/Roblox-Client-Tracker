local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Packages = script:FindFirstAncestor("SceneManagement").Parent
local JestGlobals = require(Packages.Dev.JestGlobals)
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
	local backgroundInstance, camera = BackgroundScene.initialize(testBackgroundSceneConfigInitial)
	task.wait()

	expect(backgroundInstance).never.toBeNil()
	expect(backgroundInstance.Parent).toBe(workspace)

	expect(camera).never.toBeNil()
	expect(camera.Parent).toBe(workspace)
	expect(camera.FieldOfView).toEqual(testBackgroundSceneConfigInitial.CameraConfigs.FieldOfView)
	expect(camera.CFrame.Position).toEqual(testBackgroundSceneConfigInitial.CameraConfigs.Position)
end)

it("should updatePositionX correctly", function()
	local backgroundInstance, _ = BackgroundScene.initialize(testBackgroundSceneConfigInitial)
	task.wait()

	local positionX = 1024

	local intialPosition = (backgroundInstance :: PVInstance):GetPivot().Position
	BackgroundScene.updateXPosition(backgroundModelName, positionX)

	local updatedPosition = (backgroundInstance :: PVInstance):GetPivot().Position
	local expectedPosition = Vector3.new(positionX, intialPosition.Y, intialPosition.Z)
	expect(updatedPosition).toEqual(expectedPosition)
end)

it("should updatePositionZ correctly", function()
	local backgroundInstance, _ = BackgroundScene.initialize(testBackgroundSceneConfigInitial)
	task.wait()

	local positionZ = 1024

	local intialPosition = (backgroundInstance :: PVInstance):GetPivot().Position
	BackgroundScene.updateZPosition(backgroundModelName, positionZ)

	local updatedPosition = (backgroundInstance :: PVInstance):GetPivot().Position
	local expectedPosition = Vector3.new(intialPosition.X, intialPosition.Y, positionZ)
	expect(updatedPosition).toEqual(expectedPosition)
end)
