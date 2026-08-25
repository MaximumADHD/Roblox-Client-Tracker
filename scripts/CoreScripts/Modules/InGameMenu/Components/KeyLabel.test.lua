local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local it = JestGlobals.it

local InGameMenuDependencies = require(CorePackages.Packages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local UnitTestHelpers = require(CorePackages.Workspace.Packages.UnitTestHelpers)

local KeyLabel = require(script.Parent.KeyLabel)

it("should create and destroy without errors", function()
	local element = UnitTestHelpers.createStyleProvider({
		KeyLabel = Roact.createElement(KeyLabel, {
			input = Enum.KeyCode.A,
		}),
	})

	local instance = Roact.mount(element)
	Roact.unmount(instance)
end)

it("should create and destroy without errors for keys with special display strings", function()
	local element = UnitTestHelpers.createStyleProvider({
		KeyLabel = Roact.createElement(KeyLabel, {
			input = Enum.KeyCode.LeftShift,
		}),
	})

	local instance = Roact.mount(element)
	Roact.unmount(instance)
end)

it("should create and destroy without errors for keys with special display images", function()
	local element = UnitTestHelpers.createStyleProvider({
		KeyLabel = Roact.createElement(KeyLabel, {
			input = Enum.KeyCode.Up,
		}),
	})

	local instance = Roact.mount(element)
	Roact.unmount(instance)
end)
