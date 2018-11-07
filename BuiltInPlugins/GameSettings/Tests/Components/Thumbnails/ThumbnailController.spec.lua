return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local Theme = require(Plugin.Src.Util.Theme)
	local ThemeProvider = require(Plugin.Src.Providers.ThemeProvider)

	local ThumbnailController = require(Plugin.Src.Components.Thumbnails.ThumbnailController)

	local theme = Theme.newDummyTheme()

	local function createTestThumbnailController(props)
		return Roact.createElement(ThemeProvider, {
			theme = theme,
		}, {
			thumbnailController = Roact.createElement(ThumbnailController),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestThumbnailController()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end