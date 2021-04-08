return function()
	local Plugin = script.Parent.Parent.Parent.Parent

	local Libs = Plugin.Libs
	local Roact = require(Libs.Roact)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local PurchaseSuccessDialog = require(Plugin.Core.Components.PurchaseFlow.PurchaseSuccessDialog)
	local FFlagToolboxUseDevFrameworkDialogs = game:GetFastFlag("ToolboxUseDevFrameworkDialogs")

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

	if not FFlagToolboxUseDevFrameworkDialogs then
		it("should render correctly", function()
			local container = Instance.new("ScreenGui")
			local element = createTestPurchaseSuccessDialog(container)
			local instance = Roact.mount(element)

			local main = container:FindFirstChild("FocusProvider")
			expect(main).to.be.ok()
			local content = main:FindFirstChild("Content")
			expect(content).to.be.ok()
			expect(content.Header).to.be.ok()
			expect(content.Details).to.be.ok()
			expect(content.Balance).to.be.ok()
			expect(content.Balance.Layout).to.be.ok()
			expect(content.Balance.Text).to.be.ok()
			expect(content.Balance.Icon).to.be.ok()
			expect(content.Balance.Robux).to.be.ok()

			Roact.unmount(instance)
		end)
	end
end
