return function()
	local Root = script.Parent.Parent

	local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
	local Rodux = PurchasePromptDeps.Rodux

	local Reducer = require(Root.Reducers.Reducer)
	local Network = require(Root.Services.Network)
	local ExternalSettings = require(Root.Services.ExternalSettings)
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
		local externalSettings = MockExternalSettings.new(true, false, {})

		Thunk.test(thunk, store, {
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
end
