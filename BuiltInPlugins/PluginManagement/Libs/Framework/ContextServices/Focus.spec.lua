return function()
	local Framework = script.Parent.Parent
	local Roact = require(Framework.Parent.Roact)
	local provide = require(Framework.ContextServices.provide)

	local Focus = require(script.Parent.Focus)
	local ShowOnTop = Focus.ShowOnTop
	local CaptureFocus = Focus.CaptureFocus
	local DragListener = Focus.DragListener
	local KeyboardListener = Focus.KeyboardListener

	it("should expect a LayerCollector", function()
		expect(function()
			Focus.new(Instance.new("Folder"))
		end).to.throw()
		Focus.new(Instance.new("ScreenGui"))
	end)

	it("should be providable as a ContextItem", function()
		local focus = Focus.new(Instance.new("ScreenGui"))
		local element = provide({focus}, {
			Frame = Roact.createElement("Frame"),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should return the target via getTarget", function()
		local screenGui = Instance.new("ScreenGui")
		local focus = Focus.new(screenGui)
		expect(focus:getTarget()).to.equal(screenGui)
	end)

	describe("ShowOnTop", function()
		local function createTestShowOnTop(children, container)
			local target = container or Instance.new("ScreenGui")
			local focus = Focus.new(target)
			return provide({focus}, {
				ShowOnTop = Roact.createElement(ShowOnTop, {}, children)
			})
		end

		it("should create and destroy without errors", function()
			local element = createTestShowOnTop()
			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)

		it("should render correctly", function()
			local container = Instance.new("ScreenGui")
			local element = createTestShowOnTop({}, container)
			local instance = Roact.mount(element)

			local frame = container:FindFirstChildOfClass("Frame")
			expect(frame).to.be.ok()
			Roact.unmount(instance)
		end)

		it("should render its children", function()
			local container = Instance.new("ScreenGui")
			local element = createTestShowOnTop({
				ChildFrame = Roact.createElement("Frame"),
			}, container)
			local instance = Roact.mount(element)

			local frame = container:FindFirstChildOfClass("Frame")
			expect(frame.ChildFrame).to.be.ok()
			Roact.unmount(instance)
		end)
	end)

	describe("CaptureFocus", function()
		local function createTestCaptureFocus(children, container)
			local target = container or Instance.new("ScreenGui")
			local focus = Focus.new(target)
			return provide({focus}, {
				CaptureFocus = Roact.createElement(CaptureFocus, {}, children)
			})
		end

		it("should create and destroy without errors", function()
			local element = createTestCaptureFocus()
			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)

		it("should render correctly", function()
			local container = Instance.new("ScreenGui")
			local element = createTestCaptureFocus({}, container)
			local instance = Roact.mount(element)

			local frame = container:FindFirstChildOfClass("ImageButton")
			expect(frame).to.be.ok()
			expect(frame.ScrollBlocker).to.be.ok()
			Roact.unmount(instance)
		end)

		it("should render its children", function()
			local container = Instance.new("ScreenGui")
			local element = createTestCaptureFocus({
				ChildFrame = Roact.createElement("Frame"),
			}, container)
			local instance = Roact.mount(element)

			local frame = container:FindFirstChildOfClass("ImageButton")
			expect(frame.ScrollBlocker.ChildFrame).to.be.ok()
			Roact.unmount(instance)
		end)
	end)

	describe("DragListener", function()
		local function createTestDragListener(container)
			local target = container or Instance.new("ScreenGui")
			local focus = Focus.new(target)
			return provide({focus}, {
				DragListener = Roact.createElement(DragListener)
			})
		end

		it("should create and destroy without errors", function()
			local element = createTestDragListener()
			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)

		it("should render correctly", function()
			local container = Instance.new("ScreenGui")
			local element = createTestDragListener(container)
			local instance = Roact.mount(element)

			local frame = container:FindFirstChildOfClass("ImageButton")
			expect(frame.ScrollBlocker.Listener).to.be.ok()
			Roact.unmount(instance)
		end)
	end)

	describe("KeyboardListener", function()
		local function createTestKeyboardListener(container)
			local target = container or Instance.new("ScreenGui")
			local focus = Focus.new(target)
			return provide({focus}, {
				KeyboardListener = Roact.createElement(KeyboardListener)
			})
		end

		it("should create and destroy without errors", function()
			local element = createTestKeyboardListener()
			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)

		it("should render correctly", function()
			local container = Instance.new("ScreenGui")
			local element = createTestKeyboardListener(container)
			local instance = Roact.mount(element)

			local frame = container:FindFirstChildOfClass("Frame")
			expect(frame.Listener).to.be.ok()
			Roact.unmount(instance)
		end)
	end)
end