return function()
	local Main = script.Parent.Parent.Parent.Parent
	local Roact = require(Main.Packages.Roact)
	local Footer = require(script.Parent)
	local MockWrap = require(Main.Src.Resources.MockWrap)

	it("should render correctly", function()
		local container = Instance.new("Frame")
		local element = MockWrap(Roact.createElement(Footer))
		local instance = Roact.mount(element, container)
		expect(container.Element.Explore.Contents).to.be.ok()
		Roact.unmount(instance)
	end)
end
