local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local it = JestGlobals.it

local InGameMenuDependencies = require(CorePackages.Packages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local UnitTestHelpers = require(CorePackages.Workspace.Packages.UnitTestHelpers)

local GetFFlagIGMGamepadSelectionHistory = require(script.Parent.Parent.Flags.GetFFlagIGMGamepadSelectionHistory)

local FocusHandlerContextProvider = require(script.Parent.Connection.FocusHandlerUtils.FocusHandlerContextProvider)
local Slider = require(script.Parent.Slider)

it("should create and destroy without errors", function()
	local slider = Roact.createElement(Slider, {
		min = 0,
		max = 10,
		stepInterval = 1,
		value = 5,
		valueChanged = function() end,
	})

	local element = UnitTestHelpers.createStyleProvider({
		FocusHandlerContextProvider = GetFFlagIGMGamepadSelectionHistory()
				and Roact.createElement(FocusHandlerContextProvider, {}, {
					Slider = slider,
				})
			or nil,
		Slider = not GetFFlagIGMGamepadSelectionHistory() and slider or nil,
	})

	local instance = Roact.mount(element)
	Roact.unmount(instance)
end)
