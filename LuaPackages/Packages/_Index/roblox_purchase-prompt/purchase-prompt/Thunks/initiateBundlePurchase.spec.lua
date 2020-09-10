return function()
	local Root = script.Parent.Parent

	local LuaPackages = Root.Parent
	local Rodux = require(LuaPackages.Rodux)

	local PromptState = require(Root.Enums.PromptState)
	local RequestType = require(Root.Enums.RequestType)
	local Reducer = require(Root.Reducers.Reducer)
	local Network = require(Root.Services.Network)
	local ExternalSettings = require(Root.Services.ExternalSettings)
	local MockNetwork = require(Root.Test.MockNetwork)
	local MockExternalSettings = require(Root.Test.MockExternalSettings)
	local Thunk = require(Root.Thunk)

	local initiateBundlePurchase = require(script.Parent.initiateBundlePurchase)

	it("should run without errors", function()
		local store = Rodux.Store.new(Reducer)

		local thunk = initiateBundlePurchase(15)

		Thunk.test(thunk, store, {
			[Network] = MockNetwork.new(),
			[ExternalSettings] = MockExternalSettings.new(false, false, {})
		})

		local state = store:getState()

		expect(state.promptRequest.id).to.equal(15)
		expect(state.promptRequest.requestType).to.equal(RequestType.Bundle)
	end)

	it("should abort when a purchase is already in progress", function()
		local store = Rodux.Store.new(Reducer, {
			promptState = PromptState.PromptPurchase,
			promptRequest = {
				id = 12,
				infoType = Enum.InfoType.Product,
				requestType = RequestType.Product
			}
		})

		-- Initiate a purchase for a different product id
		local thunk = initiateBundlePurchase(999)

		Thunk.test(thunk, store, {
			[Network] = MockNetwork.new(),
			[ExternalSettings] = MockExternalSettings.new(false, false, {})
		})

		local state = store:getState()
		expect(state.promptRequest.id).to.equal(12)
		expect(state.promptState).to.equal(PromptState.PromptPurchase)
	end)

	it("should resolve to an error state if a network failure occurs", function()
		local store = Rodux.Store.new(Reducer)

		local thunk = initiateBundlePurchase(15)

		Thunk.test(thunk, store, {
			[Network] = MockNetwork.new(true),
			[ExternalSettings] = MockExternalSettings.new(false, false, {})
		})

		local state = store:getState()
		expect(state.promptState).to.equal(PromptState.Error)
	end)
end