return function()
	SKIP()

	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local Theme = require(Plugin.Src.Util.Theme)
	local ThemeProvider = require(Plugin.Src.Providers.ThemeProvider)

	local SimpleDialog = require(Plugin.Src.Components.Dialog.SimpleDialog)

	local theme = Theme.newDummyTheme()

	local function createTestSimpleDialog()
		return Roact.createElement(ThemeProvider, {
			theme = theme,
		}, {
			dialog = Roact.createElement(SimpleDialog, {
				Header = "Header",
				Buttons = {"No", "Yes"},
				OnResult = function()
				end,
			}),
		})
	end

	it("should create and destroy without errors", function()
		local instance = Roact.mount(createTestSimpleDialog())
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestSimpleDialog(), container)
		local dialog = container.Frame

		expect(dialog.Header).to.be.ok()
		expect(dialog.Buttons).to.be.ok()

		Roact.unmount(instance)
	end)
end