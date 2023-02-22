return function()
	local Http = script:FindFirstAncestor("Http")
	local Packages = Http.Parent

	local Dash = require(Packages.Dash)
	local Rodux = require(Packages.Rodux)
	local Promise = require(Packages.Promise)

	local jestExpect = require(Packages.Dev.JestGlobals).expect

	local FetchingStatus = require(Http.Reducers.FetchingStatus)
	local RetrievalStatus = require(Http.Enum).RetrievalStatus

	local ApiFetchThumbnails = require(script.Parent.ApiFetchThumbnails)
	local GetFFlagApiFetchThumbnailsKeyMapper = require(Packages.SharedFlags).GetFFlagApiFetchThumbnailsKeyMapper

	local REQUEST_NAME = "Game"
	local REQUEST_SIZE = "512x512"

	local storeDispatch = function()
		return {
			type = "test",
		}
	end

	local successFetchFunction = function(_requestImpl, universeIds, _size)
		local responseData = Dash.map(universeIds, function(universeId)
			return {
				targetId = universeId,
				state = "Completed",
				imageUrl = "string",
			}
		end)
		return Promise.resolve({
			responseBody = {
				data = responseData,
			},
		})
	end

	local failureFetchFunction = function(_requestImpl, universeIds, _size)
		return Promise.resolve({
			responseBody = {
				data = {},
			},
		})
	end

	local thumbnailRequestThunk = function(universeIds, fetchFunction)
		return function(store)
			return ApiFetchThumbnails.Fetch(
				nil,
				universeIds,
				REQUEST_SIZE,
				REQUEST_NAME,
				fetchFunction,
				storeDispatch,
				store
			)
		end
	end

	local getFetchingStatus = function(mockStore, universeId)
		return ApiFetchThumbnails.GetFetchingStatus(mockStore:getState(), universeId, REQUEST_SIZE, REQUEST_NAME)
	end

	describe("fetching status", function()
		if GetFFlagApiFetchThumbnailsKeyMapper() then
			it("should set Done status correctly for requested ids", function()
				local Reducers = Rodux.combineReducers({
					FetchingStatus = FetchingStatus,
				})
				local mockStore = Rodux.Store.new(Reducers, {
					FetchingStatus = {},
				}, { Rodux.thunkMiddleware })
				local thumbnailUniverseIds = {
					123456,
					234567,
					345678,
				}
				jestExpect(getFetchingStatus(mockStore, "123456")).toBe(RetrievalStatus.NotStarted)
				mockStore:dispatch(thumbnailRequestThunk(thumbnailUniverseIds, successFetchFunction))
				jestExpect(getFetchingStatus(mockStore, "123456")).toBe(RetrievalStatus.Done)
			end)

			it("should set Failed status correctly for requested ids", function()
				local Reducers = Rodux.combineReducers({
					FetchingStatus = FetchingStatus,
				})
				local mockStore = Rodux.Store.new(Reducers, {
					FetchingStatus = {},
				}, { Rodux.thunkMiddleware })
				local thumbnailUniverseIds = {
					123456,
					234567,
					345678,
				}
				jestExpect(getFetchingStatus(mockStore, "123456")).toBe(RetrievalStatus.NotStarted)
				mockStore:dispatch(thumbnailRequestThunk(thumbnailUniverseIds, failureFetchFunction)):await()
				jestExpect(getFetchingStatus(mockStore, "123456")).toBe(RetrievalStatus.Failed)
			end)
		end
	end)
end
