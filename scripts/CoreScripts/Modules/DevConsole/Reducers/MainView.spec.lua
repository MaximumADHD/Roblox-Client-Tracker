return function()
	local MainView = require(script.Parent.Parent.Reducers.MainView)

	it("has the expected fields, and only the expected fields", function()
		local state = MainView(nil, {})

		local expectedKeys = {
			isDeveloperView = false,
			isClientView = true,
			tabList = {},
			currTab = nil,
		}

		for key in pairs(expectedKeys) do
			assert(state[key] ~= nil, string.format("Expected field %q", key))
		end

		for key in pairs(state) do
			assert(expectedKeys[key] ~= nil, string.format("Did not expect field %q", key))
		end
	end)
end