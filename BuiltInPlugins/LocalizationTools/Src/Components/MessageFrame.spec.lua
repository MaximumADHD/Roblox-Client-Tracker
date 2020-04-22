return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local MessageFrame = require(script.Parent.MessageFrame)
	local MockWrap = require(Plugin.Src.MockWrap)

	it("should create and destroy without errors", function()
		local element = MockWrap(Roact.createElement(MessageFrame))
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local element = MockWrap(Roact.createElement(MessageFrame))
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		Roact.unmount(instance)
	end)

	it("should render correctly with props", function()
		local message = "hello world"
		local storeState = {
			Message = message
		}
		local container = Instance.new("Folder")
		local element = MockWrap(Roact.createElement(MessageFrame), { StoreState = storeState })
		local instance = Roact.mount(element, container)
		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		expect(main.MessageTextLabel).to.be.ok()
		expect(main.MessageTextLabel.Text).to.equal(message)
		Roact.unmount(instance)
	end)
end
