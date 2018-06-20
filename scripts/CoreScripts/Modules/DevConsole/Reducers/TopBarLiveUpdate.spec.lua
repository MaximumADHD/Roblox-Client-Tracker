return function()
	local TopBarLiveUpdate = require(script.Parent.Parent.Reducers.TopBarLiveUpdate)

	it("has the expected fields, and only the expected fields", function()
		local state = TopBarLiveUpdate(nil, {})

		local expectedKeys = {
			LogWarningCount = 0,
			LogErrorCount = 0,
		}

		for key in pairs(expectedKeys) do
			assert(state[key] ~= nil, string.format("Expected field %q", key))
		end

		for key in pairs(state) do
			assert(expectedKeys[key] ~= nil, string.format("Did not expect field %q", key))
		end
	end)
end