local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Packages = script:FindFirstAncestor("TenFootUiShell").Parent
local React = require(Packages.React)
local ReactRoblox = require(Packages.Dev.ReactRoblox)
local JestGlobals = require(Packages.Dev.JestGlobals)
local it = JestGlobals.it
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach

local TenFootUiContainer = require(script.Parent.TenFootUiContainer)

local backgroundModel
beforeEach(function()
	backgroundModel = Instance.new("Model")
	backgroundModel.Name = "TenFootUiBackgroundShapes"
	backgroundModel.Parent = ReplicatedStorage
end)
afterEach(function()
	backgroundModel:Destroy()
end)

it("should create and destroy without errors", function()
	local element = React.createElement(TenFootUiContainer, {
		store = {},
		updateRoute = function() end,
	})

	local container = Instance.new("Folder")
	local root = ReactRoblox.createRoot(container)

	ReactRoblox.act(function()
		root:render(element)
	end)
	root:unmount()
end)
