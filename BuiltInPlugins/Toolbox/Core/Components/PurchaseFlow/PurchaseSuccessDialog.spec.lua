return function()
	local Plugin = script.Parent.Parent.Parent.Parent

	local Libs = Plugin.Libs
	local Roact = require(Libs.Roact)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local PurchaseSuccessDialog = require(Plugin.Core.Components.PurchaseFlow.PurchaseSuccessDialog)

	local function mockPlugin(container)
		local plugin = {}
		function plugin:CreateQWidgetPluginGui()
			return container or Instance.new("ScreenGui")
		end
		return plugin
	end

	local function createTestPurchaseSuccessDialog(container)
		return Roact.createElement(MockWrapper, {
			plugin = mockPlugin(container),
		}, {
			PurchaseSuccessDialog = Roact.createElement(PurchaseSuccessDialog, {
				Name = "Test",
				Balance = 0,
				OnClose = function()
				end,
			}),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestPurchaseSuccessDialog()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
