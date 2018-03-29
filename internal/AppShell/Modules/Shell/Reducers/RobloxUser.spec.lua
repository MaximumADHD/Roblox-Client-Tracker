return function()
	local RobloxUserReducer = require(script.Parent.RobloxUser)
	local Actions = script.Parent.Parent.Actions

	local SetRobloxUser = require(Actions.SetRobloxUser)

	describe("initial state", function()
		it("should return an initial table when passed nil", function()
			local state = RobloxUserReducer(nil, {})
			expect(state).to.be.a("table")
		end)
	end)

	describe("Action SetRobloxUser", function()
		it("should set the robloxName, rbxuid, and under13 values in the store", function()
			local action = SetRobloxUser({robloxName = "TestRobloxName", rbxuid = 12345, under13 = true})
			local state = RobloxUserReducer(state, action)

			expect(state).to.be.a("table")
			expect(state.robloxName).to.be.a("string")
			expect(state.robloxName).to.equal("TestRobloxName")
			expect(state.rbxuid).to.be.a("number")
			expect(state.rbxuid).to.equal(12345)
			expect(state.under13).to.be.a("boolean")
			expect(state.under13).to.equal(true)
		end)

		it("should clear the robloxName, rbxuid, and under13 to nil when passed an empty SetRobloxUser action", function()
			local action = SetRobloxUser({robloxName = "TestRobloxName", rbxuid = 12345, under13 = true})
			local state = RobloxUserReducer(state, action)

			action = SetRobloxUser({})
			local state = RobloxUserReducer(state, action)

			expect(state).to.be.a("table")
			expect(state.robloxName).to.equal(nil)
			expect(state.rbxuid).to.equal(nil)
			expect(state.under13).to.equal(nil)
		end)
	end)
end