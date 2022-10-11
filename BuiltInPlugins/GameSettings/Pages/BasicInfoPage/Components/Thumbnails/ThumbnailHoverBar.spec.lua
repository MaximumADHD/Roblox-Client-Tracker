return function()
	local Page = script.Parent.Parent.Parent
	local Plugin = script.Parent.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)

	local ThumbnailHoverBar = require(Page.Components.Thumbnails.ThumbnailHoverBar)

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
		local bar = container:FindFirstChildOfClass("Frame")

		expect(bar.Padding).to.be.ok()
		expect(bar.Zoom).to.be.ok()
		expect(bar.Delete).to.be.ok()

		Roact.unmount(instance)
	end)

	it("should be visible only when Enabled", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestThumbnailHoverBar(true), container)
		local bar = container:FindFirstChildOfClass("Frame")

		expect(bar.Visible).to.equal(true)

		local newBar = createTestThumbnailHoverBar(false)
		instance = Roact.update(instance, newBar)

		expect(bar.Visible).to.equal(false)

		Roact.unmount(instance)
	end)
end
