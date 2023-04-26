local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local Constants = require(TenFootUiShell.Constants)
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local JestGlobals = require(Packages.Dev.JestGlobals)
local it = JestGlobals.it
local expect = JestGlobals.expect
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach

local TenFootUiScene = require(script.Parent.TenFootUiScene)

local backgroundModelName = Constants.BACKGROUND_MODEL_NAME
local backgroundModel
beforeEach(function()
	backgroundModel = Instance.new("Model")
	backgroundModel.Name = backgroundModelName
	backgroundModel.Parent = ReplicatedStorage
end)
afterEach(function()
	backgroundModel:Destroy()
end)

it("should initialize correctly", function()
	local backgroundInstance, camera = TenFootUiScene.initialize()
	expect(backgroundInstance).never.toBeNil()
	expect(backgroundInstance.Parent).toBe(workspace)
	expect(camera).never.toBeNil()
	expect(camera.Parent).toBe(workspace)
end)

it("should updateBackgroundScenePosition correctly", function()
	local backgroundInstance, _ = TenFootUiScene.initialize()
	local initialCFrame = (backgroundInstance :: PVInstance):GetPivot()

	local offset = Vector3.new(1, 1, 1)
	TenFootUiScene.updateBackgroundScenePosition(offset)
	local updatedCFrame = (backgroundInstance :: PVInstance):GetPivot()
	expect(initialCFrame).never.toEqual(updatedCFrame)
end)
