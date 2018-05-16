return function()

	local Modules = game:GetService("CoreGui").RobloxGui.Modules
	local LocalUserId = require(Modules.LuaApp.Reducers.LocalUserId)
	local SetLocalUserId = require(Modules.LuaApp.Actions.SetLocalUserId)

	describe("SetLocalUserId", function()
		it("should set the local userid with the given id", function()

			local state = nil
			local existingId = state
			local newId = "1337"

			local newState = LocalUserId(state, SetLocalUserId(newId))

			expect(state).to.equal(existingId)
			expect(newState).to.equal(newId)
		end)
	end)

end