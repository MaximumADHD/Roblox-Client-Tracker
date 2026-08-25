local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local it = JestGlobals.it

local InGameMenuDependencies = require(CorePackages.Packages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local Rodux = InGameMenuDependencies.Rodux
local UnitTestHelpers = require(CorePackages.Workspace.Packages.UnitTestHelpers)

local InGameMenu = script.Parent.Parent
local reducer = require(InGameMenu.reducer)

local Localization = require(InGameMenu.Localization.Localization)
local LocalizationProvider = require(InGameMenu.Localization.LocalizationProvider)

local MenuIconTooltip = require(script.Parent.MenuIconTooltip)

it("should create and destroy without errors", function()
	local element = Roact.createElement(RoactRodux.StoreProvider, {
		store = Rodux.Store.new(reducer),
	}, {
		ThemeProvider = UnitTestHelpers.createStyleProvider({
			LocalizationProvider = Roact.createElement(LocalizationProvider, {
				localization = Localization.new("en-us"),
			}, {
				MenuIconTooltip = Roact.createElement(MenuIconTooltip, {
					isTooltipOpen = false,
					onDismiss = function() end,
				}),
			}),
		}),
	})
	local instance = Roact.mount(element)
	Roact.unmount(instance)
end)
