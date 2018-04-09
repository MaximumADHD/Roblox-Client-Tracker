return function()
	local Modules = game:GetService("CoreGui").RobloxGui.Modules
	local AppRouter = require(Modules.LuaApp.Reducers.AppRouter)
	local AppPage = require(Modules.LuaApp.AppPage)

	it("should have currentPage as None by default", function()
		local defaultState = AppRouter(nil, {})

		expect(type(defaultState)).to.equal("table")
		expect(defaultState.currentPage).to.equal(AppPage.None)
		expect(defaultState.parameters).to.equal(nil)
	end)

	it("should be unchanged by other actions", function()
		local defaultState = AppRouter(nil, {})
		local newState = AppRouter(defaultState, { type = "not SetAppPage" })

		expect(newState.currentPage).to.equal(AppPage.None)
		expect(newState.parameters).to.equal(nil)
	end)

	it("should catch SetAppPage actions", function()
		local defaultState = AppRouter(nil, {})
		local newState = AppRouter(defaultState, { type = "SetAppPage", targetPage = AppPage.Home })
		newState = AppRouter(newState, { type = "SetAppPage", targetPage = AppPage.Games })

		expect(newState.currentPage).to.equal(AppPage.Games)
		expect(newState.parameters).to.equal(nil)
	end)
end