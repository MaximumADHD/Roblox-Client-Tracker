return function()
	SKIP()
	
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local Theme = require(Plugin.Src.Util.Theme)
	local ThemeProvider = require(Plugin.Src.Providers.ThemeProvider)
	local Localization = require(Plugin.Src.Localization.Localization)
	local LocalizationProvider = require(Plugin.Src.Providers.LocalizationProvider)

	local ThumbnailController = require(Plugin.Src.Components.Thumbnails.ThumbnailController)

	local theme = Theme.newDummyTheme()
	local localization = Localization.newDummyLocalization()

	local function createTestThumbnailController(props)
		return Roact.createElement(ThemeProvider, {
			theme = theme,
		}, {
			Roact.createElement(LocalizationProvider, {
				localization = localization,
			}, {
				thumbnailController = Roact.createElement(ThumbnailController),
			}),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestThumbnailController()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end