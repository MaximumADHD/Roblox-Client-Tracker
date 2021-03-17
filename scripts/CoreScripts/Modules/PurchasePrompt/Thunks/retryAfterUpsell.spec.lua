return function()
	local Root = script.Parent.Parent

	local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
	local Rodux = PurchasePromptDeps.Rodux

	local PromptState = require(Root.Enums.PromptState)
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
			productInfo = {
				price = 0,
				membershipTypeRequired = 0,
			}
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

		-- Account info should be re-populated
		expect(state.accountInfo.balance).to.be.equal(accountInfo.RobuxBalance)
		expect(state.accountInfo.membershipType).to.be.equal(accountInfo.MembershipType)
	end)

	it("should error if not enough robux", function()
		local thunk = retryAfterUpsell(0)
		local network = MockNetwork.new()
		local analytics = MockAnalytics.new()
		local externalSettings = MockExternalSettings.new(true, false, {})

		local accountInfo
		network.getAccountInfo():andThen(function(result)
			accountInfo = result
		end)

		local store = Rodux.Store.new(Reducer, {
			productInfo = {
				price = accountInfo.RobuxBalance + 1,
				membershipTypeRequired = 0,
			}
		})

		Thunk.test(thunk, store, {
			[Analytics] = analytics.mockService,
			[Network] = network,
			[ExternalSettings] = externalSettings,
		})

		local state = store:getState()
		expect(state.promptState).to.equal(PromptState.Error)
		expect(analytics.spies.signalFailedPurchasePostUpsell.callCount).to.equal(1)
	end)
end
