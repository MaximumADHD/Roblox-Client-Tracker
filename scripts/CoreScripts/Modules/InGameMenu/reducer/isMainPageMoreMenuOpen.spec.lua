return function()
	local CorePackages = game:GetService("CorePackages")

	local InGameMenu = script.Parent.Parent
	local SetMainPageMoreMenuOpen = require(InGameMenu.Actions.SetMainPageMoreMenuOpen)
	local SetMenuOpen = require(InGameMenu.Actions.SetMenuOpen)
	local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)
	local SetRespawning = require(InGameMenu.Actions.SetRespawning)
	local reducer = require(script.Parent)

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local GetFFlagIGMControllerBarRefactor = require(InGameMenu.Flags.GetFFlagIGMControllerBarRefactor)

	describe("isMainPageMoreMenuOpen", function()
		if not GetFFlagIGMControllerBarRefactor() then
			it("should be closed by default", function()
				local defaultState = reducer(nil, {})
				expect(defaultState.isMainPageMoreMenuOpen).toBe(false)
			end)
			it("should set the isMainPageMoreMenuOpen to true", function()
				local oldState = reducer(nil, {})
				local newState = reducer(oldState, SetMainPageMoreMenuOpen(true))
				expect(oldState).never.toBe(newState)
				expect(newState.isMainPageMoreMenuOpen).toBe(true)
			end)
			it("should set the isMainPageMoreMenuOpen to false", function()
				local oldState = reducer(nil, {})
				local newState = reducer(oldState, SetMainPageMoreMenuOpen(false))
				expect(oldState).never.toBe(newState)
				expect(newState.isMainPageMoreMenuOpen).toBe(false)
			end)
			it("closing menu should also close moreMenu", function()
				local state = reducer(nil, {})
				state = reducer(state, SetMenuOpen(true))
				state = reducer(state, SetMainPageMoreMenuOpen(true))
				expect(state.isMainPageMoreMenuOpen).toBe(true)

				state = reducer(state, SetMenuOpen(false))
				expect(state.isMainPageMoreMenuOpen).toBe(false)
			end)
			it("should close moreMenu on page change", function()
				local state = reducer(nil, {})
				state = reducer(state, SetMainPageMoreMenuOpen(true))
				expect(state.isMainPageMoreMenuOpen).toBe(true)

				state = reducer(state, SetCurrentPage("Testing testing"))
				expect(state.isMainPageMoreMenuOpen).toBe(false)
			end)
			it("should close moreMenu when respawnDialog is opened", function()
				local state = reducer(nil, {})
				state = reducer(state, SetMainPageMoreMenuOpen(true))
				expect(state.isMainPageMoreMenuOpen).toBe(true)
				state = reducer(state, SetRespawning(true))

				expect(state.isMainPageMoreMenuOpen).toBe(false)

				-- menu should be closed when respawn closes
				state = reducer(state, SetRespawning(false))
				expect(state.isMainPageMoreMenuOpen).toBe(false)
			end)
		end
	end)
end
