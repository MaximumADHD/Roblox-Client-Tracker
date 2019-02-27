return function()
	local CorePackages = game:GetService("CorePackages")
	local UpdateFetchingStatus = require(CorePackages.AppTempCommon.LuaApp.Actions.UpdateFetchingStatus)

	describe("Action UpdateFetchingStatus", function()
		it("should return correct action name", function()
			expect(UpdateFetchingStatus.name).to.equal("UpdateFetchingStatus")
		end)

		it("should return correct action type name", function()
			local action = UpdateFetchingStatus()
			expect(action.type).to.equal(UpdateFetchingStatus.name)
		end)

		it("should return a table with the correct key and status", function()
			local action = UpdateFetchingStatus("key", "status")
			expect(action.key).to.equal("key")
			expect(action.status).to.equal("status")
		end)
	end)
end
