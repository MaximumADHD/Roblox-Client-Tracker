return function()
	local XboxUserReducer = require(script.Parent.XboxUser)
	local Actions = script.Parent.Parent.Actions

	local SetXboxUser = require(Actions.SetXboxUser)

	describe("initial state", function()
		it("should return an initial table when passed nil", function()
			local state = XboxUserReducer(nil, {})
			expect(state).to.be.a("table")
		end)
	end)

	describe("Action SetXboxUser", function()
		it("should set the gamertag and xuid values in the store", function()
			local action = SetXboxUser({gamertag = "TestGamerTag", xuid = 12345})
			local state = XboxUserReducer(state, action)

			expect(state).to.be.a("table")
			expect(state.gamertag).to.be.a("string")
			expect(state.gamertag).to.equal("TestGamerTag")
			expect(state.xuid).to.be.a("number")
			expect(state.xuid).to.equal(12345)
		end)
		
		it("should clear the gamertag and xuid values to nil when passed an empty SetXboxUser action", function()
			local action = SetXboxUser({gamertag = "TestGamerTag", xuid = 12345})
			local state = XboxUserReducer(state, action)
			
			action = SetXboxUser({})
			local state = XboxUserReducer(state, action)

			expect(state).to.be.a("table")
			expect(state.gamertag).to.equal(nil)
			expect(state.xuid).to.equal(nil)
		end)
	end)
end