return function()
	local Main = script.Parent.Parent.Parent.Parent
	local Roact = require(Main.Packages.Roact)
	local TopBar = require(script.Parent)
	local MockWrap = require(Main.Src.Resources.MockWrap)

	it("should create and destroy without errors", function()
		local element = MockWrap(Roact.createElement(TopBar, {}))
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
