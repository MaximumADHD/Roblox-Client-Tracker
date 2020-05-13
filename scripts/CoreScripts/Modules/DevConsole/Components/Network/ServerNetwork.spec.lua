return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)
	local RoactRodux = require(CorePackages.RoactRodux)
	local Store = require(CorePackages.Rodux).Store

	local DataProvider = require(script.Parent.Parent.DataProvider)
	local ServerNetwork = require(script.Parent.ServerNetwork)

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
			DataProvider = Roact.createElement(DataProvider, {}, {
				ServerNetwork = Roact.createElement(ServerNetwork,{
					size = UDim2.new(),
				})
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end