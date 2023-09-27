return function()
	local CorePackages = game:GetService("CorePackages")
	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect
	local Rodux = require(CorePackages.Rodux)
	local InspectAndBuyFolder = script.Parent.Parent
	local Reducer = require(InspectAndBuyFolder.Reducers.InspectAndBuyReducer)
	local MockNetwork = require(InspectAndBuyFolder.Test.MockNetwork)
	local Network = require(InspectAndBuyFolder.Services.Network)
	local Thunk = require(InspectAndBuyFolder.Thunk)
	local MockId = require(InspectAndBuyFolder.MockId)
	local GetExperiencePlayability = require(script.Parent.GetExperiencePlayability)

	it("should get the playability status of an experience", function()
		local store = Rodux.Store.new(Reducer)
		local mockId = MockId()
		local thunk = GetExperiencePlayability(mockId)

		Thunk.test(thunk, store, {
			[Network] = MockNetwork.new(),
		})

		local playabilityFetchedInfo = MockNetwork.GetExperiencePlayability()
		local playabilityInfo = playabilityFetchedInfo[1]

		local state = store:getState()
		expect(state.creatingExperiences[mockId].playabilityStatus).toBe(playabilityInfo.playabilityStatus)
	end)

	it("should catch network errors that happen and still run", function()
		local store = Rodux.Store.new(Reducer)
		local thunk = GetExperiencePlayability("")

		Thunk.test(thunk, store, {
			[Network] = MockNetwork.new(true),
		})
	end)
end
