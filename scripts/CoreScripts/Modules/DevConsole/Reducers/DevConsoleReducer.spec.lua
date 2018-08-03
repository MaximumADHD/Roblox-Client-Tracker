return function()
	local Reducers = script.Parent.Parent.Reducers

	local DevConsoleReducer = require(Reducers.DevConsoleReducer)
	local DevConsoleDisplayOptions = require(Reducers.DevConsoleDisplayOptions)
	local MainView = require(Reducers.MainView)

	local MemoryData = require(Reducers.MemoryData)
	local NetworkData = require(Reducers.NetworkData)
	local ScriptsData = require(Reducers.ScriptsData)
	local DataStoresData = require(Reducers.DataStoresData)
	local ServerStatsData = require(Reducers.ServerStatsData)
	local ServerJobsData = require(Reducers.ServerJobsData)
	local ActionBindingsData = require(Reducers.ActionBindingsData)

	it("has the expected fields, and only the expected fields", function()
		local state = DevConsoleReducer(nil, {})

		local expectedKeys = {
			DisplayOptions = DevConsoleDisplayOptions(nil, {}),
			MainView = MainView(nil, {}),

			MemoryData = MemoryData(nil, {}),
			NetworkData = NetworkData(nil, {}),
			ScriptsData = ScriptsData(nil, {}),
			DataStoresData = DataStoresData(nil, {}),
			ServerStatsData = ServerStatsData(nil, {}),
			ServerJobsData = ServerJobsData(nil, {}),
			ActionBindingsData = ActionBindingsData(nil, {})
		}

		for key in pairs(expectedKeys) do
			assert(state[key] ~= nil, string.format("Expected field %q", key))
		end

		for key in pairs(state) do
			assert(expectedKeys[key] ~= nil, string.format("Did not expect field %q", key))
		end
	end)
end
