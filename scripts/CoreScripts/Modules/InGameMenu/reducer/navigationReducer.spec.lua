return function()
	local CorePackages = game:GetService("CorePackages")

	local InGameMenu = script.Parent.Parent
	local NavigateBack = require(InGameMenu.Actions.NavigateBack)
	local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)
	local rootReducer = require(InGameMenu.reducer)
	local Pages = require(InGameMenu.Components.Pages)
	local Constants = require(InGameMenu.Resources.Constants)

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	describe("navigationReducer", function()
		it("should go to parent page when one is available and B is pressed", function()
			local oldState = rootReducer(nil, {})
			oldState = rootReducer(oldState, SetCurrentPage(Pages.pagesByKey["Players"].key))

			local newState = rootReducer(oldState, NavigateBack())
			expect(oldState).never.toBe(newState)
			expect(newState.menuPage).toBe(Constants.MainPagePageKey)
		end)
	end)
end
