return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)
	local RoactRodux = require(CorePackages.RoactRodux)
	local Store = require(CorePackages.Rodux).Store

	local UtilAndTab = require(script.Parent.UtilAndTab)

	it("should create and destroy without errors", function()
		local store = Store.new(function()
			return {
				MainView = {
					currTabIndex = 1,
				}
			}
		end)

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			utilAndTab = Roact.createElement(UtilAndTab, {
				tabList = {},
				windowWidth = 0,
			})

		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end