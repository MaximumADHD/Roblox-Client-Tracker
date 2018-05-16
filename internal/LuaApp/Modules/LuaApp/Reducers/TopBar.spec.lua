return function()
	local Modules = game:GetService("CoreGui").RobloxGui.Modules
	local TopBar = require(Modules.LuaApp.Reducers.TopBar)

	local SetStatusBarHeight = require(Modules.LuaApp.Actions.SetStatusBarHeight)
	local SetNavBarHeight = require(Modules.LuaApp.Actions.SetNavBarHeight)

	describe("initial state", function()
		it("should return an initial table when passed nil", function()
			local state = TopBar(nil, {})
			expect(state).to.be.a("table")
		end)
	end)

	describe("SetStatusBarHeight", function()
		it("should update statusBarHeight and totalHeight, and not navBarHeight", function()
			local state = TopBar(nil, {})

			local originalNavBarHeight = state.navBarHeight

			local newStatusBarHeight = 100
			local newTotalHeight = newStatusBarHeight + originalNavBarHeight

			state = TopBar(state, SetStatusBarHeight(newStatusBarHeight))
			expect(state.statusBarHeight).to.equal(newStatusBarHeight)
			expect(state.navBarHeight).to.equal(originalNavBarHeight)
			expect(state.totalHeight).to.equal(newTotalHeight)
		end)
	end)

	describe("SetNavBarHeight", function()
		it("should update navBarHeight and totalHeight, and not statusBarHeight", function()
			local state = TopBar(nil, {})

			local originalStatusBarHeight = state.statusBarHeight

			local newNavBarHeight = 100
			local newTotalHeight = originalStatusBarHeight + newNavBarHeight

			state = TopBar(state, SetNavBarHeight(newNavBarHeight))
			expect(state.statusBarHeight).to.equal(originalStatusBarHeight)
			expect(state.navBarHeight).to.equal(newNavBarHeight)
			expect(state.totalHeight).to.equal(newTotalHeight)
		end)
	end)

end