return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local MockWrapper = require(Plugin.SrcDeprecated.Context.MockWrapper)

	local DragListenerArea = require(script.Parent.DragListenerArea)

	local function createTestDragListenerArea()
		return Roact.createElement(MockWrapper, {}, {
			DragListenerArea = Roact.createElement(DragListenerArea)
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestDragListenerArea()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function ()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestDragListenerArea(), container)
		local frame = container:FindFirstChildOfClass("ImageButton")

		expect(frame).to.be.ok()

		Roact.unmount(instance)
	end)
end
