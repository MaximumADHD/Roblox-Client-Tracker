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
	local Images = require(Plugin.Core.Util.Images)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local PurchaseDialog = require(Plugin.Core.Components.PurchaseFlow.PurchaseDialog)

	local function mockPlugin(container)
		local plugin = {}
		function plugin:CreateQWidgetPluginGui()
			return container or Instance.new("ScreenGui")
		end
		return plugin
	end

	local function createTestPurchaseDialog(container)
		return Roact.createElement(MockWrapper, {
			plugin = mockPlugin(container),
		}, {
			PurchaseDialog = Roact.createElement(PurchaseDialog, {
				Buttons = {},
				Title = "Test",
				Prompt = "Test",
				Thumbnail = Images.NO_BACKGROUND_ICON,
				Balance = 0,
				OnButtonClicked = function() end,
				OnClose = function() end,
			}),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestPurchaseDialog()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
