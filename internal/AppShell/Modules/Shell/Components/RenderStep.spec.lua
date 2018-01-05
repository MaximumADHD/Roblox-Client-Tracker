return function()
	local Roact = require(game:GetService("CoreGui").RobloxGui.Modules.Common.Roact)
	local RenderStep = require(script.Parent.RenderStep)

	it("should create and destroy", function()
		local element = Roact.createElement(RenderStep, {
			name = "myRenderStep",
			priority = Enum.RenderPriority.Input.Value,
			callback = function() print("hello render step") end,
		})
		local instance = Roact.reify(element)
		Roact.teardown(instance)
	end)
end