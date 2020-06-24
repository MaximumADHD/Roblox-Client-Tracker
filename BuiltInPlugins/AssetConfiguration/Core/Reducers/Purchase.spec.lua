return function()
	local Plugin = script.Parent.Parent.Parent

	local Purchase = require(Plugin.Core.Reducers.Purchase)
	local PurchaseStatus = require(Plugin.Core.Types.PurchaseStatus)

	local SetPurchaseStatus = require(Plugin.Core.Actions.SetPurchaseStatus)
	local SetRobuxBalance = require(Plugin.Core.Actions.SetRobuxBalance)
	local SetOwnsAsset = require(Plugin.Core.Actions.SetOwnsAsset)
	local ClearPurchaseFlow = require(Plugin.Core.Actions.ClearPurchaseFlow)

	it("should return a table with the correct members", function()
		local state = Purchase(nil, {})

		expect(type(state)).to.equal("table")
		expect(state.robuxBalance).to.be.ok()
		expect(state.status).to.be.ok()
	end)

	describe("SetRobuxBalance action", function()
		it("should update the robux balance", function()
			local state = Purchase(nil, {})
			state = Purchase(state, SetRobuxBalance(10))

			expect(state.robuxBalance).to.equal(10)
		end)
	end)

	describe("ClearPurchaseFlow action", function()
		it("should clear the purchase flow", function()
			local state = Purchase(nil, {})
			state = Purchase(state, ClearPurchaseFlow(0))

			expect(state.assetId).to.equal(0)
			expect(state.status).to.equal(PurchaseStatus.None)
		end)
	end)

	describe("SetOwnsAsset action", function()
		it("should update the cached owned assets", function()
			local state = Purchase(nil, {})
			state = Purchase(state, SetOwnsAsset(true, 0))

			expect(state.cachedOwnedAssets["0"]).to.equal(true)
		end)
	end)

	describe("SetPurchaseStatus action", function()
		it("should update the status", function()
			local state = Purchase(nil, {})
			state = Purchase(state, SetPurchaseStatus(PurchaseStatus.Waiting))

			expect(state.status).to.equal(PurchaseStatus.Waiting)
		end)
	end)
end
