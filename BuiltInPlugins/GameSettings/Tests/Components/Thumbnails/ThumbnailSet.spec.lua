return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local Theme = require(Plugin.Src.Util.Theme)
	local ThemeProvider = require(Plugin.Src.Providers.ThemeProvider)
	local Localization = require(Plugin.Src.Localization.Localization)
	local LocalizationProvider = require(Plugin.Src.Providers.LocalizationProvider)

	local ThumbnailSet = require(Plugin.Src.Components.Thumbnails.ThumbnailSet)

	local theme = Theme.newDummyTheme()
	local localization = Localization.newDummyLocalization()

	local function createTestThumbnailSet(enabled, thumbnails)
		return Roact.createElement(ThemeProvider, {
			theme = theme,
		}, {
			Roact.createElement(LocalizationProvider, {
				localization = localization,
			}, {
				thumbnailSet = Roact.createElement(ThumbnailSet, {
					Enabled = enabled,
					Thumbnails = thumbnails,
				}),
			}),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestThumbnailSet()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestThumbnailSet(), container)
		local thumbnailSet = container:FindFirstChildOfClass("Frame")

		expect(thumbnailSet.Layout).to.be.ok()

		Roact.unmount(instance)
	end)

	it("should create given Thumbnails by Id", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestThumbnailSet(true, {
			First = {id = "First"},
			Second = {id = "Second"},
		}), container)
		local thumbnailSet = container:FindFirstChildOfClass("Frame")

		expect(thumbnailSet.First).to.be.ok()
		expect(thumbnailSet.Second).to.be.ok()

		Roact.unmount(instance)
	end)

	it("should create a NewThumbnail at the end of the set", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestThumbnailSet(true), container)
		local thumbnailSet = container:FindFirstChildOfClass("Frame")

		expect(thumbnailSet.NewThumbnail).to.be.ok()

		Roact.unmount(instance)
	end)

	it("should render no thumbnails when disabled", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestThumbnailSet(false, {
			First = {id = "First"},
			Second = {id = "Second"},
		}), container)
		local thumbnailSet = container:FindFirstChildOfClass("Frame")

		expect(thumbnailSet:FindFirstChild("First")).never.to.be.ok()
		expect(thumbnailSet:FindFirstChild("Second")).never.to.be.ok()
		expect(thumbnailSet:FindFirstChild("NewThumbnail")).never.to.be.ok()

		Roact.unmount(instance)
	end)
end