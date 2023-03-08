local Packages = script:FindFirstAncestor("TenFootUiShell").Parent
local React = require(Packages.React)
local ReactRoblox = require(Packages.Dev.ReactRoblox)
local JestGlobals = require(Packages.Dev.JestGlobals)
local it = JestGlobals.it

local TenFootUiContainer = require(script.Parent.TenFootUiContainer)

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
