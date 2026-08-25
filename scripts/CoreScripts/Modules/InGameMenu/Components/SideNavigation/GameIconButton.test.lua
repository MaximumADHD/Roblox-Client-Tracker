local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local it = JestGlobals.it

local InGameMenuDependencies = require(CorePackages.Packages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local UnitTestHelpers = require(CorePackages.Workspace.Packages.UnitTestHelpers)

local GameIconButton = require(script.Parent.GameIconButton)

it("should create and destroy with default props without errors", function()
	local element = UnitTestHelpers.createStyleProvider({
		GameIconButton = Roact.createElement(GameIconButton, {
			onActivated = function() end,
		}),
	})

	local instance = Roact.mount(element)
	Roact.unmount(instance)
end)

it("should create and destroy with all props without errors", function()
	local element = UnitTestHelpers.createStyleProvider({
		GameIconButton = Roact.createElement(GameIconButton, {
			anchorPoint = Vector2.new(0.5, 0.5),
			position = UDim2.new(1, 100, 1, 100),
			layoutOrder = 1,
			onActivated = function() end,
		}),
	})

	local instance = Roact.mount(element)
	Roact.unmount(instance)
end)
