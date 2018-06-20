return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)
	local RoactRodux = require(CorePackages.RoactRodux)
	local Store = require(CorePackages.Rodux).Store

	local DataProvider = require(script.Parent.Parent.DataProvider)
	local MainViewActionBindings = require(script.Parent.MainViewActionBindings)

	it("should create and destroy without errors", function()
		local store = Store.new(function()
			return {
				ActionBindingsData = {
					bindingsSearchTerm = ""
				}
			}
		end)

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			DataProvider = Roact.createElement(DataProvider, {},{
				MainViewActionBindings = Roact.createElement(MainViewActionBindings)
			})
		})

		local instance = Roact.reify(element)
		Roact.teardown(instance)
	end)
end