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
	local GetExperienceInfo = require(script.Parent.GetExperienceInfo)

	it("should get experience info", function()
		local store = Rodux.Store.new(Reducer)
		local mockId = MockId()
		local thunk = GetExperienceInfo(mockId)

		Thunk.test(thunk, store, {
			[Network] = MockNetwork.new(),
		})

		local experienceFetchedInfo = MockNetwork.GetExperienceInfo()
		local experienceInfo = experienceFetchedInfo.data[1]

		local state = store:getState()
		expect(state.creatingExperiences[mockId].name).toBe(experienceInfo.name)
	end)

	it("should catch network errors that happen and still run", function()
		local store = Rodux.Store.new(Reducer)
		local thunk = GetExperienceInfo("")

		Thunk.test(thunk, store, {
			[Network] = MockNetwork.new(true),
		})
	end)
end
