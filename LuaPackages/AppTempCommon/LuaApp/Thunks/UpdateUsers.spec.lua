return function()
	local CorePackages = game:GetService("CorePackages")

	local Rodux = require(CorePackages.Rodux)
	local Immutable = require(CorePackages.AppTempCommon.Common.Immutable)

	local UpdateUsers = require(CorePackages.AppTempCommon.LuaApp.Thunks.UpdateUsers)

	local AddUsers = require(CorePackages.AppTempCommon.LuaApp.Actions.AddUsers)
	local SetFriendCount = require(CorePackages.AppTempCommon.LuaApp.Actions.SetFriendCount)

	local FriendCount = require(CorePackages.AppTempCommon.LuaChat.Reducers.FriendCount)
	local Users = require(CorePackages.AppTempCommon.LuaApp.Reducers.Users)

	local User = require(CorePackages.AppTempCommon.LuaApp.Models.User)

	local function UsersReducerMonitor (state, action)
		state = state or {
			numberOfAddUsersCalled = 0,
			numberOfUsersPassedIn = 0,
		}

		if action.type == AddUsers.name then
			state.numberOfAddUsersCalled = state.numberOfAddUsersCalled + 1
			state.numberOfUsersPassedIn = 0
			for _, _ in pairs(action.users) do
				state.numberOfUsersPassedIn = state.numberOfUsersPassedIn + 1
			end
		end

		return state
	end

	local function FriendCountReducerMonitor (state, action)
		state = state or {
			numberOfSetFriendCountCalled = 0,
		}

		if action.type == SetFriendCount.name then
			state.numberOfSetFriendCountCalled = state.numberOfSetFriendCountCalled + 1
		end

		return state
	end

	local function CustomReducer(state, action)
		state = state or {}

		return {
			Users = Users(state.Users, action),
			UsersReducerMonitor = UsersReducerMonitor(state.UsersReducerMonitor, action),

			FriendCount = FriendCount(state.FriendCount, action),
			FriendCountReducerMonitor = FriendCountReducerMonitor(state.FriendCountReducerMonitor, action),
		}
	end

	local listOfUsers = {
		["1"] = User.fromData(1, "Hedonism Bot", true),
		["2"] = User.fromData(2, "Hypno Toad", true),
		["3"] = User.fromData(3, "John Zoidberg", false),
		["4"] = User.fromData(4, "Pazuzu", true),
		["5"] = User.fromData(5, "Ogden Wernstrom", true),
		["6"] = User.fromData(6, "Lrrr", true),
	}

	it("should do nothing if empty list of users is provided", function()
		local store = Rodux.Store.new(CustomReducer, {}, {
			Rodux.thunkMiddleware,
		})
		store:dispatch(UpdateUsers({ }))

		local state = store:getState()

		expect(state.UsersReducerMonitor.numberOfAddUsersCalled).to.equal(0)
		expect(state.FriendCountReducerMonitor.numberOfSetFriendCountCalled).to.equal(0)
	end)

	it("should update only the number of users with modified data", function()
		local store = Rodux.Store.new(CustomReducer, {
			Users = listOfUsers,
		}, {
			Rodux.thunkMiddleware,
		})

		local currentUsers = store:getState().Users
		local listOfUsersWithPotentialUpdates = {
			Immutable.Set(currentUsers["2"], "presence", User.PresenceType.IN_GAME), -- changed
			Immutable.Set(currentUsers["5"], "isFriend", false), -- changed
			Immutable.Set(currentUsers["6"], "isFriend", true), -- did not change
		}

		store:dispatch(UpdateUsers(listOfUsersWithPotentialUpdates))

		local state = store:getState()
		expect(state.UsersReducerMonitor.numberOfAddUsersCalled).to.equal(1)
		expect(state.UsersReducerMonitor.numberOfUsersPassedIn).to.equal(2)
	end)

	it("should correctly update the number of friends", function()
		local store = Rodux.Store.new(CustomReducer, {}, {
			Rodux.thunkMiddleware,
		})
		store:dispatch(UpdateUsers(listOfUsers))

		local state = store:getState()
		expect(state.FriendCountReducerMonitor.numberOfSetFriendCountCalled).to.equal(1)
		expect(state.FriendCount).to.equal(5)

		local currentUsers = store:getState().Users
		local listOfUsersWithPotentialUpdates = {
			Immutable.Set(currentUsers["2"], "presence", User.PresenceType.IN_GAME), -- friendship didn't change
			Immutable.Set(currentUsers["5"], "isFriend", false), -- friendship changed
			Immutable.Set(currentUsers["6"], "isFriend", false), -- friendship changed
			User.fromData(7, "Nibbler", true), -- new friend
		}

		store:dispatch(UpdateUsers(listOfUsersWithPotentialUpdates))

		state = store:getState()
		expect(state.FriendCount).to.equal(4)
	end)
end