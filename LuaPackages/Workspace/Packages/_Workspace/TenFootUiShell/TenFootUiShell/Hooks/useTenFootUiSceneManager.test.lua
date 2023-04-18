local Packages = script:FindFirstAncestor("TenFootUiShell").Parent
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local React = require(Packages.React)
local ReactRoblox = require(Packages.ReactRoblox)
local JestGlobals = require(Packages.Dev.JestGlobals)
local it = JestGlobals.it
local expect = JestGlobals.expect
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach

local useTenFootUiSceneManager = require(script.Parent.useTenFootUiSceneManager)

local backgroundModelName = "TenFootUiBackgroundShapes"
local backgroundModel
beforeEach(function()
	backgroundModel = Instance.new("Model")
	backgroundModel.Name = backgroundModelName
	backgroundModel.Parent = ReplicatedStorage
end)
afterEach(function()
	backgroundModel:Destroy()
end)

it("should create and destroy without errors", function()
	local element = React.createElement(useTenFootUiSceneManager)

	local container = Instance.new("Folder")
	local root = ReactRoblox.createRoot(container)

	ReactRoblox.act(function()
		root:render(element)
	end)

	expect(workspace:FindFirstChild(backgroundModelName)).never.toBeNil()
	root:unmount()
end)
