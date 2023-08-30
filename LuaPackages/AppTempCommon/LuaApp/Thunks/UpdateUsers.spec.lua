--!nonstrict
return function()
	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local Rodux = require(CorePackages.Rodux)
	local Immutable = require(CorePackages.Workspace.Packages.AppCommonLib).Immutable

	local UpdateUsers = require(CorePackages.AppTempCommon.LuaApp.Thunks.UpdateUsers)

	local AddUsers = require(CorePackages.Workspace.Packages.UserLib).Actions.AddUsers
	local SetFriendCount = require(CorePackages.AppTempCommon.LuaApp.Actions.SetFriendCount)

	local FriendCount = require(CorePackages.AppTempCommon.LuaChat.Reducers.FriendCount)
	local Users = require(CorePackages.Workspace.Packages.UserLib).Reducers.UserReducer

	local User = require(CorePackages.Workspace.Packages.UserLib).Models.UserModel

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
		["1"] = User.fromDataTable({
			id = 1,
			name = "Hedonism Bot",
			isFriend = true,
			hasVerifiedBadge = false,
		}),
		["2"] = User.fromDataTable({
			id = 2,
			name = "Hypno Toad",
			isFriend = true,
			hasVerifiedBadge = false,
		}),
		["3"] = User.fromDataTable({
			id = 3,
			name = "John Zoidberg",
			isFriend = false,
			hasVerifiedBadge = false,
		}),
		["4"] = User.fromDataTable({
			id = 4,
			name = "Pazuzu",
			isFriend = true,
			hasVerifiedBadge = false,
		}),
		["5"] = User.fromDataTable({
			id = 5,
			name = "Ogden Wernstrom",
			isFriend = true,
			hasVerifiedBadge = false,
		}),
		["6"] = User.fromDataTable({
			id = 6,
			name = "Lrrr",
			isFriend = true,
			hasVerifiedBadge = false,
		}),
	}

	it("should do nothing if empty list of users is provided", function()
		local store = Rodux.Store.new(CustomReducer, {}, {
			Rodux.thunkMiddleware,
		})
		store:dispatch(UpdateUsers({ }))

		local state = store:getState()

		expect(state.UsersReducerMonitor.numberOfAddUsersCalled).toBe(0)
		expect(state.FriendCountReducerMonitor.numberOfSetFriendCountCalled).toBe(0)
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
		expect(state.UsersReducerMonitor.numberOfAddUsersCalled).toBe(1)
		expect(state.UsersReducerMonitor.numberOfUsersPassedIn).toBe(2)
	end)

	it("should correctly update the number of friends", function()
		local store = Rodux.Store.new(CustomReducer, {}, {
			Rodux.thunkMiddleware,
		})
		store:dispatch(UpdateUsers(listOfUsers))

		local state = store:getState()
		expect(state.FriendCountReducerMonitor.numberOfSetFriendCountCalled).toBe(1)
		expect(state.FriendCount).toBe(5)

		local currentUsers = store:getState().Users
		local listOfUsersWithPotentialUpdates = {
			Immutable.Set(currentUsers["2"], "presence", User.PresenceType.IN_GAME), -- friendship didn't change
			Immutable.Set(currentUsers["5"], "isFriend", false), -- friendship changed
			Immutable.Set(currentUsers["6"], "isFriend", false), -- friendship changed
			User.fromData(7, "Nibbler", true), -- new friend
		}

		store:dispatch(UpdateUsers(listOfUsersWithPotentialUpdates))

		state = store:getState()
		expect(state.FriendCount).toBe(4)
	end)
end
