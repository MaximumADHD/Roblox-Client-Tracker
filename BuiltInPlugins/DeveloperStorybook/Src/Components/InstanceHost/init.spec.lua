return function()
	local Main = script.Parent.Parent.Parent.Parent
	local Roact = require(Main.Packages.Roact)
	local makeInstanceHost = require(script.Parent)
	local MockWrap = require(Main.Src.Resources.MockWrap)

	it("should create and destroy without errors", function()
		local InstanceHost = makeInstanceHost(Roact)
		local element = MockWrap(Roact.createElement(InstanceHost))
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
