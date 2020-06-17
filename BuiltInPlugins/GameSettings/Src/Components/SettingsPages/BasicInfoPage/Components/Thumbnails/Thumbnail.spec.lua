return function()
	SKIP()

	local Page = script.Parent.Parent.Parent
	local Plugin = script.Parent.Parent.Parent.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local Theme = require(Plugin.Src.Util.Theme)
	local ThemeProvider = require(Plugin.Src.Providers.ThemeProvider)
	local Localization = require(Plugin.Src.Localization.Localization)
	local LocalizationProvider = require(Plugin.Src.Providers.LocalizationProvider)

	local Thumbnail = require(Page.Components.Thumbnails.Thumbnail)

	local theme = Theme.newDummyTheme()
	local localization = Localization.newDummyLocalization()
	local localized = localization.values

	local function createTestThumbnail(props)
		return Roact.createElement(ThemeProvider, {
			theme = theme,
		}, {
			Roact.createElement(LocalizationProvider, {
				localization = localization,
			}, {
				thumbnail = Roact.createElement(Thumbnail, props),
			}),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestThumbnail()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestThumbnail(), container)
		local thumbnail = container.ImageButton

		expect(thumbnail.InfoText).to.be.ok()

		Roact.unmount(instance)
	end)

	it("should show when it is under review", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestThumbnail({
			Review = true,
		}), container)
		local thumbnail = container.ImageButton

		expect(thumbnail.InfoText.Visible).to.equal(true)
		expect(thumbnail.InfoText.Text).to.equal(localized.Thumbnail.Review)

		Roact.unmount(instance)
	end)

	it("should show a placeholder when a video was passed", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestThumbnail({
			VideoHash = "000000",
		}), container)
		local thumbnail = container.ImageButton

		expect(thumbnail.Image).to.be.ok()
		expect(thumbnail.Image).never.to.equal("")

		Roact.unmount(instance)
	end)
end