--!nonstrict
return function()
	local CorePackages = game:GetService("CorePackages")

	local Roact = require(CorePackages.Roact)
	local Rodux = require(CorePackages.Rodux)
	local RoactRodux = require(CorePackages.RoactRodux)
	local UIBlox = require(CorePackages.UIBlox)

	local TnsModule = script.Parent.Parent
	local Dependencies = require(TnsModule.Dependencies)
	local Localization = Dependencies.Localization
	local LocalizationProvider = require(Dependencies.LocalizationProvider)

	local Reducers = require(script.Parent.Parent.Reducers)

	describe("TrustAndSafetyApp", function()
		it("should create and destroy without errors", function()
			local TrustAndSafetyApp = require(script.Parent.TrustAndSafetyApp)

			local store = Rodux.Store.new(Reducers, nil, {
				Rodux.thunkMiddleware,
			})

			local element = Roact.createElement(RoactRodux.StoreProvider, {
				store = store,
			}, {
				LocalizationProvider = Roact.createElement(LocalizationProvider, {
					localization = Localization.new("en-us"),
				}, {
					TrustAndSafetyApp = Roact.createElement(TrustAndSafetyApp)
				}),
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end)
end
