return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local MockWrapper = require(Plugin.Src.Context.MockWrapper)

	local WideScrollingFrame = require(script.Parent.WideScrollingFrame)

	local function createTestWideScrollingFrame(width)
		return Roact.createElement(MockWrapper, {}, {
			WideScrollingFrame = Roact.createElement(WideScrollingFrame, {
				Size = UDim2.new(0, 500, 0, 500),
				CanvasSize = UDim2.new(0, 500, 0, 500),
				Width = width or 500,
			}),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestWideScrollingFrame()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function ()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestWideScrollingFrame(), container)
		local frame = container:FindFirstChildOfClass("Frame")

		expect(frame).to.be.ok()
		expect(frame.Canvas).to.be.ok()
		expect(frame.Footer).to.be.ok()

		Roact.unmount(instance)
	end)

	it("should render a scrollbar when CanvasSize is wider than width", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestWideScrollingFrame(200), container)
		local frame = container:FindFirstChildOfClass("Frame")

		expect(frame.Footer.ScrollArea).to.be.ok()
		expect(frame.Footer.ScrollArea.ScrollBar).to.be.ok()
		expect(frame.Footer.LeftButton).to.be.ok()
		expect(frame.Footer.RightButton).to.be.ok()

		Roact.unmount(instance)
	end)

	it("should not render a scrollbar when CanvasSize is not wider than width", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestWideScrollingFrame(), container)
		local frame = container:FindFirstChildOfClass("Frame")

		expect(frame.Footer:FindFirstChild("ScrollArea")).never.to.be.ok()
		expect(frame.Footer:FindFirstChild("LeftButton")).never.to.be.ok()
		expect(frame.Footer:FindFirstChild("RightButton")).never.to.be.ok()

		Roact.unmount(instance)
	end)
end
