return function()
	local Modules = game:GetService("CoreGui").RobloxGui.Modules
	local Roact = require(Modules.Common.Roact)
	local FramePopOut = require(Modules.LuaApp.Components.FramePopOut)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(FramePopOut, {
				heightAllItems = 100,
				heightScrollContainer = 50,
				onCancel = nil,
				parentShape = {
					x = 10,
					y = 10,
					width = 100,
					height = 20,
					parentWidth = 600,
					parentHeight = 600,
				},
			},
			nil
		)

		local instance = Roact.reify(element)
		Roact.teardown(instance)
	end)
end