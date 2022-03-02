return function()
	local Main = script.Parent.Parent.Parent.Parent
	local Roact = require(Main.Packages.Roact)
	local makeInstanceHost = require(script.Parent)
	local MockWrap = require(Main.Src.Resources.MockWrap)

	it("should create and destroy without errors", function()
		local InstanceHost = makeInstanceHost(Roact)
		local element = MockWrap(Roact.createElement(InstanceHost))
		local container = Instance.new("Frame")
		local instance = Roact.mount(element, container)
		expect(container.Element).to.be.ok()
		Roact.unmount(instance)
	end)
end
