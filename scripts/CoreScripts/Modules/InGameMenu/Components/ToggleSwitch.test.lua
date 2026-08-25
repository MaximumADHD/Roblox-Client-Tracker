local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local it = JestGlobals.it

local InGameMenuDependencies = require(CorePackages.Packages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local UnitTestHelpers = require(CorePackages.Workspace.Packages.UnitTestHelpers)

local ToggleSwitch = require(script.Parent.ToggleSwitch)

it("should create and destroy without errors", function()
	local element = UnitTestHelpers.createStyleProvider({
		ToggleSwitch = Roact.createElement(ToggleSwitch, {
			checked = false,
			onToggled = function()
				print("onToggled")
			end,
			disabled = false,

			AnchorPoint = Vector2.new(0.5, 0.5),
			LayoutOrder = 4,
			Position = UDim2.new(0.5, 0, 0.5, 0),
		}),
	})

	local instance = Roact.mount(element)
	Roact.unmount(instance)
end)

it("should create and destroy without errors when checked", function()
	local element = UnitTestHelpers.createStyleProvider({
		ToggleSwitch = Roact.createElement(ToggleSwitch, {
			checked = true,
			onToggled = function()
				print("onToggled")
			end,
		}),
	})

	local instance = Roact.mount(element)
	Roact.unmount(instance)
end)
