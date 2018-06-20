return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)
	local RoactRodux = require(CorePackages.RoactRodux)
	local Store = require(CorePackages.Rodux).Store

	local ServerLog = require(script.Parent.ServerLog)

	it("should create and destroy without errors", function()
		local store = Store.new(function()
			return {
				LogData = {
					serverDataFiltered = {},
					serverData = {},
				}
			}
		end)

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			ServerLog = Roact.createElement(ServerLog)
		})

		local instance = Roact.reify(element)
		Roact.teardown(instance)
	end)
end