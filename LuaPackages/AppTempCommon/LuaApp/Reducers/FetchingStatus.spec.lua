return function()
	local CorePackages = game:GetService("CorePackages")
	local UpdateFetchingStatus = require(CorePackages.AppTempCommon.LuaApp.Actions.UpdateFetchingStatus)
	local FetchingStatusReducer = require(CorePackages.AppTempCommon.LuaApp.Reducers.FetchingStatus)
	local RetrievalStatus = require(CorePackages.AppTempCommon.LuaApp.Enum.RetrievalStatus)
	local TableUtilities = require(CorePackages.AppTempCommon.LuaApp.TableUtilities)

	local KEY_1 = "key_1"
	local KEY_2 = "key_2"

	describe("FetchingStatus", function()
		it("should be empty by default", function()
			local state = FetchingStatusReducer(nil, {})

			expect(TableUtilities.FieldCount(state)).to.equal(0)
		end)

		it("should not be modified by other actions", function()
			local oldState = FetchingStatusReducer(nil, {})
			local newState = FetchingStatusReducer(oldState, { type = "not a real action" })

			expect(newState).to.equal(oldState)
		end)

		it("should be changed using UpdateFetchingStatus", function()
			local state = FetchingStatusReducer(nil, {})

			state = FetchingStatusReducer(state, UpdateFetchingStatus(KEY_1, RetrievalStatus.Fetching))
			expect(state[KEY_1]).to.equal(RetrievalStatus.Fetching)

			state = FetchingStatusReducer(state, UpdateFetchingStatus(KEY_1, RetrievalStatus.Failed))
			expect(state[KEY_1]).to.equal(RetrievalStatus.Failed)
		end)

		it("should store different values for different keys", function()
			local state = FetchingStatusReducer(nil, {})

			state = FetchingStatusReducer(state, UpdateFetchingStatus(KEY_1, RetrievalStatus.Failed))
			state = FetchingStatusReducer(state, UpdateFetchingStatus(KEY_2, RetrievalStatus.Done))

			expect(state[KEY_1]).to.equal(RetrievalStatus.Failed)
			expect(state[KEY_2]).to.equal(RetrievalStatus.Done)
		end)

		it("should clear values for nil keys", function()
			local state = { [KEY_1] = RetrievalStatus.Fetching }

			state = FetchingStatusReducer(state, UpdateFetchingStatus(KEY_1, nil))
			expect(state[KEY_1]).to.equal(nil)
		end)
	end)
end
