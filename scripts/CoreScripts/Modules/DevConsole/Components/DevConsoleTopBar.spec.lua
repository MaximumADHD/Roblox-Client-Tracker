return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)
	local RoactRodux = require(CorePackages.RoactRodux)
	local Store = require(CorePackages.Rodux).Store

	local DataProvider = require(script.Parent.DataProvider)
	local DevConsoleTopBar = require(script.Parent.DevConsoleTopBar)

	it("should create and destroy without errors", function()
		local store = Store.new(function()
			return {
				MainView = {
					currTabIndex = 0,
					isDeveloperView = true,
				},

				TopBarLiveUpdate = {
					LogWarningCount = 0,
					LogErrorCount = 0
				}
			}
		end)

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			DataProvider = Roact.createElement(DataProvider, nil, {
				DevConsoleTopBar = Roact.createElement(DevConsoleTopBar)
			})

		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end