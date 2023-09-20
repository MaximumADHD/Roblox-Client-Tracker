return function()
	local Root = script.Parent.Parent

	local CorePackages = game:GetService("CorePackages")
	local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
	local Rodux = PurchasePromptDeps.Rodux

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local RequestType = require(Root.Enums.RequestType)
	local PromptState = require(Root.Enums.PromptState)
	local PurchaseError = require(Root.Enums.PurchaseError)
	local Reducer = require(Root.Reducers.Reducer)
	local ABTest = require(Root.Services.ABTest)
	local Network = require(Root.Services.Network)
	local ExternalSettings = require(Root.Services.ExternalSettings)
	local MockABTest = require(Root.Test.MockABTest)
	local MockNetwork = require(Root.Test.MockNetwork)
	local MockExternalSettings = require(Root.Test.MockExternalSettings)
	local Thunk = require(Root.Thunk)

	local initiatePurchase = require(script.Parent.initiatePurchase)

	it("should run without errors", function()
		local store = Rodux.Store.new(Reducer)

		local thunk = initiatePurchase(15, Enum.InfoType.Product, false)

		Thunk.test(thunk, store, {
			[ABTest] = MockABTest.new(),
			[Network] = MockNetwork.new(),
			[ExternalSettings] = MockExternalSettings.new(false, false, {}),
		})

		local state = store:getState()

		expect(state.promptRequest.id).toBe(15)
	end)

	it("should abort when a purchase is already in progress", function()
		local store = Rodux.Store.new(Reducer, {
			promptState = PromptState.PromptPurchase,
			promptRequest = {
				id = 12,
				requestType = RequestType.Product,
				infoType = Enum.InfoType.Product,
			}
		})

		-- Initiate a purchase for a different product id
		local thunk = initiatePurchase(999, Enum.InfoType.Product, false)

		Thunk.test(thunk, store, {
			[ABTest] = MockABTest.new(),
			[Network] = MockNetwork.new(),
			[ExternalSettings] = MockExternalSettings.new(false, false, {}),
		})

		local state = store:getState()
		expect(state).toMatchObject({
			promptRequest = {
				id = 12,
			},
			promptState = PromptState.PromptPurchase,
		})
	end)

	it("should resolve to an error state if a network failure occurs", function()
		local store = Rodux.Store.new(Reducer)

		local thunk = initiatePurchase(15, Enum.InfoType.Product, false)

		Thunk.test(thunk, store, {
			[ABTest] = MockABTest.new(),
			[Network] = MockNetwork.new(nil, "Network Failure"),
			[ExternalSettings] = MockExternalSettings.new(false, false, {}),
		})

		local state = store:getState()
		expect(state.promptState).toBe(PromptState.Error)
	end)

	it("should resolve to an error state if purchasing is disabled", function()
		local store = Rodux.Store.new(Reducer)

		local thunk = initiatePurchase(15, Enum.InfoType.Product, false)

		Thunk.test(thunk, store, {
			[ABTest] = MockABTest.new(),
			[Network] = MockNetwork.new(nil, "Network Failure"),
			[ExternalSettings] = MockExternalSettings.new(false, false, {
				Order66 = true,
			}),
		})

		local state = store:getState()
		expect(state).toMatchObject({
			promptState = PromptState.Error,
			purchaseError = PurchaseError.PurchaseDisabled,
		})
	end)
end
