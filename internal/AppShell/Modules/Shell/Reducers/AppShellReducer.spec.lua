return function()
	local AppShellReducer = require(script.Parent.AppShellReducer)

	describe("initial state", function()
		it("should return an initial table when passed nil", function()
			local state = AppShellReducer(nil, {})
			expect(state).to.be.a("table")
		end)
	end)
end