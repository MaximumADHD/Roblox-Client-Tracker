local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local it = JestGlobals.it

local ServerStatsData = require(script.Parent.Parent.Reducers.ServerStatsData)

it("has the expected fields, and only the expected fields", function()
	local state = ServerStatsData(nil, {})

	local expectedKeys = {
		statsSearchTerm = "",
	}

	for key in pairs(expectedKeys) do
		assert(state[key] ~= nil, string.format("Expected field %q", key))
	end

	for key in pairs(state) do
		assert(expectedKeys[key] ~= nil, string.format("Did not expect field %q", key))
	end
end)
