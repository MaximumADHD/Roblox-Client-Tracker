local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local Constants = require(TenFootUiShell.Constants)
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local JestGlobals = require(Packages.Dev.JestGlobals)
local it = JestGlobals.it
local expect = JestGlobals.expect
local beforeAll = JestGlobals.beforeAll

local TenFootUiScene = require(script.Parent.TenFootUiScene)

beforeAll(function()
	local backgroundModel = Instance.new("Model")
	backgroundModel.Name = Constants.BACKGROUND_MODEL_NAME
	backgroundModel.Parent = ReplicatedStorage
end)

local backgroundInstance, camera

it.skip("should initialize correctly", function()
	backgroundInstance, camera = TenFootUiScene.initialize()

	expect(backgroundInstance).never.toBeNil()
	expect(backgroundInstance.Parent).toBe(workspace)
	expect(camera).never.toBeNil()
	expect(camera.Parent).toBe(workspace)

	expect(TenFootUiScene.getBackgroundInstance()).toEqual(backgroundInstance)
end)

it.skip("should updateXPosition correctly", function()
	local initialPosition = (backgroundInstance :: PVInstance):GetPivot().Position

	local positionX = 1024
	TenFootUiScene.updateXPosition(positionX)

	local expectedPosition = Vector3.new(positionX, initialPosition.Y, initialPosition.Z)
	local updatedPosition = (backgroundInstance :: PVInstance):GetPivot().Position
	expect(expectedPosition).toEqual(updatedPosition)
end)

it.skip("should updateZPosition correctly", function()
	local initialPosition = (backgroundInstance :: PVInstance):GetPivot().Position

	local positionZ = 1024
	TenFootUiScene.updateZPosition(positionZ)

	local expectedPosition = Vector3.new(initialPosition.X, initialPosition.Y, positionZ)
	local updatedPosition = (backgroundInstance :: PVInstance):GetPivot().Position
	expect(expectedPosition).toEqual(updatedPosition)
end)
