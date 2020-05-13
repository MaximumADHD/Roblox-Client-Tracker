return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)
	local RoactRodux = require(CorePackages.RoactRodux)
	local Store = require(CorePackages.Rodux).Store

	local DataProvider = require(script.Parent.Parent.DataProvider)

	local MainViewServerStats = require(script.Parent.MainViewServerStats)

	it("should create and destroy without errors", function()
		local store = Store.new(function()
			return {
				MainView = {
					currTabIndex = 0,
					isDeveloperView = true,
				},
				ServerStatsData = {
					statsSearchTerm = ""
				}
			}
		end)

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			DataProvider = Roact.createElement(DataProvider, {}, {
				MainViewServerStats = Roact.createElement(MainViewServerStats, {
					size = UDim2.new(),
					tabList = {},
				})
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end