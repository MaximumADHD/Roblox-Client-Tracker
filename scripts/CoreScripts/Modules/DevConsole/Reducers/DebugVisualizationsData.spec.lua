return function()
	local DebugVisualizationsData = require(script.Parent.Parent.Reducers.DebugVisualizationsData)

	it("has the expected fields, and only the expected fields", function()
		local state = DebugVisualizationsData(nil, {})

		local expectedKeys = {
			debugVisualizationsSearchTerm = "",
			debugVisualizationsTypeFilters = {},
		}

		for key in pairs(expectedKeys) do
			assert(state[key] ~= nil, string.format("Expected field %q", key))
		end

		for key in pairs(state) do
			assert(expectedKeys[key] ~= nil, string.format("Did not expect field %q", key))
		end
	end)
end
