return function()
	local FFlagIGPDepSwap = game:GetFastFlag("IGPDepSwap")
	local Root = script.Parent.Parent
	local LuaPackages = FFlagIGPDepSwap and Root.Parent or game:GetService("CorePackages")
	local Roact = require(LuaPackages.Roact)

	local PurchasePromptApp = require(script.Parent.PurchasePromptApp)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(PurchasePromptApp)

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end