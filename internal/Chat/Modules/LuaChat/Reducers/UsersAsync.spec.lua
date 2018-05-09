return function()
	local Modules = game:GetService("CoreGui").RobloxGui.Modules
	local LuaChat = Modules.LuaChat

	local UsersAsyncReducer = require(script.Parent.UsersAsync)
	local User = require(LuaChat.Models.User)

	local ReceivedAllFriends = require(LuaChat.Actions.ReceivedAllFriends)
	local ReceivedUserPresence = require(LuaChat.Actions.ReceivedUserPresence)
	local RequestAllFriends = require(LuaChat.Actions.RequestAllFriends)
	local RequestUserPresence = require(LuaChat.Actions.RequestUserPresence)

	describe("initial state", function()
		it("should return an initial table when passed nil", function()
			local state = UsersAsyncReducer(nil, {})
			expect(state).to.be.a("table")
		end)
	end)

	describe("RequestAllFriends", function()
		it("should set the async state to true", function()
			local state = UsersAsyncReducer(nil, {})
			state = UsersAsyncReducer(state, RequestAllFriends())

			expect(state.allFriendsIsFetching).to.equal(true)
		end)
	end)

	describe("ReceivedAllFriends", function()
		it("should set the async state to false", function()
			local state = UsersAsyncReducer(nil, {})
			state = UsersAsyncReducer(state, ReceivedAllFriends())

			expect(state.allFriendsIsFetching).to.equal(false)
		end)
	end)

	describe("RequestUserPresence", function()
		it("should set the async state to true", function()
			local user = User.mock()
			local state = UsersAsyncReducer(nil, {})
			state = UsersAsyncReducer(state, RequestUserPresence(user.id))

			expect(state[user.id].presenceIsFetching).to.equal(true)
		end)
	end)

	describe("ReceivedUserPresence", function()
		it("should set the async state to false", function()
			local user = User.mock()
			local state = UsersAsyncReducer({[user.id] = {presenceIsFetching = true}}, {})
			state = UsersAsyncReducer(state, ReceivedUserPresence(user.id))

			expect(state[user.id].presenceIsFetching).to.equal(false)
		end)
	end)

end