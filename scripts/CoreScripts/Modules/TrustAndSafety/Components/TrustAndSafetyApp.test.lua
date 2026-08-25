--!nonstrict
local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Packages.Roact)
local Rodux = require(CorePackages.Packages.Rodux)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local UIBlox = require(CorePackages.Packages.UIBlox)

local TnsModule = script.Parent.Parent
local Dependencies = require(TnsModule.Dependencies)
local Localization = Dependencies.Localization
local LocalizationProvider = require(Dependencies.LocalizationProvider)

local Reducers = require(script.Parent.Parent.Reducers)

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it

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
				TrustAndSafetyApp = Roact.createElement(TrustAndSafetyApp),
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end)
