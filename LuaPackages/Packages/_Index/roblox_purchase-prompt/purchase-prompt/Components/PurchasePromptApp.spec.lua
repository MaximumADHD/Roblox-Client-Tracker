return function()
	local Root = script.Parent.Parent

	local LuaPackages = Root.Parent
	local Roact = require(LuaPackages.Roact)

	local PurchasePromptApp = require(script.Parent.PurchasePromptApp)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(PurchasePromptApp)

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end