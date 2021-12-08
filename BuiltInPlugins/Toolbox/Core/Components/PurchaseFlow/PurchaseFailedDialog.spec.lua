return function()
	local Plugin = script.Parent.Parent.Parent.Parent

	local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
	local Libs
	if FFlagToolboxDeduplicatePackages then
		Libs = Plugin.Packages
	else
		Libs = Plugin.Libs
	end
	local Roact = require(Libs.Roact)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local PurchaseFailedDialog = require(Plugin.Core.Components.PurchaseFlow.PurchaseFailedDialog)

	local function mockPlugin(container)
		local plugin = {}
		function plugin:CreateQWidgetPluginGui()
			return container or Instance.new("ScreenGui")
		end
		return plugin
	end

	local function createTestPurchaseFailedDialog(container)
		return Roact.createElement(MockWrapper, {
			plugin = mockPlugin(container),
		}, {
			PurchaseFailedDialog = Roact.createElement(PurchaseFailedDialog, {
				Name = "Test",
				OnButtonClicked = function()
				end,
				OnClose = function()
				end,
			}),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestPurchaseFailedDialog()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
