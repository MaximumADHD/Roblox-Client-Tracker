return function()
	local CorePackages = game:GetService("CorePackages")
	local Rodux = require(CorePackages.Rodux)
	local InGameMenu = script.Parent.Parent
	local Reducer = require(InGameMenu.reducer)
	local MockInspectAndBuyNetwork = require(InGameMenu.Mocks.MockInspectAndBuyNetwork)
	local Network = require(InGameMenu.Network.Requests.InspectAndBuy.Network)
	local InspectAndBuyThunk = require(InGameMenu.InspectAndBuyThunk)
	local GetAssetsFromHumanoidDescription = require(script.Parent.GetAssetsFromHumanoidDescription)

	local FFlagInspectAndBuyV2IXPEnabledForAll = require(InGameMenu.Flags.FFlagInspectAndBuyV2IXPEnabledForAll)

	local function countKeys(t)
		local count = 0
		for _ in pairs(t) do
			count = count + 1
		end
		return count
	end

	if FFlagInspectAndBuyV2IXPEnabledForAll then
		it("should run without errors", function()
			local store = Rodux.Store.new(Reducer)
			local thunk = GetAssetsFromHumanoidDescription(Instance.new("HumanoidDescription"))

			InspectAndBuyThunk.test(thunk, store, {
				[Network] = MockInspectAndBuyNetwork.new(),
			})

			local state = store:getState()

			expect(countKeys(state.inspectAndBuy.Assets)).to.equal(0)
		end)

		--[[
			Using the mock humanoid description object in MockNetwork.lua, there are 4 valid ids.
			Body color and scale fields should be ignored.
		]]
		it("should add a characters currently wearing assets from a humanoid description object", function()
			local store = Rodux.Store.new(Reducer)
			local mockHumanoidDescription = MockInspectAndBuyNetwork.GetMockHumanoidDescription()
			local thunk = GetAssetsFromHumanoidDescription(mockHumanoidDescription)

			InspectAndBuyThunk.test(thunk, store, {
				[Network] = MockInspectAndBuyNetwork.new(),
			})

			local state = store:getState()

			expect(countKeys(state.inspectAndBuy.Assets)).to.equal(4)
		end)

		it("should correctly add emotes from a humanoid description", function()
			local store = Rodux.Store.new(Reducer)
			local mockHumanoidDescription = MockInspectAndBuyNetwork.GetMockHumanoidDescriptionEmotes()
			local thunk = GetAssetsFromHumanoidDescription(mockHumanoidDescription)

			InspectAndBuyThunk.test(thunk, store, {
				[Network] = MockInspectAndBuyNetwork.new(),
			})

			local state = store:getState()

			expect(countKeys(state.inspectAndBuy.Assets)).to.equal(3)
		end)

		it("should catch network errors that happen and still run", function()
			local store = Rodux.Store.new(Reducer)
			local thunk = GetAssetsFromHumanoidDescription(Instance.new("HumanoidDescription"))

			InspectAndBuyThunk.test(thunk, store, {
				[Network] = MockInspectAndBuyNetwork.new(true),
			})
		end)
	end
end