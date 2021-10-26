return function()
	local Plugin = script.Parent.Parent.Parent.Parent

	local Libs = Plugin.Libs
	local Roact = require(Libs.Roact)
	local Images = require(Plugin.Core.Util.Images)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local BuyRobuxDialog = require(Plugin.Core.Components.PurchaseFlow.BuyRobuxDialog)

	local function mockPlugin(container)
		local plugin = {}
		function plugin:CreateQWidgetPluginGui()
			return container or Instance.new("ScreenGui")
		end
		return plugin
	end

	local function createTestBuyRobuxDialog(container)
		return Roact.createElement(MockWrapper, {
			plugin = mockPlugin(container),
		}, {
			BuyRobuxDialog = Roact.createElement(BuyRobuxDialog, {
				Name = "Test",
				Creator = "Test",
				Thumbnail = Images.NO_BACKGROUND_ICON,
				Cost = 0,
				Balance = 0,
				OnButtonClicked = function()
				end,
				OnClose = function()
				end,
			}),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestBuyRobuxDialog()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
