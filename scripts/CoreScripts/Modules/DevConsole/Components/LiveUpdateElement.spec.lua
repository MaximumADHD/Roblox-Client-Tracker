return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)
	local RoactRodux = require(CorePackages.RoactRodux)
	local Store = require(CorePackages.Rodux).Store

	local DataProvider = require(script.Parent.DataProvider)
	local LiveUpdateElement = require(script.Parent.LiveUpdateElement)


	it("should create and destroy without errors", function()
		local store = Store.new(function()
			return {
				MainView = {
					isDeveloperView = true,
				},
			}
		end)

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			DataProvider = Roact.createElement(DataProvider, nil, {
				LiveUpdateElement = Roact.createElement(LiveUpdateElement, {
					size = UDim2.new(),
					position = UDim2.new(),
				})
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end