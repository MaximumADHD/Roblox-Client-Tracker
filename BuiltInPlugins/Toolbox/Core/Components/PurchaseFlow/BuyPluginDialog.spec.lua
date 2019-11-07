return function()
	local Plugin = script.Parent.Parent.Parent.Parent

	local Libs = Plugin.Libs
	local Roact = require(Libs.Roact)
	local Images = require(Plugin.Core.Util.Images)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local BuyPluginDialog = require(Plugin.Core.Components.PurchaseFlow.BuyPluginDialog)

	local function mockPlugin(container)
		local plugin = {}
		function plugin:CreateQWidgetPluginGui()
			return container or Instance.new("ScreenGui")
		end
		return plugin
	end

	local function createTestBuyPluginDialog(container)
		return Roact.createElement(MockWrapper, {
			plugin = mockPlugin(container),
		}, {
			BuyPluginDialog = Roact.createElement(BuyPluginDialog, {
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
		local element = createTestBuyPluginDialog()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("ScreenGui")
		local element = createTestBuyPluginDialog(container)
		local instance = Roact.mount(element)

		local main = container:FindFirstChild("FocusProvider")
		expect(main).to.be.ok()
		local content = main:FindFirstChild("Content")
		expect(content).to.be.ok()
		expect(content.Balance).to.be.ok()
		expect(content.Balance.Layout).to.be.ok()
		expect(content.Balance.Text).to.be.ok()
		expect(content.Balance.Icon).to.be.ok()
		expect(content.Balance.Robux).to.be.ok()
		expect(content.Thumbnail).to.be.ok()
		expect(content.Prompt).to.be.ok()

		Roact.unmount(instance)
	end)
end
