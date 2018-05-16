return function()
	local Search = require(script.Parent.Search)

	it("has the expected fields, and only the expected fields", function()
		local state = Search(nil, {})

		local expectedKeys = {
			SearchesInGames = true,
			-- SearchesInGroups = true,
			-- SearchesInPlayers = true,
			-- SearchesInCatalog = true,
			-- SearchesInLibrary = true,
		}

		for key in pairs(expectedKeys) do
			assert(state[key] ~= nil, string.format("Expected field %q", key))
		end

		for key in pairs(state) do
			assert(expectedKeys[key] ~= nil, string.format("Did not expect field %q", key))
		end
	end)
end