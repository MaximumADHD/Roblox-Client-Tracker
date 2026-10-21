local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local it = JestGlobals.it

local MemoryData = require(script.Parent.Parent.Reducers.MemoryData)

it("has the expected fields, and only the expected fields", function()
	local state = MemoryData(nil, {})

	local expectedKeys = {
		clientSearchTerm = "",
		serverSearchTerm = "",
	}

	for key in pairs(expectedKeys) do
		assert(state[key] ~= nil, string.format("Expected field %q", key))
	end

	for key in pairs(state) do
		assert(expectedKeys[key] ~= nil, string.format("Did not expect field %q", key))
	end
end)
