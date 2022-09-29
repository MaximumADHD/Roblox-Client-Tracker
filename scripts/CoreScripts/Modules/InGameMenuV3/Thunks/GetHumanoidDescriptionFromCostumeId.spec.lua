--!nonstrict
return function()
	local CorePackages = game:GetService("CorePackages")
	local Rodux = require(CorePackages.Rodux)
	local InGameMenu = script.Parent.Parent
	local Reducer = require(InGameMenu.reducer)
	local MockInspectAndBuyNetwork = require(InGameMenu.Mocks.MockInspectAndBuyNetwork)
	local Network = require(InGameMenu.Network.Requests.InspectAndBuy.Network)
	local InspectAndBuyThunk = require(InGameMenu.InspectAndBuyThunk)
	local MockId = require(InGameMenu.Mocks.MockAssetId)
	local GetHumanoidDescriptionFromCostumeId = require(InGameMenu.Thunks.GetHumanoidDescriptionFromCostumeId)

	local FFlagInspectAndBuyV2IXPEnabledForAll = require(InGameMenu.Flags.FFlagInspectAndBuyV2IXPEnabledForAll)

	if FFlagInspectAndBuyV2IXPEnabledForAll then
		it("should get a humanoid description from a costumeId", function()
			local store = Rodux.Store.new(Reducer)
			local mockId = MockId()
			local gotCorrectHumanoidDescription = false
			local callback = function(humanoidDescription)
				local mockDesc = MockInspectAndBuyNetwork.GetMockHumanoidDescription()
				if humanoidDescription.HatAccessory == mockDesc.HatAccessory and
					humanoidDescription.LeftArm == mockDesc.LeftArm then
					gotCorrectHumanoidDescription = true
				end
			end
			local thunk = GetHumanoidDescriptionFromCostumeId(mockId, callback)

			InspectAndBuyThunk.test(thunk, store, {
				[Network] = MockInspectAndBuyNetwork.new(),
			})

			expect(gotCorrectHumanoidDescription).to.equal(true)
		end)

		it("should catch network errors that happen and still run", function()
			local store = Rodux.Store.new(Reducer)
			local mockId = MockId()
			local thunk = GetHumanoidDescriptionFromCostumeId(mockId, function() end)

			InspectAndBuyThunk.test(thunk, store, {
				[Network] = MockInspectAndBuyNetwork.new(true),
			})
		end)
	end
end
