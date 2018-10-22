return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local Theme = require(Plugin.Src.Util.Theme)
	local ThemeProvider = require(Plugin.Src.Providers.ThemeProvider)

	local BaseDialog = require(Plugin.Src.Components.Dialog.BaseDialog)

	local theme = Theme.newDummyTheme()

	local function createTestBaseDialog()
		return Roact.createElement(ThemeProvider, {
			theme = theme,
		}, {
			dialog = Roact.createElement(BaseDialog, {
				Buttons = {"No", "Yes"},
				Children = {},
				OnResult = function()
				end,
			}, {}),
		})
	end

	it("should create and destroy without errors", function()
		local instance = Roact.mount(createTestBaseDialog())
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = workspace
		local instance = Roact.mount(createTestBaseDialog(), container)
		local dialog = container.Frame

		expect(dialog.Buttons).to.be.ok()

		Roact.unmount(instance)
	end)
end