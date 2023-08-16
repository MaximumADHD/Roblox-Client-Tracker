return function()
	local CorePackages = game:GetService("CorePackages")

	local Roact = require(CorePackages.Roact)
	local RoactRodux = require(CorePackages.RoactRodux)
	local Rodux = require(CorePackages.Rodux)
	local UIBlox = require(CorePackages.UIBlox)

	local TnsModule = script.Parent.Parent
	local Dependencies = require(TnsModule.Dependencies)
	local Reducers = require(TnsModule.Reducers)
	local ShowToast = require(TnsModule.Actions.ShowToast)

	local Toast = require(script.Parent.Toast)

	describe("mount & unmount", function()
		it("show 2 toasts", function()
			local store = Rodux.Store.new(Reducers)
			store:dispatch(ShowToast("test toast"))

			local element = Roact.createElement(RoactRodux.StoreProvider, {
				store = store,
			}, {
				StyleProvider = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
					Toast = Roact.createElement(Toast),
				}),
			})
			
			local instance = Roact.mount(element)

			store:dispatch(ShowToast("new test toast"))

			Roact.unmount(instance)
		end)
	end)
end
