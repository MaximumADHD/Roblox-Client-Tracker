return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local Constants = require(Plugin.Src.Util.Constants)
	local Theme = require(Plugin.Src.Util.Theme)
	local ThemeProvider = require(Plugin.Src.Providers.ThemeProvider)

	local ThumbnailWidget = require(Plugin.Src.Components.Thumbnails.ThumbnailWidget)

	local theme = Theme.newDummyTheme()

	local function createTestThumbnailWidget(props)
		return Roact.createElement(ThemeProvider, {
			theme = theme,
		}, {
			thumbnailWidget = Roact.createElement(ThumbnailWidget, props),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestThumbnailWidget()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = workspace
		local instance = Roact.mount(createTestThumbnailWidget(), container)
		local widget = container.Frame

		expect(widget.Layout).to.be.ok()
		expect(widget.Title).to.be.ok()
		expect(widget.Notes).to.be.ok()
		expect(widget.Notes["1"]).to.be.ok()
		expect(widget.Notes["2"]).to.be.ok()
		expect(widget.Notes["3"]).to.be.ok()
		expect(widget.Thumbnails).to.be.ok()
		expect(widget.DragFolder).to.be.ok()
		expect(widget.DragFolder.DragGhost).to.be.ok()
		expect(widget.CountFolder).to.be.ok()
		expect(widget.CountFolder.Count).to.be.ok()

		Roact.unmount(instance)
	end)

	describe("Thumbnails", function()
		it("should not display when the widget is disabled", function()
			local container = workspace
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
			local container = workspace
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

			expect(count.Text).to.equal("3/" .. Constants.MAX_THUMBNAILS)

			Roact.unmount(instance)
		end)

		it("should display a special message when no thumbnails", function()
			local container = workspace
			local instance = Roact.mount(createTestThumbnailWidget({
				Enabled = true,
			}), container)
			local count = container.Frame.CountFolder.Count

			expect(count.Text).to.equal("Up to " .. Constants.MAX_THUMBNAILS .. " items")

			Roact.unmount(instance)
		end)

		it("should not display when the widget is disabled", function()
			local container = workspace
			local instance = Roact.mount(createTestThumbnailWidget({
				Enabled = false,
			}), container)
			local count = container.Frame.CountFolder.Count

			expect(count.Visible).to.equal(false)

			Roact.unmount(instance)
		end)
	end)
end