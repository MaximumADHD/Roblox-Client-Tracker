return function()
	local Reducer = require(script.Parent.InspectAndBuyReducer)

	it("has the expected fields, and only the expected fields", function()
		local state = Reducer(nil, {})

		local expectedKeys = {
			view = true,
			playerId = true,
			playerName = true,
			assets = true,
			bundles = true,
			equippedAssets = true,
			detailsInformation = true,
			tryingOnInfo = true,
			favorites = true,
			locale = true,
			visible = true,
			itemBeingPurchased = true,
			gamepadEnabled = true,
			isLoaded = true,
			FetchingStatus = true,
			storeId = true,
		}

		for key in pairs(expectedKeys) do
			assert(state[key] ~= nil, string.format("Expected field %q", key))
		end

		for key in pairs(state) do
			assert(expectedKeys[key] ~= nil, string.format("Did not expect field %q", key))
		end
	end)
end
