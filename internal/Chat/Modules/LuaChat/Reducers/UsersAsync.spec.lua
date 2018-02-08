return function()
	local LuaChat = script.Parent.Parent
	local UsersAsync = require(script.Parent.UsersAsync)
	local ActionType = require(LuaChat.ActionType)
	local User = require(LuaChat.Models.User)

	describe("initial state", function()
		it("should return an initial table when passed nil", function()
			local state = UsersAsync(nil, {})
			expect(state).to.be.a("table")
		end)
	end)

	describe("RequestAllFriends", function()
		it("should set the async state to true", function()
			local state = UsersAsync(nil, {})
			state = UsersAsync(state, {
				type = ActionType.RequestAllFriends,
			})

			expect(state.allFriendsIsFetching).to.equal(true)
		end)
	end)

	describe("ReceivedAllFriends", function()
		it("should set the async state to false", function()
			local state = UsersAsync(nil, {})
			state = UsersAsync(state, {
				type = ActionType.ReceivedAllFriends,
			})

			expect(state.allFriendsIsFetching).to.equal(false)
		end)
	end)

	describe("RequestUserPresence", function()
		it("should set the async state to true", function()
			local user = User.mock()
			local state = UsersAsync(nil, {})
			state = UsersAsync(state, {
				type = ActionType.RequestUserPresence,
				userId = user.id,
			})

			expect(state[user.id].presenceIsFetching).to.equal(true)
		end)
	end)

	describe("ReceivedUserPresence", function()
		it("should set the async state to false", function()
			local user = User.mock()
			local state = UsersAsync({[user.id] = {presenceIsFetching = true}}, {})
			state = UsersAsync(state, {
				type = ActionType.ReceivedUserPresence,
				userId = user.id,
			})

			expect(state[user.id].presenceIsFetching).to.equal(false)
		end)
	end)

	describe("RequestUsername", function()
		it("should set the async state to true", function()
			local user = User.mock()
			local state = UsersAsync(nil, {})
			state = UsersAsync(state, {
				type = ActionType.RequestUsername,
				userId = user.id,
			})

			expect(state[user.id].nameIsFetching).to.equal(true)
		end)
	end)

	describe("ReceivedUsername", function()
		it("should set the async state to false", function()
			local user = User.mock()
			local state = UsersAsync({[user.id] = {nameIsFetching = true}}, {})
			state = UsersAsync(state, {
				type = ActionType.ReceivedUsername,
				userId = user.id,
			})

			expect(state[user.id].nameIsFetching).to.equal(false)
		end)
	end)

end