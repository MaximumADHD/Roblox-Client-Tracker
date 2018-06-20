return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)
	local RoactRodux = require(CorePackages.RoactRodux)
	local Store = require(CorePackages.Rodux).Store

	local MainViewLog = require(script.Parent.MainViewLog)

	it("should create and destroy without errors", function()
		local store = Store.new(function()
			return {
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
			MainViewLog = Roact.createElement(MainViewLog)
		})

		local instance = Roact.reify(element)
		Roact.teardown(instance)
	end)
end