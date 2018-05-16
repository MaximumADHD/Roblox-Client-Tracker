return function()
	local Modules = game:GetService("CoreGui").RobloxGui.Modules
	local Users = require(Modules.LuaApp.Reducers.Users)
	local User = require(Modules.LuaApp.Models.User)
	local AddUser = require(Modules.LuaApp.Actions.AddUser)
	local SetUserIsFriend = require(Modules.LuaApp.Actions.SetUserIsFriend)
	local SetUserPresence = require(Modules.LuaApp.Actions.SetUserPresence)
	local SetUserMembershipType = require(Modules.LuaApp.Actions.SetUserMembershipType)
	local Constants = require(Modules.LuaChat.Constants)
	local ReceivedUserPresence = require(Modules.LuaChat.Actions.ReceivedUserPresence)
	local MockId = require(Modules.LuaApp.MockId)

	describe("initial state", function()
		it("should return an initial table when passed nil", function()
			local state = Users(nil, {})
			expect(state).to.be.a("table")
		end)
	end)

	describe("AddUser", function()
		it("should add a user to the store", function()
			local user = User.mock()
			local state = {}

			state = Users(state, AddUser(user))

			expect(state[user.id]).to.equal(user)
		end)
	end)

	describe("SetUserIsFriend", function()
		it("should set isFriend on an existing user", function()
			local user = User.mock()
			local state = {
				[user.id] = user
			}

			expect(state[user.id].isFriend).to.equal(false)

			state = Users(state, SetUserIsFriend(user.id, true))
			expect(state[user.id].isFriend).to.equal(true)

			state = Users(state, SetUserIsFriend(user.id, false))
			expect(state[user.id].isFriend).to.equal(false)
		end)
	end)

	describe("SetUserPresence", function()
		it("should set presence on an existing user", function()
			local user = User.mock()
			local state = {
				[user.id] = user
			}

			expect(state[user.id].presence).to.equal(User.PresenceType.OFFLINE)

			state = Users(state, SetUserPresence(user.id, User.PresenceType.ONLINE))
			expect(state[user.id].presence).to.equal(User.PresenceType.ONLINE)

			state = Users(state, SetUserPresence(user.id, User.PresenceType.IN_GAME))
			expect(state[user.id].presence).to.equal(User.PresenceType.IN_GAME)

			state = Users(state, SetUserPresence(user.id, User.PresenceType.IN_STUDIO))
			expect(state[user.id].presence).to.equal(User.PresenceType.IN_STUDIO)
		end)
	end)

	describe("ReceivedUserPresence", function()
		it("should set presence on an existing user", function()
			local user = User.mock()
			local state = {
				[user.id] = user
			}

			local existingPresence = user.presence
			local newPresence = Constants.PresenceType.ONLINE
			local lastLocation = MockId()
			local newPlaceId = MockId()

			state = Users(state, ReceivedUserPresence(user.id, newPresence, lastLocation, newPlaceId))

			expect(user.presence).to.equal(existingPresence)
			expect(state[user.id].presence).to.equal(newPresence)
			expect(user.lastLocation).to.equal(lastLocation)
			expect(user.placeId).to.equal(newPlaceId)
		end)
	end)

	describe("SetUserMembershipType", function()
		it("should set membership on an existing user", function()
			local user = User.mock()
			local state = {
				[user.id] = user
			}

			local existingMembership = user.membership
			local newMembership = Enum.MembershipType.BuildersClub

			state = Users(state, SetUserMembershipType(user.id, newMembership))

			expect(user.membership).to.equal(existingMembership)
			expect(state[user.id].membership).to.equal(newMembership)
		end)
	end)
end