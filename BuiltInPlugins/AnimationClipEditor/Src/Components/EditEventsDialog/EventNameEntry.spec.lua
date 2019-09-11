return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local MockWrapper = require(Plugin.Src.Context.MockWrapper)

	local EventNameEntry = require(script.Parent.EventNameEntry)

	local function createTestEventNameEntry()
		return Roact.createElement(MockWrapper, {}, {
			EventNameEntry = Roact.createElement(EventNameEntry, {
				Name = "Test",
				PaddingLeft = UDim.new(),
				PaddingRight = UDim.new(),
			}),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestEventNameEntry()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")

		local element = createTestEventNameEntry()

		local instance = Roact.mount(element, container)
		local frame = container:FindFirstChildOfClass("Frame")
		expect(frame).to.be.ok()
		expect(frame.Padding).to.be.ok()
		expect(frame.Label).to.be.ok()
		expect(frame.DeleteButton).to.be.ok()
		expect(frame.ContextButton).to.be.ok()

		Roact.unmount(instance)
	end)
end
