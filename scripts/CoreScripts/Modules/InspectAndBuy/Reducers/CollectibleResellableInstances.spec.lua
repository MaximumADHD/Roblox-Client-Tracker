return function()
	local InspectAndBuyFolder = script.Parent.Parent
	local SetCollectibleResellableInstances = require(InspectAndBuyFolder.Actions.SetCollectibleResellableInstances)
	local CollectibleResellableInstances = require(script.Parent.CollectibleResellableInstances)

	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local collectibleItemId = "123"
	local collectibleItemInstances = {}
	collectibleItemInstances["222"] = {
		collectibleInstanceId = "222",
		collectibleItemId = "123",
		collectibleProductId = "321",
		serialNumber = 2,
		instanceState = "Available",
		saleState = "OnSale",
		price = 11,
	}

	local function countKeys(t)
		local count = 0
		for _ in pairs(t) do
			count = count + 1
		end
		return count
	end

	describe("SetCollectibleResellableInstances", function()
		it("should set a list of ResellableInstances", function()
			local newState = CollectibleResellableInstances(
				{},
				SetCollectibleResellableInstances(collectibleItemId, collectibleItemInstances)
			)
			expect(newState[collectibleItemId]).never.toBeNil()
			expect(newState["TEST"]).never.toBe(true)
			expect(countKeys(newState)).toBe(1)
		end)
	end)
end
