return function()
	local PlaceInfoRodux = script:FindFirstAncestor("PlaceInfoRodux")
	local Packages = PlaceInfoRodux.Parent
	local ApiFetchPlaceInfos = require(script.Parent.ApiFetchPlaceInfos)

	local Rodux = require(Packages.Rodux)
	local Roact = require(Packages.Dev.Roact)
	local PlaceInfosReducer = require(PlaceInfoRodux.Reducers).PlaceInfosReducer

	local Promise = require(Packages.Dev.Promise)
	local JestGlobals = require(Packages.Dev.JestGlobals)
	local jest = JestGlobals.jest
	local expect = JestGlobals.expect

	local MockPlaceInfoModel = require(PlaceInfoRodux.Models).MockPlaceInfoModel

	describe("GetMultiplePlaceInfos network call", function()
		local Reducers = Rodux.combineReducers({
			ChatAppReducer = Rodux.combineReducers({
				PlaceInfos = PlaceInfosReducer,
			}),
		})

		it("should query place info successfully", function()
			local mockStore = Rodux.Store.new(Reducers, {}, { Rodux.thunkMiddleware })
			local mockedNetworkImpl = jest.fn()
			local mockedPlaceInfoModel = MockPlaceInfoModel.mock()
			local networkPromise = Promise.resolve({
				responseBody = {
					mockedPlaceInfoModel,
				},
			})

			mockedNetworkImpl.mockReturnValue(networkPromise)

			Roact.act(function()
				mockStore:dispatch(ApiFetchPlaceInfos(mockedNetworkImpl, { mockedPlaceInfoModel.placeId }))
				mockStore:flush()
				wait()
			end)

			local state = mockStore:getState()

			expect(state.ChatAppReducer.PlaceInfos[mockedPlaceInfoModel.placeId].name).toEqual(
				mockedPlaceInfoModel.name
			)
		end)
	end)
end
