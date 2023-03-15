local Packages = script:FindFirstAncestor("SceneManagement").Parent
local React = require(Packages.React)
local ReactRoblox = require(Packages.ReactRoblox)
local JestGlobals = require(Packages.Dev.JestGlobals)
local it = JestGlobals.it

local SurfaceGuiWithAdornee = require(script.Parent.SurfaceGuiWithAdornee)

local testProps: SurfaceGuiWithAdornee.Props = {
	canvasSize = Vector2.new(1920, 1080),
	adorneeSize = Vector3.one,
	adorneeCFrame = CFrame.new(0, 0, 0),
	alwaysOnTop = true,
	isVisible = true,
	name = "TestSurfaceGuiWithAdornee",
	adorneeParent = Instance.new("Folder"),
	surfaceGuiParent = Instance.new("Folder"),
	children = {},
}

it("should create and destroy without errors", function()
	local element = React.createElement(SurfaceGuiWithAdornee, testProps)
	local container = Instance.new("Folder")
	local root = ReactRoblox.createRoot(container)

	ReactRoblox.act(function()
		root:render(element)
	end)
	root:unmount()
end)
