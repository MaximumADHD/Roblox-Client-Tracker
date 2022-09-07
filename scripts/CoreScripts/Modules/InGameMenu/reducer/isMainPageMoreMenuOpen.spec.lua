return function()
	local InGameMenu = script.Parent.Parent
	local SetMainPageMoreMenuOpen = require(InGameMenu.Actions.SetMainPageMoreMenuOpen)
	local SetMenuOpen = require(InGameMenu.Actions.SetMenuOpen)
	local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)
	local SetRespawning = require(InGameMenu.Actions.SetRespawning)
	local reducer = require(script.Parent)

	local GetFFlagIGMControllerBarRefactor = require(InGameMenu.Flags.GetFFlagIGMControllerBarRefactor)




	describe("isMainPageMoreMenuOpen", function()
		if not GetFFlagIGMControllerBarRefactor() then
			it("should be closed by default", function()
				local defaultState = reducer(nil, {})
				expect(defaultState.isMainPageMoreMenuOpen).to.equal(false)
			end)
			it("should set the isMainPageMoreMenuOpen to true", function()
				local oldState = reducer(nil, {})
				local newState = reducer(oldState, SetMainPageMoreMenuOpen(true))
				expect(oldState).to.never.equal(newState)
				expect(newState.isMainPageMoreMenuOpen).to.equal(true)
			end)
			it("should set the isMainPageMoreMenuOpen to false", function()
				local oldState = reducer(nil, {})
				local newState = reducer(oldState, SetMainPageMoreMenuOpen(false))
				expect(oldState).to.never.equal(newState)
				expect(newState.isMainPageMoreMenuOpen).to.equal(false)
			end)
			it("closing menu should also close moreMenu", function()
				local state = reducer(nil, {})
				state = reducer(state, SetMenuOpen(true))
				state = reducer(state, SetMainPageMoreMenuOpen(true))
				expect(state.isMainPageMoreMenuOpen).to.equal(true)

				state = reducer(state, SetMenuOpen(false))
				expect(state.isMainPageMoreMenuOpen).to.equal(false)
			end)
			it("should close moreMenu on page change", function()
				local state = reducer(nil, {})
				state = reducer(state, SetMainPageMoreMenuOpen(true))
				expect(state.isMainPageMoreMenuOpen).to.equal(true)

				state = reducer(state, SetCurrentPage("Testing testing"))
				expect(state.isMainPageMoreMenuOpen).to.equal(false)
			end)
			it("should close moreMenu when respawnDialog is opened", function()
				local state = reducer(nil, {})
				state = reducer(state, SetMainPageMoreMenuOpen(true))
				expect(state.isMainPageMoreMenuOpen).to.equal(true)
				state = reducer(state, SetRespawning(true))

				expect(state.isMainPageMoreMenuOpen).to.equal(false)

				-- menu should be closed when respawn closes
				state = reducer(state, SetRespawning(false))
				expect(state.isMainPageMoreMenuOpen).to.equal(false)
			end)
		end
	end)
end
