--!nonstrict
local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Packages.Roact)
local UnitTestHelpers = require(CorePackages.Workspace.Packages.UnitTestHelpers)
local createStyleProvider = UnitTestHelpers.createStyleProvider

local TnsModule = script.Parent.Parent
local Dependencies = require(TnsModule.Dependencies)
local Localization = Dependencies.Localization
local LocalizationProvider = require(Dependencies.LocalizationProvider)

local GameCell = require(script.Parent.GameCell)

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local it = JestGlobals.it

it("should create and destroy without errors", function()
	local element = createStyleProvider({
		LocalizationProvider = Roact.createElement(LocalizationProvider, {
			localization = Localization.new("en-us"),
		}, {
			GameCell = Roact.createElement(GameCell, {
				gameId = 0,
			}),
		}),
	})

	local instance = Roact.mount(element)
	Roact.unmount(instance)
end)
