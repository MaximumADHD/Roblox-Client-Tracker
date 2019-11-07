return function()
	local FFlagIGPDepSwap = game:GetFastFlag("IGPDepSwap")
	local Root = script.Parent.Parent.Parent
	local LuaPackages = FFlagIGPDepSwap and Root.Parent or game:GetService("CorePackages")
	local Roact = require(LuaPackages.Roact)

	local AnimatedDot = require(script.Parent.AnimatedDot)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(AnimatedDot, {
			time = 1,
			layoutOrder = 1,
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end