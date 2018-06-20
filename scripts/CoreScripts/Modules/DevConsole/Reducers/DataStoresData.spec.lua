return function()
	local DataStoresData = require(script.Parent.Parent.Reducers.DataStoresData)

	it("has the expected fields, and only the expected fields", function()
		local state = DataStoresData(nil, {})

		local expectedKeys = {
			storesSearchTerm = "",
		}

		for key in pairs(expectedKeys) do
			assert(state[key] ~= nil, string.format("Expected field %q", key))
		end

		for key in pairs(state) do
			assert(expectedKeys[key] ~= nil, string.format("Did not expect field %q", key))
		end
	end)
end