return function()
	local ScriptProfiler = game:GetService("ScriptProfilerService")
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)
	local RoactRodux = require(CorePackages.RoactRodux)
	local Store = require(CorePackages.Rodux).Store
	local DataProvider = require(script.Parent.Parent.DataProvider)

	local ProfilerView = require(script.Parent.ProfilerView)

	local TEST_DATA = ScriptProfiler:DeserializeJSON(require(script.Parent.TestData))

	local sessionLength = TEST_DATA.SessionEndTime - TEST_DATA.SessionStartTime

	it("should create and destroy without errors", function()
		local store = Store.new(function()
			return {
				MainView = {
					currTabIndex = 0,
				},
			}
		end)

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			DataProvider = Roact.createElement(DataProvider, {}, {
				ProfilerView = Roact.createElement(ProfilerView, {
					size = UDim2.new(),
					layoutOrder = 0,
					data = TEST_DATA,
					showAsPercentages = false,
					average = 1,
					sessionLength = sessionLength,
					searchFilter = {},
					rootNode = 0,
					rootNodeName = nil,
					showPlugins = true,
					pluginOffsets = { Total = 0 },
					pluginGCOffsets = { Total = 0 },
					gcNodeOffsets = {},
					showGC = false,
					expandedNodes = {},
				}),
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
