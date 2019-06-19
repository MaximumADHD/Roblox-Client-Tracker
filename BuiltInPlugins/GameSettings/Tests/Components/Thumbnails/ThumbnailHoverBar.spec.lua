return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local ThumbnailHoverBar = require(Plugin.Src.Components.Thumbnails.ThumbnailHoverBar)

	local function createTestThumbnailHoverBar(enabled)
		return Roact.createElement(ThumbnailHoverBar, {
			Enabled = enabled or false,
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestThumbnailHoverBar()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestThumbnailHoverBar(), container)
		local bar = container.Frame

		expect(bar.Padding).to.be.ok()
		expect(bar.Zoom).to.be.ok()
		expect(bar.Delete).to.be.ok()

		Roact.unmount(instance)
	end)

	it("should be visible only when Enabled", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestThumbnailHoverBar(true), container)
		local bar = container.Frame

		expect(bar.Visible).to.equal(true)

		local newBar = createTestThumbnailHoverBar(false)
		instance = Roact.reconcile(instance, newBar)

		expect(bar.Visible).to.equal(false)

		Roact.unmount(instance)
	end)
end