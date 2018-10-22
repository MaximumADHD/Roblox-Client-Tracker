return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local Theme = require(Plugin.Src.Util.Theme)
	local ThemeProvider = require(Plugin.Src.Providers.ThemeProvider)

	local ListDialog = require(Plugin.Src.Components.Dialog.ListDialog)

	local theme = Theme.newDummyTheme()

	local function createTestListDialog()
		return Roact.createElement(ThemeProvider, {
			theme = theme,
		}, {
			dialog = Roact.createElement(ListDialog, {
				Header = "Header",
				Entries = {"Description"},
				Buttons = {"No", "Yes"},
				OnResult = function()
				end,
			}),
		})
	end

	it("should create and destroy without errors", function()
		local instance = Roact.mount(createTestListDialog())
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = workspace
		local instance = Roact.mount(createTestListDialog(), container)
		local dialog = container.Frame

		expect(dialog.Header).to.be.ok()
		expect(dialog.Entries).to.be.ok()
		expect(dialog.Entries["1"]).to.be.ok()
		expect(dialog.Entries["1"].Text).to.be.ok()
		expect(dialog.Entries["1"].Dot).to.be.ok()
		expect(dialog.Buttons).to.be.ok()

		Roact.unmount(instance)
	end)
end