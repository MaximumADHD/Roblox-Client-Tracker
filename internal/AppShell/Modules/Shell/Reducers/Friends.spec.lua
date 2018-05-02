return function()
	local FriendsReducer = require(script.Parent.Friends)
	local Actions = script.Parent.Parent.Actions

	local SetFriendsData = require(Actions.SetFriendsData)

	describe("initial state", function()
		it("should return an table when passed nil", function()
			local state = FriendsReducer(nil, {})
			expect(state).to.be.a("table")
		end)

		it("should set initial values when passed nil", function()
			local state = FriendsReducer(nil, {})
			expect(state.initialized).to.be.a("boolean")
			expect(state.initialized).to.equal(false)
			expect(state.friendsData).to.be.a("table")
			expect(#state.friendsData).to.equal(0)
		end)
	end)

	describe("Action SetFriendsData", function()
		it("should initialize friends in friendsData", function()
			local action = SetFriendsData({ {}, {} })
			local state = FriendsReducer(nil, action)

			expect(state.friendsData).to.be.a("table")
			expect(state.friendsData[2]).to.be.a("table")
			expect(state.initialized).to.equal(true)
		end)

		it("should put friend data into the entries", function()
			local action = SetFriendsData({ { xuid=12345, RobloxName="TestName", status="online" } })
			local state = FriendsReducer(nil, action)

			expect(state.friendsData[1].xuid).to.be.a("number")
			expect(state.friendsData[1].xuid).to.equal(12345)
			expect(state.friendsData[1].RobloxName).to.be.a("string")
			expect(state.friendsData[1].RobloxName).to.equal("TestName")
		end)

		it("should clear the friends array when passed an empty table", function()
			local action = SetFriendsData({ { xuid=12345, RobloxName="TestName", status="online" } })
			local state = FriendsReducer(nil, action)

			action = SetFriendsData({})
			state = FriendsReducer(state, action)

			expect(state.friendsData).to.be.a("table")
			expect(#state.friendsData).to.equal(0)
		end)

		it("should reset the state when passed a nil SetFriendsData action", function()
			local action = SetFriendsData({ { xuid=12345, RobloxName="TestName", status="online" } })
			local state = FriendsReducer(nil, action)
			action = SetFriendsData(nil)
			state = FriendsReducer(state, action)

			expect(state.initialized).to.be.a("boolean")
			expect(state.initialized).to.equal(false)
			expect(state.friendsData).to.be.a("table")
			expect(#state.friendsData).to.equal(0)
		end)
	end)
end