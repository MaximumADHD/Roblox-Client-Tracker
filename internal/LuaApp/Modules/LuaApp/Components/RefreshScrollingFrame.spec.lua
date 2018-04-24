return function()
	local Modules = game:GetService("CoreGui").RobloxGui.Modules
	local Roact = require(Modules.Common.Roact)
	local RefreshScrollingFrame = require(Modules.LuaApp.Components.RefreshScrollingFrame)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(RefreshScrollingFrame, {
			currentPage = "Games",
			refresh = function()
				return 1
			end,
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundColor3 = Color3.fromRGB(0,0,0),
			Position = UDim2.new(0, 0, 0, 0),
		})

		local instance = Roact.reify(element)
		Roact.teardown(instance)
	end)
end