return function()
	SKIP()
	
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local Theme = require(Plugin.Src.Util.Theme)
	local ThemeProvider = require(Plugin.Src.Providers.ThemeProvider)

	local NewUploadableIcon = require(Plugin.Src.Components.UploadableIcon.NewUploadableIcon)

	local theme = Theme.newDummyTheme()

	local function createTestNewUploadableIcon()
		return Roact.createElement(ThemeProvider, {
			theme = theme,
		}, {
			newThumbnail = Roact.createElement(NewUploadableIcon),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestNewUploadableIcon()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestNewUploadableIcon(), container)

		expect(container.ImageButton).to.be.ok()
		expect(container.ImageButton.Plus).to.be.ok()

		Roact.unmount(instance)
	end)
end