return function()
	SKIP()

	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local DEPRECATED_Constants = require(Plugin.Src.Util.DEPRECATED_Constants)
	local Theme = require(Plugin.Src.Util.Theme)
	local ThemeProvider = require(Plugin.Src.Providers.ThemeProvider)
	local Localization = require(Plugin.Src.Localization.Localization)
	local LocalizationProvider = require(Plugin.Src.Providers.LocalizationProvider)

	local ThumbnailWidget = require(Plugin.Src.Components.Thumbnails.ThumbnailWidget)

	local theme = Theme.newDummyTheme()
	local localization = Localization.newDummyLocalization()
	local localized = localization.values

	local function createTestThumbnailWidget(props)
		return Roact.createElement(ThemeProvider, {
			theme = theme,
		}, {
			Roact.createElement(LocalizationProvider, {
				localization = localization,
			}, {
				thumbnailWidget = Roact.createElement(ThumbnailWidget, props),
			}),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestThumbnailWidget()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestThumbnailWidget(), container)
		local widget = container.Frame

		expect(widget.Layout).to.be.ok()
		expect(widget.Title).to.be.ok()
		expect(widget.Notes).to.be.ok()
		expect(widget.Notes.Layout).to.be.ok()
		expect(widget.Notes.LimitHint).to.be.ok()
		expect(widget.Notes.FileHint).to.be.ok()
		expect(widget.Notes.ModerationHint).to.be.ok()
		expect(widget.Thumbnails).to.be.ok()
		expect(widget.DragFolder).to.be.ok()
		expect(widget.DragFolder.DragGhost).to.be.ok()
		expect(widget.CountFolder).to.be.ok()
		expect(widget.CountFolder.Count).to.be.ok()

		Roact.unmount(instance)
	end)

	describe("Thumbnails", function()
		it("should not display when the widget is disabled", function()
			local container = Instance.new("Folder")
			local instance = Roact.mount(createTestThumbnailWidget({
				Enabled = false,
			}), container)
			local thumbnails = container.Frame.Thumbnails

			expect(#thumbnails:GetChildren()).to.equal(1)

			Roact.unmount(instance)
		end)
	end)

	describe("Count", function()
		it("should display a current count of thumbnails", function()
			local container = Instance.new("Folder")
			local instance = Roact.mount(createTestThumbnailWidget({
				Enabled = true,
				Thumbnails = {
					First = {id = "First"},
					Second = {id = "Second"},
					Third = {id = "Third"},
				},
				Order = {"First", "Second", "Third"}
			}), container)
			local count = container.Frame.CountFolder.Count

			expect(count.Text).to.equal("3/" .. DEPRECATED_Constants.MAX_THUMBNAILS)

			Roact.unmount(instance)
		end)

		it("should display a special message when no thumbnails", function()
			local container = Instance.new("Folder")
			local instance = Roact.mount(createTestThumbnailWidget({
				Enabled = true,
			}), container)
			local count = container.Frame.CountFolder.Count

			expect(count.Text).to.equal(localized.Thumbnails.Count({
				maxThumbnails = DEPRECATED_Constants.MAX_THUMBNAILS,
			}))

			Roact.unmount(instance)
		end)

		it("should not display when the widget is disabled", function()
			local container = Instance.new("Folder")
			local instance = Roact.mount(createTestThumbnailWidget({
				Enabled = false,
			}), container)
			local count = container.Frame.CountFolder.Count

			expect(count.Visible).to.equal(false)

			Roact.unmount(instance)
		end)
	end)
end