return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)
	local RoactRodux = require(CorePackages.RoactRodux)
	local Store = require(CorePackages.Rodux).Store

	local MainViewMicroProfiler = require(script.Parent.MainViewMicroProfiler)


	it("should create and destroy without errors", function()
		local store = Store.new(function()
			return {
				MainView = {
					currTabIndex = 0
				},
				MicroProfiler = {
					lastFileOutputLocation = ""
				},
			}
		end)

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			MainViewMicroProfiler = Roact.createElement(MainViewMicroProfiler, {
				size = UDim2.new(),
				tabList = {},
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end