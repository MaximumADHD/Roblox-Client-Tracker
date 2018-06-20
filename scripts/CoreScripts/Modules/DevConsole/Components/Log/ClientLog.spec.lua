return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)
	local RoactRodux = require(CorePackages.RoactRodux)
	local Store = require(CorePackages.Rodux).Store

	local ClientLog = require(script.Parent.ClientLog)

	it("should create and destroy without errors", function()
		local store = Store.new(function()
			return {
				LogData = {
					clientDataFiltered = {},
					clientData = {},
				}
			}
		end)

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			ClientLog = Roact.createElement(ClientLog)
		})

		local instance = Roact.reify(element)
		Roact.teardown(instance)
	end)
end