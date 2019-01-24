return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)
	local RoactRodux = require(CorePackages.RoactRodux)
	local Store = require(CorePackages.Rodux).Store

	local ServerProfilerInterface = require(script.Parent.ServerProfilerInterface)


	it("should create and destroy without errors", function()
		local store = Store.new(function()
			return {
				MicroProfiler = {
					lastFileOutputLocation = ""
				},
			}
		end)

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			ServerProfilerInterface = Roact.createElement(ServerProfilerInterface, {
			})

		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end