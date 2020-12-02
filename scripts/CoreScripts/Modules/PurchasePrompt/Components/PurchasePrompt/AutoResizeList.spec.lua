return function()
	local Root = script.Parent.Parent.Parent

	local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
	local Roact = PurchasePromptDeps.Roact

	local AutoResizeList = require(script.Parent.AutoResizeList)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(AutoResizeList, {
			layoutOrder = 1,
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
