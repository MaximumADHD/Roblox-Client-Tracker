local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local it = JestGlobals.it

local LogData = require(script.Parent.Parent.Reducers.LogData)

it("has the expected fields, and only the expected fields", function()
	local state = LogData(nil, {})

	local expectedKeys = {
		clientSearchTerm = "",
		clientTypeFilters = {},

		serverSearchTerm = "",
		serverTypeFilters = {},
	}

	for key in pairs(expectedKeys) do
		assert(state[key] ~= nil, string.format("Expected field %q", key))
	end

	for key in pairs(state) do
		assert(expectedKeys[key] ~= nil, string.format("Did not expect field %q", key))
	end
end)
