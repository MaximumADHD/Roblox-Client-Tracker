return function()
	local Main = script.Parent.Parent.Parent.Parent
	local Roact = require(Main.Packages.Roact)
	local StoryTree = require(script.Parent)
	local MockWrap = require(Main.Src.Resources.MockWrap)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local element = MockWrap(Roact.createElement(StoryTree))
		local instance = Roact.mount(element, container)
		expect(container.Element).to.be.ok()
		Roact.unmount(instance)
	end)
end
