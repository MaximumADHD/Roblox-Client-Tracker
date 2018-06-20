return function()
	local Constants = require(script.Parent.Parent.Constants)
	local Config = require(script.Parent.Parent.Config)
	local DevConsoleDisplayOptions = require(script.Parent.Parent.Reducers.DevConsoleDisplayOptions)

	it("has the expected fields, and only the expected fields", function()
		local state = DevConsoleDisplayOptions(nil, {})

		local expectedKeys = {
			platform = Constants.Platform.Desktop,
			isVisible = false,
			isMinimized = false,
			position = Config.MainWindowElement.Position,
			size = Config.MainWindowElement.Size
		}

		for key in pairs(expectedKeys) do
			assert(state[key] ~= nil, string.format("Expected field %q", key))
		end

		for key in pairs(state) do
			assert(expectedKeys[key] ~= nil, string.format("Did not expect field %q", key))
		end
	end)
end
