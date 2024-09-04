return function()
	local ScriptProfiler = game:GetService("ScriptProfilerService")
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)
	local RoactRodux = require(CorePackages.RoactRodux)
	local Store = require(CorePackages.Rodux).Store
	local DataProvider = require(script.Parent.Parent.DataProvider)

	local ProfilerFunctionViewEntry = require(script.Parent.ProfilerFunctionViewEntry)

	local TEST_DATA = ScriptProfiler:DeserializeJSON(require(script.Parent.TestData))

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
				ProfilerFunctionViewEntry = Roact.createElement(ProfilerFunctionViewEntry, {
					layoutOrder = 0,
					data = TEST_DATA,
					functionId = 1,
					nodeName = "TestFunc",
					average = 1,
					percentageRatio = nil,
					gcOffset = 0,
					showGC = false,
				}),
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
