return function()
	local Modules = game:GetService("CoreGui").RobloxGui.Modules
	local AppReducer = require(Modules.LuaApp.AppReducer)

	it("has the expected fields, and only the expected fields", function()
		local state = AppReducer(nil, {})

		local expectedKeys = {
			PagePaused = true,
			GameSorts = true,
			HomeGameSorts = true,
			Games = true,
		}

		for key in pairs(expectedKeys) do
			assert(state[key] ~= nil, string.format("Expected field %q", key))
		end

		for key in pairs(state) do
			assert(expectedKeys[key] ~= nil, string.format("Did not expect field %q", key))
		end
	end)
end