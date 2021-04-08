return function()
	local Plugin = script.Parent.Parent.Parent.Parent

	local Libs = Plugin.Libs
	local Roact = require(Libs.Roact)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local PurchaseFailedDialog = require(Plugin.Core.Components.PurchaseFlow.PurchaseFailedDialog)
	local FFlagToolboxUseDevFrameworkDialogs = game:GetFastFlag("ToolboxUseDevFrameworkDialogs")

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

	if not FFlagToolboxUseDevFrameworkDialogs then
		it("should render correctly", function()
			local container = Instance.new("ScreenGui")
			local element = createTestPurchaseFailedDialog(container)
			local instance = Roact.mount(element)

			local main = container:FindFirstChild("FocusProvider")
			expect(main).to.be.ok()
			local content = main:FindFirstChild("Content")
			expect(content).to.be.ok()
			expect(content.Header).to.be.ok()
			expect(content.Details).to.be.ok()

			Roact.unmount(instance)
		end)
	end
end
