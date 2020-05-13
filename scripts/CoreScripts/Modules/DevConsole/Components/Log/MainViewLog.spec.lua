return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)
	local RoactRodux = require(CorePackages.RoactRodux)
	local Store = require(CorePackages.Rodux).Store

	local DataProvider = require(script.Parent.Parent.DataProvider)

	local MainViewLog = require(script.Parent.MainViewLog)

	it("should create and destroy without errors", function()
		local store = Store.new(function()
			return {
				MainView = {
					currTabIndex = 0,
					isDeveloperView = true,
				},
				LogData = {
					clientSearchTerm = "",
					clientTypeFilters = {},
					serverSearchTerm = "",
					serverTypeFilters = {},
				}
			}
		end)

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			DataProvider = Roact.createElement(DataProvider, {}, {
				MainViewLog = Roact.createElement(MainViewLog, {
					size = UDim2.new(),
					tabList = {},
				})
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end