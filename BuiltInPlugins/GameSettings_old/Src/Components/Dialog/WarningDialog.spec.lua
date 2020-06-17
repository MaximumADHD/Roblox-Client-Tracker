return function()
	SKIP()
	
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local Theme = require(Plugin.Src.Util.Theme)
	local ThemeProvider = require(Plugin.Src.Providers.ThemeProvider)

	local WarningDialog = require(Plugin.Src.Components.Dialog.WarningDialog)

	local theme = Theme.newDummyTheme()

	local function createTestWarningDialog()
		return Roact.createElement(ThemeProvider, {
			theme = theme,
		}, {
			dialog = Roact.createElement(WarningDialog, {
				Header = "Header",
				Description = "Description",
				Buttons = {"No", "Yes"},
				OnResult = function()
				end,
			}),
		})
	end

	it("should create and destroy without errors", function()
		local instance = Roact.mount(createTestWarningDialog())
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestWarningDialog(), container)
		local dialog = container.Frame

		expect(dialog.Header).to.be.ok()
		expect(dialog.Description).to.be.ok()
		expect(dialog.Warning).to.be.ok()
		expect(dialog.Buttons).to.be.ok()

		Roact.unmount(instance)
	end)
end