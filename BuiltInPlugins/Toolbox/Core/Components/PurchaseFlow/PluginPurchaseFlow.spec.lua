return function()
	local Plugin = script.Parent.Parent.Parent.Parent

	local Packages = Plugin.Packages
	local Roact = require(Packages.Roact)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local PluginPurchaseFlow = require(Plugin.Core.Components.PurchaseFlow.PluginPurchaseFlow)

	local function mockPlugin(container)
		local plugin = {}
		function plugin:CreateQWidgetPluginGui()
			return container or Instance.new("ScreenGui")
		end
		return plugin
	end

	local function createTestPluginPurchaseFlow(container)
		return Roact.createElement(MockWrapper, {
			plugin = mockPlugin(container),
		}, {
			PluginPurchaseFlow = Roact.createElement(PluginPurchaseFlow, {
				Cost = 0,
				Balance = 0,
				AssetData = {
					Asset = {
						Id = 0,
						Name = "Test",
					},
					Creator = {
						Name = "Test",
					},
					Product = {
						Price = 10,
					},
				},
				PurchaseFailed = false,
				Purchasing = false,
				Cancel = function() end,
				Continue = function() end,
			}),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestPluginPurchaseFlow()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
