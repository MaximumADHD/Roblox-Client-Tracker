return function()
	local CoreGui = game:GetService("CoreGui")
	local CorePackages = game:GetService("CorePackages")

	local Roact = require(CorePackages.Roact)
	local Rodux = require(CorePackages.Rodux)
	local RoactRodux = require(CorePackages.RoactRodux)
	local UIBlox = require(CorePackages.UIBlox)
	local JestGlobals = require(CorePackages.JestGlobals)
	local jestExpect = JestGlobals.expect

	local Reducer = require(script.Parent.Parent.Reducer)
	local CallDialogContainer = require(script.Parent.CallDialogContainer)

	it("should mount and unmount without errors", function()
		local store = Rodux.Store.new(Reducer, {
			Dialog = {
				isOpen = true,
				title = "title",
				bodyText = "body",
			},
		}, {
			Rodux.thunkMiddleware,
		})

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			StyleProvider = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
				CallDialogContainer = Roact.createElement(CallDialogContainer),
			}),
		})

		local instance = Roact.mount(element)
		jestExpect(CoreGui:FindFirstChild("CallDialogScreen")).never.toBeNull()
		Roact.unmount(instance)
	end)
end
