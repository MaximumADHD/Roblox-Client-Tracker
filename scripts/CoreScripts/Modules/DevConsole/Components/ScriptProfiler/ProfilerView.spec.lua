return function()
	local ScriptContext = game:GetService("ScriptContext")
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)
	local RoactRodux = require(CorePackages.RoactRodux)
	local Store = require(CorePackages.Rodux).Store
	local DataProvider = require(script.Parent.Parent.DataProvider)

	local ProfilerView = require(script.Parent.ProfilerView)

	local TEST_DATA = ScriptContext:DeserializeScriptProfilerString(require(script.Parent.TestData))

	-- CLI-94090 remove when roblox-cli 602 is retired from testing
	if not TEST_DATA.Version then
		return
	end

	local sessionLength = 1

	-- CLI-93956 These nil checks are no longer needed once the minimum version of roblox-cli used in CI is 610
	if TEST_DATA.SessionStartTime and TEST_DATA.SessionEndTime then
		sessionLength = TEST_DATA.SessionEndTime - TEST_DATA.SessionStartTime
	end

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
					pluginOffsets = { Total = 0, },
					pluginGCOffsets = { Total = 0, },
					gcNodeOffsets = {},
					showGC = false,
				}),
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
