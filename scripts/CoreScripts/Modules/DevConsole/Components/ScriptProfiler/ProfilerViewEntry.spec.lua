return function()
	local ScriptContext = game:GetService("ScriptContext")
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)
	local RoactRodux = require(CorePackages.RoactRodux)
	local Store = require(CorePackages.Rodux).Store
	local DataProvider = require(script.Parent.Parent.DataProvider)

	local ProfilerViewEntry = require(script.Parent.ProfilerViewEntry)

	local TEST_DATA = ScriptContext:DeserializeScriptProfilerString(require(script.Parent.TestData))

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
				ProfilerViewEntry = Roact.createElement(ProfilerViewEntry, {
					layoutOrder = 0,
					depth = 0,
					data = TEST_DATA,
					nodeId = 0,
					functionId = 0,
					percentageRatio = nil,
					average = 1,
					searchFilter = {},
					showPlugins = true,
					pluginOffsets = { Total = 0 },
					pluginGCOffsets = { Total = 0 },
					gcNodeOffsets = { Total = 0 },
					showGC = false,
					expandedNodes = {},
				}),
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
