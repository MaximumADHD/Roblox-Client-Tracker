return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)
	local RoactRodux = require(CorePackages.RoactRodux)
	local Store = require(CorePackages.Rodux).Store

	local DataProvider = require(script.Parent.Parent.DataProvider)

	local MainViewNetwork = require(script.Parent.MainViewNetwork)

	it("should create and destroy without errors", function()
		local store = Store.new(function()
			return {
				NetworkData = {
					clientSearchTerm = "",
					serverSearchTerm = ""
				}
			}
		end)

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			DataProvider = Roact.createElement(DataProvider, {},{
				MainViewNetwork = Roact.createElement(MainViewNetwork)
			})
		})

		local instance = Roact.reify(element)
		Roact.teardown(instance)
	end)
end