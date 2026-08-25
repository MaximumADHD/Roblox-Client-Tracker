local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect

local InGameMenu = script.Parent.Parent
local NavigateBack = require(InGameMenu.Actions.NavigateBack)
local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)
local rootReducer = require(InGameMenu.reducer)
local Pages = require(InGameMenu.Components.Pages)
local Constants = require(InGameMenu.Resources.Constants)

describe("navigationReducer", function()
	it("should go to parent page when one is available and B is pressed", function()
		local oldState = rootReducer(nil, {})
		oldState = rootReducer(oldState, SetCurrentPage(Pages.pagesByKey["Players"].key))

		local newState = rootReducer(oldState, NavigateBack())
		expect(oldState).never.toBe(newState)
		expect(newState.menuPage).toBe(Constants.MainPagePageKey)
	end)
end)
