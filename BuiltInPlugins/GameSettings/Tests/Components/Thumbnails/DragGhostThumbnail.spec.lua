return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)
	local Constants = require(Plugin.Src.Util.Constants)

	local Theme = require(Plugin.Src.Util.Theme)
	local ThemeProvider = require(Plugin.Src.Providers.ThemeProvider)

	local DragGhostThumbnail = require(Plugin.Src.Components.Thumbnails.DragGhostThumbnail)

	local theme = Theme.newDummyTheme()

	local function createTestDragGhostThumbnail(props)
		return Roact.createElement(ThemeProvider, {
			theme = theme,
		}, {
			dragGhost = Roact.createElement(DragGhostThumbnail, props),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestDragGhostThumbnail()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = workspace
		local instance = Roact.mount(createTestDragGhostThumbnail(), container)
		local background = container.Frame

		expect(background.Ghost).to.be.ok()

		Roact.unmount(instance)
	end)

	it("should show a ghost thumbnail only when enabled", function()
		local container = workspace
		local instance = Roact.mount(createTestDragGhostThumbnail({
			Enabled = true,
		}), container)
		local background = container.Frame

		expect(background.Ghost.Visible).to.equal(true)

		local newGhost = createTestDragGhostThumbnail({
			Enabled = false,
		})
		instance = Roact.reconcile(instance, newGhost)

		expect(background.Ghost.Visible).to.equal(false)

		Roact.unmount(instance)
	end)

	it("should show the correct image", function()
		local container = workspace
		local instance = Roact.mount(createTestDragGhostThumbnail({
			Image = "rbxassetid://607948062",
		}), container)
		local background = container.Frame

		expect(background.Ghost.Image).to.equal("rbxassetid://607948062")

		Roact.unmount(instance)
	end)

	it("should show a placeholder when no image is passed", function()
		local container = workspace
		local instance = Roact.mount(createTestDragGhostThumbnail(), container)
		local background = container.Frame

		expect(background.Ghost.Image).to.equal(Constants.VIDEO_PLACEHOLDER)

		Roact.unmount(instance)
	end)
end