return function()
	local CorePackages = game:GetService("CorePackages")
	local Rodux = require(CorePackages.Rodux)

	local Reducer = require(script.Parent.Parent.Reducers.Reducer)

	local MockNetwork = require(script.Parent.Parent.Test.MockNetwork)
	local MockExternalSettings = require(script.Parent.Parent.Test.MockExternalSettings)

	local Network = require(script.Parent.Parent.Services.Network)
	local ExternalSettings = require(script.Parent.Parent.Services.ExternalSettings)

	local Thunk = require(script.Parent.Parent.Thunk)

	local retryAfterUpsell = require(script.Parent.retryAfterUpsell)

	it("should run without errors", function()
		local store = Rodux.Store.new(Reducer, {
			productInfo = {
				price = 0,
				bcLevelRequired = 0,
			}
		})

		local thunk = retryAfterUpsell()
		local network = MockNetwork.new()
		local externalSettings = MockExternalSettings.new(true, false, false, false)

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
		expect(state.accountInfo.bcLevel).to.be.equal(accountInfo.MembershipType)
	end)
end