return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)

	local MockWrapper = require(Plugin.Src.Context.MockWrapper)

	local ZoomBar = require(script.Parent.ZoomBar)

	local function createTestZoomBar()
		return Roact.createElement(MockWrapper, {}, {
			ZoomControl = Roact.createElement(ZoomBar, {
				Size = UDim2.new(0, 1000, 0, 24),
				ContainerSize = Vector2.new(1000, 24),
				Scroll = 0,
				Zoom = 0,
			}),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestZoomBar()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestZoomBar(), container)
		local button = container:FindFirstChildOfClass("ImageButton")

		expect(button).to.be.ok()
		expect(button.MinZoomControl).to.be.ok()
		expect(button.MaxZoomControl).to.be.ok()
		expect(button.MinButton).to.be.ok()
		expect(button.MaxButton).to.be.ok()
		expect(button.ScrollControl).to.be.ok()

		Roact.unmount(instance)
	end)
end
