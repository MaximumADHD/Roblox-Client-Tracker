return function()
	local Main = script.Parent.Parent.Parent.Parent
	local Roact = require(Main.Packages.Roact)
	local StoryTree = require(script.Parent)
	local MockWrap = require(Main.Src.Resources.MockWrap)

	it("should create and destroy without errors", function()
		local element = MockWrap(Roact.createElement(StoryTree))
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local element = MockWrap(Roact.createElement(StoryTree))
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		Roact.unmount(instance)
	end)
end
