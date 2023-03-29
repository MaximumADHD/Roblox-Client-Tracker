local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Packages = script:FindFirstAncestor("SceneManagement").Parent
local React = require(Packages.React)
local ReactRoblox = require(Packages.ReactRoblox)
local JestGlobals = require(Packages.Dev.JestGlobals)
local it = JestGlobals.it
local expect = JestGlobals.expect
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach

local useBackgroundScene = require(script.Parent.useBackgroundScene)

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

local testBackgroundScenePropsInitial = {
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

local testBackgroundScenePropsUpdated = {
	BackgroundConfigs = {
		BackgroundModelName = backgroundModelName,
		PositionOffset = Vector3.new(0, -20, 0),
		RotationOffset = Vector3.new(0, 100, 0),
	},
	CameraConfigs = {
		FieldOfView = 66,
		Position = Vector3.zero,
	},
}

it("should create, update and destroy without errors", function()
	local container = Instance.new("Folder")
	local root = ReactRoblox.createRoot(container)

	ReactRoblox.act(function()
		root:render(React.createElement(useBackgroundScene, testBackgroundScenePropsInitial))
	end)

	expect(workspace:FindFirstChild(backgroundModelName)).never.toBeNil()
	local camera = workspace.CurrentCamera :: Camera
	expect(camera.FieldOfView).toEqual(testBackgroundScenePropsInitial.CameraConfigs.FieldOfView)
	expect(camera.CFrame.Position).toEqual(testBackgroundScenePropsInitial.CameraConfigs.Position)

	ReactRoblox.act(function()
		root:render(React.createElement(useBackgroundScene, testBackgroundScenePropsUpdated))
	end)

	expect(camera.FieldOfView).toEqual(testBackgroundScenePropsUpdated.CameraConfigs.FieldOfView)
	expect(camera.CFrame.Position).toEqual(testBackgroundScenePropsUpdated.CameraConfigs.Position)

	root:unmount()
end)
