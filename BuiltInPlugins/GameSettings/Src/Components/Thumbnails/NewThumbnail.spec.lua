return function()
	SKIP()
	
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local Theme = require(Plugin.Src.Util.Theme)
	local ThemeProvider = require(Plugin.Src.Providers.ThemeProvider)

	local NewThumbnail = require(Plugin.Src.Components.Thumbnails.NewThumbnail)

	local theme = Theme.newDummyTheme()

	local function createTestNewThumbnail()
		return Roact.createElement(ThemeProvider, {
			theme = theme,
		}, {
			newThumbnail = Roact.createElement(NewThumbnail),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestNewThumbnail()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestNewThumbnail(), container)

		expect(container.ImageButton).to.be.ok()
		expect(container.ImageButton.Plus).to.be.ok()

		Roact.unmount(instance)
	end)
end