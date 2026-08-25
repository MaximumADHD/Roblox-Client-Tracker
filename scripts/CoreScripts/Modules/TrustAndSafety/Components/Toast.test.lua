local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local Rodux = require(CorePackages.Packages.Rodux)
local UIBlox = require(CorePackages.Packages.UIBlox)
local AppStyleProvider = UIBlox.App.Style.AppStyleProvider

local TnsModule = script.Parent.Parent
local Dependencies = require(TnsModule.Dependencies)
local Reducers = require(TnsModule.Reducers)
local ShowToast = require(TnsModule.Actions.ShowToast)

local Toast = require(script.Parent.Toast)

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it

describe("mount & unmount", function()
	it("show 2 toasts", function()
		local store = Rodux.Store.new(Reducers)
		store:dispatch(ShowToast("test toast"))

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			StyleProvider = Roact.createElement(AppStyleProvider, {}, {
				Toast = Roact.createElement(Toast),
			}),
		})

		local instance = Roact.mount(element)

		store:dispatch(ShowToast("new test toast"))

		Roact.unmount(instance)
	end)
end)
