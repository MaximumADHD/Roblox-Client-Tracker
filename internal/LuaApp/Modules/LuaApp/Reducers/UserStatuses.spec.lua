return function()
	local Modules = game:GetService("CoreGui").RobloxGui.Modules
	local UserStatuses = require(Modules.LuaApp.Reducers.UserStatuses)
	local FetchingUser = require(Modules.LuaChat.Actions.FetchingUser)
	local AddUser = require(Modules.LuaApp.Actions.AddUser)
	local RetrievalStatus = require(Modules.LuaApp.Enum.RetrievalStatus)
	local User = require(Modules.LuaApp.Models.User)

	describe("AddUser", function()
		it("should not change by non-relevant actions", function()
			local oldState = UserStatuses(nil, {})
			local newState = UserStatuses(oldState, { type = "not a real action" })
			expect(oldState).to.equal(newState)
		end)

		it("should set is fetching to done when user is received", function()
			local oldState = UserStatuses(nil, {})
			local user = User.mock()

			expect(oldState[user.id]).to.equal(nil)

			local newState = UserStatuses(oldState, AddUser(user))
			expect(newState[user.id]).to.equal(RetrievalStatus.Done)
		end)
	end)

	describe("FetchingUser", function()
		it("should not change by non-relevant actions", function()
			local oldState = UserStatuses(nil, {})
			local newState = UserStatuses(oldState, { type = "not a real action" })
			expect(oldState).to.equal(newState)
		end)

		it("should set user status to NotStarted or nil by default", function()
			local oldState = UserStatuses(nil, {})
			local user = User.mock()
			expect(oldState[user.id]).to.equal(nil)
		end)

		it("should set is fetching on new and existing users", function()
			local oldState = UserStatuses(nil, {})
			local user = User.mock()
			local newState = UserStatuses(oldState, FetchingUser(user.id))

			expect(newState[user.id]).to.equal(RetrievalStatus.Fetching)

			local finalState = UserStatuses(newState, AddUser(user))

			expect(finalState[user.id]).to.equal(RetrievalStatus.Done)
		end)
	end)
end