return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local RenderExample = require(script.Parent.RenderExample)
	local MockWrap = require(Plugin.Src.MockWrap)

	it("should create and destroy without errors", function()
		local element = MockWrap(Roact.createElement(RenderExample, {
			Name = "Test",
		}))
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local element = MockWrap(Roact.createElement(RenderExample, {
			Name = "__Test",
		}))
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).never.to.be.ok()
		Roact.unmount(instance)
	end)

	it("should render an example when given a component with an example", function()
		local container = Instance.new("Folder")
		local element = MockWrap(Roact.createElement(RenderExample, {
			Name = "Button",
		}))
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		expect(main.Contents).to.be.ok()
		expect(main.Contents.Name).to.be.ok()
		expect(main.Contents.Container).to.be.ok()
		expect(main.Contents.Container.Contents).to.be.ok()
		expect(main.Contents.Container.Contents.Layout).to.be.ok()
		expect(main.Contents.Container.Contents.Example).to.be.ok()
		Roact.unmount(instance)
	end)
end
