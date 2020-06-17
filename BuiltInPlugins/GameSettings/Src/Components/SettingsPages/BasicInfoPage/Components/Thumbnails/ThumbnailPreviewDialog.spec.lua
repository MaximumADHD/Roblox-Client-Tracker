return function()
	SKIP()

	local Page = script.Parent.Parent.Parent
	local Plugin = script.Parent.Parent.Parent.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local Theme = require(Plugin.Src.Util.Theme)
	local ThemeProvider = require(Plugin.Src.Providers.ThemeProvider)
	local Localization = require(Plugin.Src.Localization.Localization)
	local LocalizationProvider = require(Plugin.Src.Providers.LocalizationProvider)

	local ThumbnailPreviewDialog = require(Page.Components.Thumbnails.ThumbnailPreviewDialog)

	local theme = Theme.newDummyTheme()
	local localization = Localization.newDummyLocalization()

	local thumbnailSet = {
		["01"] = {
			imageId = "607948062",
			approved = true,
		},
		["02"] = {
			videoHash = "0000000",
			videoTitle = "Game Trailer",
			approved = true,
		}
	}

	local order = {"01", "02"}

	local function createTestThumbnailPreviewDialog(startIndex)
		return Roact.createElement(ThemeProvider, {
			theme = theme,
		}, {
			Roact.createElement(LocalizationProvider, {
				localization = localization,
			}, {
				dialog = Roact.createElement(ThumbnailPreviewDialog, {
					Thumbnails = thumbnailSet,
					Order = order,
					StartId = startIndex or "01",
				}),
			}),
		})
	end

	it("should create and destroy without errors", function()
		local instance = Roact.mount(createTestThumbnailPreviewDialog())
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestThumbnailPreviewDialog(), container)
		local dialog = container.Frame

		expect(dialog.Padding).to.be.ok()
		expect(dialog.Preview).to.be.ok()
		expect(dialog.Preview.Padding).to.be.ok()
		expect(dialog.Preview.TitleFrame).to.be.ok()
		expect(dialog.Preview.TitleFrame.TitleText).to.be.ok()
		expect(dialog.Preview.VideoWarning).to.be.ok()
		expect(dialog.Preview.VideoWarning.Message).to.be.ok()
		expect(dialog.Preview.VideoWarning.Link).to.be.ok()

		Roact.unmount(instance)
	end)

	it("should change starting location based on StartIndex", function ()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestThumbnailPreviewDialog(), container)
		expect(container.Frame.Preview.Image).to.equal("rbxassetid://607948062")
		Roact.unmount(instance)

		instance = Roact.mount(createTestThumbnailPreviewDialog("02"), container)
		expect(container.Frame.Preview.Image).never.to.equal("rbxassetid://607948062")
		Roact.unmount(instance)
	end)

	it("should display a title and popup for videos", function ()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestThumbnailPreviewDialog("02"), container)

		expect(container.Frame.Preview.TitleFrame.Visible).to.equal(true)
		expect(container.Frame.Preview.VideoWarning.Visible).to.equal(true)

		Roact.unmount(instance)
	end)
end