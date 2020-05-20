return function()
	local Framework = script.Parent.Parent
	local Library = Framework.Parent.Parent

	local Roact = require(Library.Packages.Roact)

	local DragSelectionView = require(Framework.Components.DragSelectionView)

	local function createTestDragSelectionView()
		return Roact.createElement(DragSelectionView, {
			dragStartLocation = Vector2.new(0, 0),
			dragEndLocation = Vector2.new(100, 100),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestDragSelectionView()

		expect(function()
			local handle = Roact.mount(element)
			Roact.unmount(handle)
		end).to.never.throw()
	end)

	it("should error if drag location not provided", function()
		local element = Roact.createElement(DragSelectionView, {})

		expect(function()
			local handle = Roact.mount(element)
			Roact.unmount(handle)
		end).to.throw()
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local element = createTestDragSelectionView()
		local handle = Roact.mount(element, container)

		local screenGui = container:FindFirstChildOfClass("ScreenGui")
		expect(screenGui).to.be.ok()

		local frame = screenGui:FindFirstChildOfClass("Frame")
		expect(frame).to.be.ok()
		expect(frame.Left).to.be.ok()
		expect(frame.Top).to.be.ok()
		expect(frame.Right).to.be.ok()
		expect(frame.Bottom).to.be.ok()

		Roact.unmount(handle)
	end)
end
