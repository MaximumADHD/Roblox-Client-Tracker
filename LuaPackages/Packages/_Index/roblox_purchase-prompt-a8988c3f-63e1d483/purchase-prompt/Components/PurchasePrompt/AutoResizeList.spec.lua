return function()
	local Root = script.Parent.Parent.Parent

	local LuaPackages = Root.Parent
	local Roact = require(LuaPackages.Roact)

	local AutoResizeList = require(script.Parent.AutoResizeList)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(AutoResizeList, {
			layoutOrder = 1,
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end