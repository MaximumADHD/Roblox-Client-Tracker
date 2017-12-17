return function()
	local LuaChat = script.Parent.Parent
	local Users = require(script.Parent.Users)
	local ActionType = require(LuaChat.ActionType)
	local Constants = require(LuaChat.Constants)
	local User = require(LuaChat.Models.User)

	describe("initial state", function()
		it("should return an initial table when passed nil", function()
			local state = Users(nil, {})
			expect(state).to.be.a("table")
		end)
	end)

	describe("AddUser", function()
		it("should add a user to the store", function()
			local user = User.mock()

			local state = Users(user, {
				type = ActionType.AddUser,
				user = user
			})

			expect(state[user.id]).to.equal(user)
		end)
	end)

	describe("SetUserIsFriend", function()
		it("should set isFriend on an existing user", function()
			local user = User.mock()
			local state = {
				[user.id] = user
			}

			state = Users(state, {
				type = ActionType.SetUserIsFriend,
				userId = user.id,
				isFriend = true,
			})

			expect(user.isFriend).to.equal(false)
			expect(state[user.id].isFriend).to.equal(true)
		end)
	end)

	describe("GotUserPresence", function()
		it("should set presence on an existing user", function()
			local user = User.mock()
			local state = {
				[user.id] = user
			}

			local existingPresence = user.presence
			local newPresence = Constants.PresenceType.ONLINE

			state = Users(state, {
				type = ActionType.GotUserPresence,
				userId = user.id,
				presence = newPresence
			})

			expect(user.presence).to.equal(existingPresence)
			expect(state[user.id].presence).to.equal(newPresence)
		end)
	end)

	describe("ReceivedUsername", function()
		it("should set name on an existing user", function()
			local user = User.mock()
			local state = {
				[user.id] = user
			}

			local existingUsername = user.name
			local newUsername = "testingthething"

			state = Users(state, {
				type = ActionType.ReceivedUsername,
				userId = user.id,
				username = newUsername,
			})

			expect(user.name).to.equal(existingUsername)
			expect(state[user.id].name).to.equal(newUsername)
		end)

		it("should set name and create a new user", function()
			local state = {}

			local userId = "BlahblahBlah"

			local newUsername = "testingthething"

			state = Users(state, {
				type = ActionType.ReceivedUsername,
				userId = userId,
				username = newUsername,
			})

			expect(state[userId].name).to.equal(newUsername)
		end)
	end)

end