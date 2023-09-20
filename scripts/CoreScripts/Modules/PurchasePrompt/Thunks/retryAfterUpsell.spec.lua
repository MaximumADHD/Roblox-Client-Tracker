return function()
	local Root = script.Parent.Parent

	local CorePackages = game:GetService("CorePackages")
	local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
	local Rodux = PurchasePromptDeps.Rodux

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local PromptState = require(Root.Enums.PromptState)
	local RequestType = require(Root.Enums.RequestType)
	local Reducer = require(Root.Reducers.Reducer)
	local Analytics = require(Root.Services.Analytics)
	local Network = require(Root.Services.Network)
	local ExternalSettings = require(Root.Services.ExternalSettings)
	local MockAnalytics = require(Root.Test.MockAnalytics)
	local MockNetwork = require(Root.Test.MockNetwork)
	local MockExternalSettings = require(Root.Test.MockExternalSettings)
	local Thunk = require(Root.Thunk)

	local retryAfterUpsell = require(script.Parent.retryAfterUpsell)

	it("should run without errors", function()
		local store = Rodux.Store.new(Reducer, {
			promptState = PromptState.UpsellInProgress,
			productInfo = {
				price = 0,
				membershipTypeRequired = 0,
			},
			promptRequest = {
				id = 123,
				requestType = RequestType.Product,
				infoType = Enum.InfoType.Product
			},
		})

		local thunk = retryAfterUpsell()
		local network = MockNetwork.new()
		local analytics = MockAnalytics.new()
		local externalSettings = MockExternalSettings.new(true, false, {})

		Thunk.test(thunk, store, {
			[Analytics] = analytics.mockService,
			[Network] = network,
			[ExternalSettings] = externalSettings,
		})

		local state = store:getState()
		local accountInfo
		network.getAccountInfo():andThen(function(result)
			accountInfo = result
		end)
		local balanceInfo
		network.getBalanceInfo():andThen(function(result)
			balanceInfo = result
		end)

		-- Account info should be re-populated
		expect(state.accountInfo.balance).toBe(balanceInfo.robux)
		expect(state.accountInfo.membershipType).toBe(accountInfo.MembershipType)
	end)

	-- TODO[esauer]: fix test with refactoring on retryAfterUpsell
	-- it("should error if not enough robux", function()
	-- 	local thunk = retryAfterUpsell(0)
	-- 	local network = MockNetwork.new()
	-- 	local analytics = MockAnalytics.new()
	-- 	local externalSettings = MockExternalSettings.new(true, false, {})

	-- 	local accountInfo
	-- 	network.getAccountInfo():andThen(function(result)
	-- 		accountInfo = result
	-- 	end)
	-- 	local balanceInfo
	-- 	network.getBalanceInfo():andThen(function(result)
	-- 		balanceInfo = result
	-- 	end)

	-- 	local store = Rodux.Store.new(Reducer, {
	-- 		promptState = PromptState.UpsellInProgress,
	-- 		productInfo = {
	-- 			price = balanceInfo.robux + 1,
	-- 			membershipTypeRequired = 0,
	-- 		},
	-- 		promptRequest = {
	-- 			id = 123,
	-- 			requestType = RequestType.Product,
	-- 			infoType = Enum.InfoType.Product
	-- 		},
	-- 	})

	-- 	Thunk.test(thunk, store, {
	-- 		[Analytics] = analytics.mockService,
	-- 		[Network] = network,
	-- 		[ExternalSettings] = externalSettings,
	-- 	})

	-- 	local state = store:getState()
	-- 	expect(state.promptState).toBe(PromptState.Error)
	-- 	expect(analytics.spies.signalFailedPurchasePostUpsell).toHaveBeenCalledTimes(1)
	-- end)

	it("should not run if there is no request", function()
		local store = Rodux.Store.new(Reducer, {
			promptState = PromptState.UpsellInProgress,
			productInfo = {
				price = 0,
				membershipTypeRequired = 0,
			},
			promptRequest = {
				requestType = RequestType.None,
			},
		})

		local thunk = retryAfterUpsell()
		local network = MockNetwork.new()
		local analytics = MockAnalytics.new()
		local externalSettings = MockExternalSettings.new(true, false, {})

		Thunk.test(thunk, store, {
			[Analytics] = analytics.mockService,
			[Network] = network,
			[ExternalSettings] = externalSettings,
		})

		local state = store:getState()
		expect(state.promptState).toBe(PromptState.UpsellInProgress)
	end)

	it("should not run if there is no upsell", function()
		local store = Rodux.Store.new(Reducer, {
			promptState = PromptState.None,
			productInfo = {
				price = 0,
				membershipTypeRequired = 0,
			},
			promptRequest = {
				requestType = RequestType.None,
			},
		})

		local thunk = retryAfterUpsell()
		local network = MockNetwork.new()
		local analytics = MockAnalytics.new()
		local externalSettings = MockExternalSettings.new(true, false, {})

		Thunk.test(thunk, store, {
			[Analytics] = analytics.mockService,
			[Network] = network,
			[ExternalSettings] = externalSettings,
		})

		local state = store:getState()
		expect(state.promptState).toBe(PromptState.None)
	end)
end
