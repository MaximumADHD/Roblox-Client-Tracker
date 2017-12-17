return function()
	local Modules = game:GetService("CoreGui").RobloxGui.Modules
	local Roact = require(Modules.Common.Roact)
	local DropshadowFrame = require(Modules.LuaApp.Components.DropshadowFrame)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(DropshadowFrame, {
			Size = UDim2.new(1, 0, 1, 0),
		}, {
			Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
			})
		})
		local instance = Roact.reify(element)
		Roact.teardown(instance)
	end)
end