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

local InfoDialog = require(script.Parent.InfoDialog)

it("should create and destroy without errors", function()
	local element = Roact.createElement(RoactRodux.StoreProvider, {
		store = Rodux.Store.new(reducer),
	}, {
		ThemeProvider = UnitTestHelpers.createStyleProvider({
			GameIconHeader = Roact.createElement(InfoDialog, {
				bodyText = "Hello world!",
				dismissText = "Okay",
				titleText = "Title",
				iconImage = "",

				onDismiss = function()
					print("on dismiss")
				end,
				visible = true,
			}),
		}),
	})

	local instance = Roact.mount(element)
	Roact.unmount(instance)
end)
