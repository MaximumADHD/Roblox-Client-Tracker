return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local MockWrapper = require(Plugin.Src.Context.MockWrapper)

	local SelectionBox = require(script.Parent.SelectionBox)

	local function createTestSelectionBox(container)
		return Roact.createElement(MockWrapper, {
			Container = container,
		}, {
			SelectionBox = Roact.createElement(SelectionBox, {
				SourceExtents = Rect.new(0, 0, 0, 0),
			})
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestSelectionBox()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function ()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestSelectionBox(container), container)

		local gui = container:FindFirstChild("FocusGuiMock")
		expect(gui).to.be.ok()
		expect(gui.TopLevelDetector).to.be.ok()
		expect(gui.TopLevelDetector.ScrollBlocker).to.be.ok()
		expect(gui.TopLevelDetector.ScrollBlocker.DragListener).to.be.ok()
		expect(gui.TopLevelDetector.ScrollBlocker.DragListener.Extents).to.be.ok()
		expect(gui.TopLevelDetector.ScrollBlocker.DragListener.Extents.Box).to.be.ok()

		Roact.unmount(instance)
	end)
end
