return function()
	local Modules = game:GetService("CoreGui").RobloxGui.Modules
	local PagePaused = require(Modules.LuaApp.Reducers.PagePaused)
	local SetPagePaused = require(Modules.LuaApp.Actions.SetPagePaused)

	it("should be disabled by default", function()
		local state = PagePaused(nil, {})

		expect(state).to.equal(false)
	end)

	it("should be changed using SetPagePaused", function()
		local state = PagePaused(nil, {})

		state = PagePaused(state, SetPagePaused(true))

		expect(state).to.equal(true)

		state = PagePaused(state, SetPagePaused(false))

		expect(state).to.equal(false)
	end)

	it("should be unchanged by other actions", function()
		local state = PagePaused(nil, {})

		state = PagePaused(state, {
			type = "Do the thing!",
			value = true
		})

		expect(state).to.equal(false)
	end)
end